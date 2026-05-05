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

    if [ "${DRY_RUN:-false}" = "true" ]; then
        log_info "[DRY-RUN] Would replace docker-compose.yml with upstream ${variant} template"
        log_info "[DRY-RUN] Diff preview (first 20 lines):"
        diff "$compose_file" "$tmp_file" 2>/dev/null | head -20 | sed 's/^/    /'
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

        if [ "${DRY_RUN:-false}" = "true" ]; then
            log_info "[DRY-RUN] Would patch missing env mapping: ${env_var}"
            patched_count=$((patched_count + 1))
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

    if [ "${DRY_RUN:-false}" = "true" ]; then
        log_info "[DRY-RUN] ${patched_count} mapping(s) would be patched"
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

    if [ "${DRY_RUN:-false}" = "true" ]; then
        log_info "[DRY-RUN] Would run main migrations:    knex migrate:latest --knexfile knexfile.ts"
        log_info "[DRY-RUN] Would run inventory migrations: knex migrate:latest --knexfile knexfile-inventory.ts (if applicable)"
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
# rollback_state — Restore compose + .env from pre-update snapshots and
# recreate containers, used when an update step fails after we started mutating.
#
# Limitations: migrations that already ran do NOT auto-rollback. If a migrate
# step fails partway, the DB schema may be in a partial state — the image
# rollback gives the prior image a chance to tolerate it, but operator
# intervention may still be needed (knex migrate:rollback).
# ==============================================================================
SNAPSHOT_TS=""
SNAPSHOT_COMPOSE=""
SNAPSHOT_ENV=""
ROLLBACK_ENABLED=true

take_pre_update_snapshot() {
    [ "$DRY_RUN" = "true" ] && return 0
    [ "$ROLLBACK_ENABLED" = "false" ] && return 0

    SNAPSHOT_TS="$(date +%Y%m%d-%H%M%S)"
    SNAPSHOT_COMPOSE="docker-compose.yml.pre-update.${SNAPSHOT_TS}"
    SNAPSHOT_ENV=".env.pre-update.${SNAPSHOT_TS}"

    cp docker-compose.yml "$SNAPSHOT_COMPOSE"
    cp .env "$SNAPSHOT_ENV"
    log_info "Pre-update snapshots saved:"
    log_info "  $SNAPSHOT_COMPOSE"
    log_info "  $SNAPSHOT_ENV"
}

rollback_state() {
    [ "$DRY_RUN" = "true" ] && return 0
    [ "$ROLLBACK_ENABLED" = "false" ] && return 0
    [ -z "$SNAPSHOT_COMPOSE" ] && return 0  # snapshot never taken (early failure)

    echo ""
    log_warning "Update failed — rolling back to pre-update state..."

    if [ -f "$SNAPSHOT_COMPOSE" ]; then
        cp "$SNAPSHOT_COMPOSE" docker-compose.yml
        log_info "Restored docker-compose.yml from $SNAPSHOT_COMPOSE"
    fi

    if [ -f "$SNAPSHOT_ENV" ]; then
        cp "$SNAPSHOT_ENV" .env
        log_info "Restored .env from $SNAPSHOT_ENV"
    fi

    log_info "Recreating containers with restored state..."
    if docker compose up -d --force-recreate 2>&1 | tail -5; then
        log_success "Rollback complete — containers restored to prior version"
        log_warning "If migrations had partially applied, you may need to run:"
        log_warning "  ./aegisx migrate           # to retry, or"
        log_warning "  knex migrate:rollback ...  # to revert (advanced)"
    else
        log_error "Rollback recreate failed — manual intervention required"
        log_error "Snapshots available at:"
        log_error "  $SNAPSHOT_COMPOSE"
        log_error "  $SNAPSHOT_ENV"
    fi
}

# Wrap a mutation step. Calls rollback_state + exits on failure.
attempt() {
    local description="$1"; shift
    if ! "$@"; then
        log_error "Step failed: $description"
        rollback_state
        exit 1
    fi
}

# ==============================================================================
# show_release_notes — Print the latest release block from upstream CHANGELOG
#
# Best-effort: silently skips if CHANGELOG.md isn't reachable (older installer
# repos predating CHANGELOG sync, or transient network issue).
# ==============================================================================
show_release_notes() {
    local notes_url="${INSTALLER_BASE_URL}/CHANGELOG.md"
    local tmp
    tmp=$(mktemp)

    if ! curl -fsSL "$notes_url" -o "$tmp" 2>/dev/null; then
        rm -f "$tmp"
        return 0
    fi

    if [ ! -s "$tmp" ]; then
        rm -f "$tmp"
        return 0
    fi

    echo ""
    echo -e "${CYAN}Latest release notes:${NC}"
    # Print everything from the first `## [` heading up to (but not including)
    # the second one — semantic-release uses this format consistently.
    awk '
        /^## \[/ { count++ }
        count == 1 { print }
        count == 2 { exit }
    ' "$tmp" | head -40 | sed 's/^/    /'
    echo ""

    rm -f "$tmp"
}

