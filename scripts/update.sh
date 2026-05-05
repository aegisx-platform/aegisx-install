#!/bin/bash
# ==============================================================================
# AegisX Inventory - Update Script
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$SCRIPT_DIR"

# Load environment
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

IMAGE_TAG=${IMAGE_TAG:-latest}

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'
BOLD='\033[1m'

log_info()    { echo -e "[INFO] $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
log_error()   { echo -e "${RED}[ERROR]${NC} $1" >&2; }

INSTALLER_BASE_URL="https://raw.githubusercontent.com/aegisx-platform/aegisx-install/main"

# ==============================================================================
# sync_compose_template — Re-download docker-compose.yml from public installer
#
# Pulls the full upstream template so non-env compose changes (healthcheck path,
# image name, volumes, etc.) also propagate on `./aegisx update`. ensure_env_mappings
# alone only covers env mappings.
#
# Reads COMPOSE_VARIANT from .env (full | inventory | external-db). Installs
# predating this marker (before v1.46.x) are skipped silently — they still
# benefit from ensure_env_mappings.
#
# Idempotent: no-op if downloaded content equals existing. Backs up before swap,
# validates YAML, restores on failure.
# ==============================================================================
sync_compose_template() {
    local compose_file="docker-compose.yml"
    [ ! -f "$compose_file" ] && return 0

    local variant="${COMPOSE_VARIANT:-}"
    if [ -z "$variant" ]; then
        log_info "COMPOSE_VARIANT not set in .env — skipping template sync"
        log_info "(install scripts from v1.46.x+ write this marker; older installs rely on ensure_env_mappings)"
        return 0
    fi

    case "$variant" in
        full|inventory|external-db) ;;
        *)
            log_warning "Unknown COMPOSE_VARIANT='$variant' — skipping template sync"
            return 0
            ;;
    esac

    local template_url="${INSTALLER_BASE_URL}/docker-compose.${variant}.yml"
    local tmp_file
    tmp_file=$(mktemp)

    log_info "Checking upstream compose template (${variant})..."
    if ! curl -fsSL "$template_url" -o "$tmp_file" 2>/dev/null; then
        log_warning "Could not download ${template_url} — keeping current compose"
        rm -f "$tmp_file"
        return 0
    fi

    if cmp -s "$tmp_file" "$compose_file"; then
        log_info "Compose template already up to date"
        rm -f "$tmp_file"
        return 0
    fi

    local backup_path="${compose_file}.pre-sync.$(date +%Y%m%d-%H%M%S)"
    cp "$compose_file" "$backup_path"
    log_info "Compose template differs — backed up to $backup_path"

    mv "$tmp_file" "$compose_file"

    if ! docker compose config > /dev/null 2>&1; then
        log_error "Synced compose is invalid YAML — restoring from backup"
        cp "$backup_path" "$compose_file"
        return 1
    fi

    log_success "Compose template synced from upstream (${variant})"
}

# ==============================================================================
# ensure_env_mappings — Patch missing required env mappings into docker-compose.yml
#
# Why this exists: when new required env vars are added (e.g. MIGRATION_ENCRYPTION_KEY
# in v1.45.x), production installs that ran an older install.sh have a stale
# docker-compose.yml without the new mapping. The api container then crashes on
# bootstrap. This function detects missing mappings and patches them in-place.
#
# Acts as a safety net for installs predating sync_compose_template (no
# COMPOSE_VARIANT) and for any drift sync_compose_template can't fix.
#
# Idempotent: running twice is a no-op. Adds entries to env_vars/env_anchors/
# env_mappings arrays when new required env vars are introduced.
# ==============================================================================
ensure_env_mappings() {
    local compose_file="docker-compose.yml"
    [ ! -f "$compose_file" ] && { log_error "$compose_file not found in $(pwd)"; return 1; }

    # Parallel arrays — append when new required env vars are introduced
    local env_vars=(
        "HIS_ENCRYPTION_SECRET"
        "MIGRATION_ENCRYPTION_KEY"
    )
    local env_anchors=(
        "SESSION_SECRET:"
        "HIS_ENCRYPTION_SECRET:"
    )
    local env_mappings=(
        '      HIS_ENCRYPTION_SECRET: ${HIS_ENCRYPTION_SECRET:?HIS encryption secret is required}'
        '      MIGRATION_ENCRYPTION_KEY: "${MIGRATION_ENCRYPTION_KEY:?MIGRATION_ENCRYPTION_KEY is required - generate with openssl rand -hex 32}"'
    )

    local backup_path=""
    local patched_count=0

    for i in "${!env_vars[@]}"; do
        local env_var="${env_vars[$i]}"
        local anchor="${env_anchors[$i]}"
        local mapping="${env_mappings[$i]}"

        if grep -qE "^[[:space:]]+${env_var}:" "$compose_file"; then
            continue
        fi

        if [ -z "$backup_path" ]; then
            backup_path="${compose_file}.pre-patch.$(date +%Y%m%d-%H%M%S)"
            cp "$compose_file" "$backup_path"
            log_info "Backed up compose: $backup_path"
        fi

        log_warning "Patching missing env mapping: ${env_var}"

        if ! grep -qE "^[[:space:]]+${anchor}" "$compose_file"; then
            log_error "Anchor '${anchor}' not found — cannot auto-patch ${env_var}"
            log_error "Add manually under api: environment: in ${compose_file}:"
            log_error "  ${mapping}"
            return 1
        fi

        # Insert mapping after first match of anchor.
        # awk is portable across BSD/GNU/busybox unlike sed -i with `0,/x/` ranges.
        awk -v anchor_re="${anchor}" -v new_line="${mapping}" '
            { print }
            !inserted && $0 ~ anchor_re { print new_line; inserted = 1 }
        ' "$compose_file" > "${compose_file}.tmp" && mv "${compose_file}.tmp" "$compose_file"

        patched_count=$((patched_count + 1))
    done

    if [ $patched_count -eq 0 ]; then
        log_info "Compose file already has all required env mappings"
        return 0
    fi

    # Validate YAML — restore on failure
    if ! docker compose config > /dev/null 2>&1; then
        log_error "Patched compose is invalid — restoring from ${backup_path}"
        cp "$backup_path" "$compose_file"
        return 1
    fi

    log_success "Patched ${patched_count} missing env mapping(s) in ${compose_file}"
}

