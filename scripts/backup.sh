#!/bin/bash
# ==============================================================================
# AegisX Inventory - Database Backup Script
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$SCRIPT_DIR"

# Load environment
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Configuration
BACKUP_DIR="$SCRIPT_DIR/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/aegisx_backup_$TIMESTAMP.sql.gz"
RETENTION_DAYS=${BACKUP_RETENTION_DAYS:-30}

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log_info() { echo -e "[INFO] $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1" >&2; }

# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

echo "======================================"
echo "  AegisX Database Backup"
echo "======================================"
echo ""

# Check if postgres is running
if ! docker compose ps postgres | grep -q "running"; then
    log_error "PostgreSQL is not running!"
    exit 1
fi

log_info "Creating backup..."
log_info "Target: $BACKUP_FILE"

# Create backup
docker compose exec -T postgres pg_dump \
    -U "${POSTGRES_USER:-postgres}" \
    -d "${POSTGRES_DB:-aegisx_db}" \
    --clean \
    --if-exists \
    --no-owner \
    --no-privileges \
    | gzip > "$BACKUP_FILE"

# Verify backup
if [ -f "$BACKUP_FILE" ] && [ -s "$BACKUP_FILE" ]; then
    BACKUP_SIZE=$(du -h "$BACKUP_FILE" | cut -f1)
    log_success "Backup created successfully!"
    log_info "Size: $BACKUP_SIZE"
else
    log_error "Backup failed - file is empty or not created"
    exit 1
fi

# Cleanup old backups
log_info "Cleaning up backups older than $RETENTION_DAYS days..."
find "$BACKUP_DIR" -name "aegisx_backup_*.sql.gz" -mtime +$RETENTION_DAYS -delete 2>/dev/null || true

# List recent backups
echo ""
echo "Recent backups:"
ls -lh "$BACKUP_DIR"/*.sql.gz 2>/dev/null | tail -5 || echo "  No backups found"

echo ""
log_success "Backup complete: $BACKUP_FILE"