# ==============================================================================
# preflight_checks — Verify host is ready for update before mutating state
#
# Hard checks (abort): docker daemon, disk space critical (<2GB)
# Soft checks (warn):  disk low (<5GB), memory low (<500MB), postgres not running
# ==============================================================================
preflight_checks() {
    log_info "Running pre-flight checks..."
    local errors=0
    local warnings=0

    # Docker daemon
    if ! docker info >/dev/null 2>&1; then
        log_error "  Docker daemon is not running"
        errors=$((errors + 1))
    else
        log_success "  Docker daemon: OK"
    fi

    # Disk space (need >=5GB for image pull + backup)
    local disk_avail_mb
    disk_avail_mb=$(df -m . 2>/dev/null | awk 'NR==2{print $4}' || echo 0)
    if [ "${disk_avail_mb:-0}" -lt 2000 ] 2>/dev/null; then
        log_error "  Disk space critical: ${disk_avail_mb}MB free (need at least 2GB)"
        errors=$((errors + 1))
    elif [ "${disk_avail_mb:-0}" -lt 5000 ] 2>/dev/null; then
        log_warning "  Disk space low: ${disk_avail_mb}MB free (recommend 5GB+)"
        warnings=$((warnings + 1))
    else
        log_success "  Disk space: ${disk_avail_mb}MB free"
    fi

    # Memory (best-effort — `free` only on Linux)
    if command -v free >/dev/null 2>&1; then
        local mem_avail_mb
        mem_avail_mb=$(free -m | awk '/^Mem:/{print $7}')
        [ -z "$mem_avail_mb" ] && mem_avail_mb=$(free -m | awk '/^Mem:/{print $4}')
        if [ "${mem_avail_mb:-0}" -lt 500 ] 2>/dev/null; then
            log_warning "  Memory available: ${mem_avail_mb}MB — containers may OOM during recreate"
            warnings=$((warnings + 1))
        else
            log_success "  Memory available: ${mem_avail_mb}MB"
        fi
    fi

    # Postgres health (only if compose declares postgres service)
    if [ -f docker-compose.yml ] && grep -qE "^[[:space:]]+postgres:" docker-compose.yml; then
        if docker compose ps postgres --format json 2>/dev/null | grep -q '"State":"running"'; then
            log_success "  Postgres container: running"
        else
            log_warning "  Postgres container is not running — migrations will fail"
            warnings=$((warnings + 1))
        fi
    fi

    if [ $errors -gt 0 ]; then
        log_error "Pre-flight failed: $errors error(s). Fix the issues above and retry."
        exit 1
    fi

    if [ $warnings -gt 0 ]; then
        log_warning "Pre-flight finished with $warnings warning(s) — review before continuing"
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
DRY_RUN=false

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
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        --no-rollback)
            ROLLBACK_ENABLED=false
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [options]"
            echo ""
            echo "Options:"
            echo "  -f, --force         Skip confirmation prompt"
            echo "  --tag TAG           Update to specific tag (default: latest)"
            echo "  --skip-migrate      Skip running migrations after update"
            echo "  --dry-run           Show planned actions without executing them"
            echo "  --no-rollback       Disable auto-rollback on failure"
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
[ "$DRY_RUN" = true ] && log_warning "Running in DRY-RUN mode — no changes will be made"

# Check current versions
echo ""
echo -e "${CYAN}Current Images:${NC}"
docker compose images 2>/dev/null || true

echo ""
preflight_checks
show_release_notes

if [ "$FORCE" = false ] && [ "$DRY_RUN" = false ]; then
    read -p "Proceed with update? [y/N] " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        log_info "Update cancelled."
        exit 0
    fi
fi

# Create backup before update
if [ "$DRY_RUN" = true ]; then
    log_info "[DRY-RUN] Would create backup via ./scripts/backup.sh"
else
    log_info "Creating backup before update..."
    ./scripts/backup.sh
fi

# Snapshot compose + .env so we can roll back if the update fails partway
take_pre_update_snapshot

# Re-sync compose template from upstream first (covers non-env changes), then
# patch missing env mappings as a safety net for installs predating sync_compose_template
log_info "Verifying docker-compose.yml..."
sync_compose_template
ensure_env_mappings

# Pull new images
if [ "$DRY_RUN" = true ]; then
    log_info "[DRY-RUN] Would pull new images: docker compose pull"
else
    log_info "Pulling new images..."
    attempt "image pull" docker compose pull
fi

# Recreate containers with new images
if [ "$DRY_RUN" = true ]; then
    log_info "[DRY-RUN] Would recreate containers: docker compose up -d --force-recreate"
else
    log_info "Updating containers..."
    attempt "container recreate" docker compose up -d --force-recreate
fi

# Run migrations (unless --skip-migrate)
echo ""
if ! run_migrations "$SKIP_MIGRATE"; then
    log_error "Migrations failed — rolling back image (DB schema may need manual review)"
    rollback_state
    exit 1
fi

# Wait for services to be healthy
if [ "$DRY_RUN" = true ]; then
    log_info "[DRY-RUN] Would wait for services + run ./scripts/health-check.sh"
else
    log_info "Waiting for services to be healthy..."
    sleep 10
    if ! ./scripts/health-check.sh; then
        log_error "Health check failed after update"
        rollback_state
        exit 1
    fi
fi

# Mark successful — rollback no longer applies; leave snapshots in place for manual review
ROLLBACK_ENABLED=false

echo ""
if [ "$DRY_RUN" = true ]; then
    log_success "Dry run complete — re-run without --dry-run to apply changes"
else
    log_success "Update complete!"
    echo ""
    echo -e "${CYAN}New Images:${NC}"
    docker compose images 2>/dev/null || true
fi