# ==============================================================================
# run_migrations — Apply pending DB migrations after the API image is updated.
#
# Uses `docker compose run --rm api` instead of `exec` because the api container
# can be in a restart loop after pull (new image references columns the DB
# doesn't have yet). `run --rm` spins up a one-off container from the new image
# and joins the existing project network so it reaches postgres/redis.
# ==============================================================================
run_migrations() {
    local skip_migrate=$1

    if [ "$skip_migrate" = "true" ]; then
        log_info "Skipping migrations (--skip-migrate set)"
        log_info "Run manually later: ./aegisx migrate"
        return 0
    fi

    log_info "Running database migrations..."

    log_info "  [1/2] Main system migrations..."
    if docker compose run --rm api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile.ts" 2>&1 | tail -15; then
        log_success "  Main migrations completed"
    else
        log_error "  Main migrations failed — fix and retry: ./aegisx migrate"
        return 1
    fi

    # Inventory migrations only when this install includes the inventory domain
    if grep -qE "knexfile-inventory|inventory" docker-compose.yml 2>/dev/null && \
       docker compose run --rm api sh -c "test -f /app/knexfile-inventory.ts" 2>/dev/null; then
        log_info "  [2/2] Inventory domain migrations..."
        if docker compose run --rm api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile-inventory.ts" 2>&1 | tail -15; then
            log_success "  Inventory migrations completed"
        else
            log_error "  Inventory migrations failed — fix and retry: ./aegisx migrate"
            return 1
        fi
    else
        log_info "  [2/2] Inventory domain not detected — skipping"
    fi
}

# ==============================================================================
# Main update flow
# ==============================================================================

echo ""
echo -e "${BOLD}======================================"
echo "  AegisX Inventory Update"
echo -e "======================================${NC}"
echo ""

# Parse arguments
FORCE=false
TAG_OVERRIDE=""
SKIP_MIGRATE=false

while [[ $# -gt 0 ]]; do
    case $1 in
        -f|--force)
            FORCE=true
            shift
            ;;
        --tag)
            TAG_OVERRIDE="$2"
            shift 2
            ;;
        --skip-migrate)
            SKIP_MIGRATE=true
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [options]"
            echo ""
            echo "Options:"
            echo "  -f, --force         Skip confirmation prompt"
            echo "  --tag TAG           Update to specific tag (default: latest)"
            echo "  --skip-migrate      Skip running migrations after update"
            echo "  -h, --help          Show this help"
            exit 0
            ;;
        *)
            shift
            ;;
    esac
done

# Use tag override if provided
if [ -n "$TAG_OVERRIDE" ]; then
    IMAGE_TAG="$TAG_OVERRIDE"
fi

log_info "Update target: $IMAGE_TAG"

# Check current versions
echo ""
echo -e "${CYAN}Current Images:${NC}"
docker compose images 2>/dev/null || true

echo ""

if [ "$FORCE" = false ]; then
    read -p "Proceed with update? [y/N] " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        log_info "Update cancelled."
        exit 0
    fi
fi

# Create backup before update
log_info "Creating backup before update..."
./scripts/backup.sh

# Re-sync compose template from upstream first (covers non-env changes), then
# patch missing env mappings as a safety net for installs predating sync_compose_template
log_info "Verifying docker-compose.yml..."
sync_compose_template
ensure_env_mappings

# Pull new images
log_info "Pulling new images..."
docker compose pull

# Recreate containers with new images
log_info "Updating containers..."
docker compose up -d --force-recreate

# Run migrations (unless --skip-migrate)
echo ""
run_migrations "$SKIP_MIGRATE" || log_warning "Migrations did not complete cleanly — review logs above"

# Wait for services to be healthy
log_info "Waiting for services to be healthy..."
sleep 10

# Health check
./scripts/health-check.sh

echo ""
log_success "Update complete!"
echo ""
echo -e "${CYAN}New Images:${NC}"
docker compose images 2>/dev/null || true
