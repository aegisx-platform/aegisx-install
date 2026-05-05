#!/bin/bash
# ==============================================================================
# AegisX Inventory - Database Restore Script
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$SCRIPT_DIR"

# Load environment
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

BACKUP_DIR="$SCRIPT_DIR/backups"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log_info() { echo -e "[INFO] $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1" >&2; }

show_usage() {
    echo "Usage: $0 <backup_file>"
    echo ""
    echo "Available backups:"
    ls -1t "$BACKUP_DIR"/*.sql.gz 2>/dev/null | head -10 || echo "  No backups found"
    exit 1
}

# Check arguments
if [ $# -eq 0 ]; then
    show_usage
fi

BACKUP_FILE="$1"

# Check if file exists (handle relative and absolute paths)
if [ ! -f "$BACKUP_FILE" ]; then
    # Try in backup directory
    if [ -f "$BACKUP_DIR/$BACKUP_FILE" ]; then
        BACKUP_FILE="$BACKUP_DIR/$BACKUP_FILE"
    else
        log_error "Backup file not found: $BACKUP_FILE"
        exit 1
    fi
fi

echo "======================================"
echo "  AegisX Database Restore"
echo "======================================"
echo ""
log_warning "This will OVERWRITE the current database!"
log_info "Backup file: $BACKUP_FILE"
echo ""

read -p "Are you sure you want to proceed? [y/N] " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    log_info "Restore cancelled."
    exit 0
fi

# Check if postgres is running
if ! docker compose ps postgres | grep -q "running"; then
    log_error "PostgreSQL is not running!"
    exit 1
fi

# Create a backup before restore
log_info "Creating safety backup before restore..."
SAFETY_BACKUP="$BACKUP_DIR/pre_restore_$(date +%Y%m%d_%H%M%S).sql.gz"
docker compose exec -T postgres pg_dump \
    -U "${POSTGRES_USER:-postgres}" \
    -d "${POSTGRES_DB:-aegisx_db}" \
    | gzip > "$SAFETY_BACKUP"
log_success "Safety backup created: $SAFETY_BACKUP"

# Stop API to prevent connections
log_info "Stopping API service..."
docker compose stop api web 2>/dev/null || true

# Restore database
log_info "Restoring database..."

# Drop and recreate database connections
docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}" -d postgres << EOF
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = '${POSTGRES_DB:-aegisx_db}' AND pid <> pg_backend_pid();
EOF

# Restore from backup
if [[ "$BACKUP_FILE" == *.gz ]]; then
    gunzip -c "$BACKUP_FILE" | docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}"
else
    docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}" < "$BACKUP_FILE"
fi

# Restart services
log_info "Restarting services..."
docker compose up -d api web

# Wait for API to be healthy
echo -n "Waiting for API..."
for i in {1..30}; do
    if curl -s "http://localhost:${API_PORT:-3333}/health/live" &> /dev/null; then
        echo " Ready!"
        break
    fi
    echo -n "."
    sleep 2
done

echo ""
log_success "Database restored successfully!"
log_info "Safety backup available at: $SAFETY_BACKUP"
