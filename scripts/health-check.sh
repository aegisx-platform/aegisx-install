#!/bin/bash
# ==============================================================================
# AegisX Inventory - Health Check Script
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$SCRIPT_DIR"

# Load environment
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'
BOLD='\033[1m'

# Status indicators
OK="${GREEN}[OK]${NC}"
WARN="${YELLOW}[WARN]${NC}"
FAIL="${RED}[FAIL]${NC}"

API_PORT=${API_PORT:-3333}
WEB_PORT=${WEB_PORT:-8080}

echo ""
echo -e "${BOLD}======================================"
echo "  AegisX Inventory Health Check"
echo -e "======================================${NC}"
echo ""

# Track overall status
OVERALL_STATUS=0

# =============================================================================
# Service Status
# =============================================================================
echo -e "${CYAN}Services Status:${NC}"

# PostgreSQL
echo -n "  PostgreSQL:    "
if docker compose ps postgres 2>/dev/null | grep -q "running"; then
    if docker compose exec -T postgres pg_isready -U postgres &> /dev/null; then
        echo -e "$OK"
    else
        echo -e "$WARN (running but not ready)"
        OVERALL_STATUS=1
    fi
else
    echo -e "$FAIL (not running)"
    OVERALL_STATUS=1
fi

# Redis
echo -n "  Redis:         "
if docker compose ps redis 2>/dev/null | grep -q "running"; then
    REDIS_PASS=$(grep REDIS_PASSWORD .env 2>/dev/null | cut -d= -f2 || echo "")
    if docker compose exec -T redis redis-cli -a "$REDIS_PASS" ping 2>/dev/null | grep -q PONG; then
        echo -e "$OK"
    else
        echo -e "$WARN (running but not responding)"
        OVERALL_STATUS=1
    fi
else
    echo -e "$FAIL (not running)"
    OVERALL_STATUS=1
fi

# API
echo -n "  API:           "
if docker compose ps api 2>/dev/null | grep -q "running"; then
    if curl -sf "http://localhost:$API_PORT/health/live" &> /dev/null; then
        echo -e "$OK"
    else
        echo -e "$WARN (running but not healthy)"
        OVERALL_STATUS=1
    fi
else
    echo -e "$FAIL (not running)"
    OVERALL_STATUS=1
fi

# Web
echo -n "  Web:           "
if docker compose ps web 2>/dev/null | grep -q "running"; then
    if curl -sf "http://localhost:$WEB_PORT/health" &> /dev/null; then
        echo -e "$OK"
    else
        echo -e "$WARN (running but not responding)"
        OVERALL_STATUS=1
    fi
else
    echo -e "$FAIL (not running)"
    OVERALL_STATUS=1
fi

# =============================================================================
# Resource Usage
# =============================================================================
echo ""
echo -e "${CYAN}Resource Usage:${NC}"

# Container stats
docker stats --no-stream --format "table  {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}" \
    $(docker compose ps -q 2>/dev/null) 2>/dev/null || echo "  Unable to get stats"

# =============================================================================
# Disk Usage
# =============================================================================
echo ""
echo -e "${CYAN}Disk Usage:${NC}"

# Docker volumes
echo "  Docker Volumes:"
docker system df -v 2>/dev/null | grep -E "aegisx|postgres|redis" | head -5 || echo "    Unable to get volume info"

# Backup directory
if [ -d "$SCRIPT_DIR/backups" ]; then
    BACKUP_SIZE=$(du -sh "$SCRIPT_DIR/backups" 2>/dev/null | cut -f1 || echo "unknown")
    BACKUP_COUNT=$(ls -1 "$SCRIPT_DIR/backups"/*.sql.gz 2>/dev/null | wc -l || echo "0")
    echo ""
    echo "  Backups: $BACKUP_COUNT files, $BACKUP_SIZE total"
fi

# =============================================================================
# Database Info
# =============================================================================
echo ""
echo -e "${CYAN}Database Info:${NC}"

if docker compose ps postgres 2>/dev/null | grep -q "running"; then
    # Database size
    DB_SIZE=$(docker compose exec -T postgres psql -U postgres -d aegisx_db -t -c \
        "SELECT pg_size_pretty(pg_database_size('aegisx_db'));" 2>/dev/null | tr -d ' ' || echo "unknown")
    echo "  Database size: $DB_SIZE"

    # Connection count
    CONN_COUNT=$(docker compose exec -T postgres psql -U postgres -d aegisx_db -t -c \
        "SELECT count(*) FROM pg_stat_activity WHERE datname = 'aegisx_db';" 2>/dev/null | tr -d ' ' || echo "unknown")
    echo "  Active connections: $CONN_COUNT"

    # Table count (inventory schema)
    TABLE_COUNT=$(docker compose exec -T postgres psql -U postgres -d aegisx_db -t -c \
        "SELECT count(*) FROM information_schema.tables WHERE table_schema = 'inventory';" 2>/dev/null | tr -d ' ' || echo "unknown")
    echo "  Inventory tables: $TABLE_COUNT"
fi

# =============================================================================
# API Info
# =============================================================================
echo ""
echo -e "${CYAN}API Info:${NC}"

if curl -sf "http://localhost:$API_PORT/health/live" &> /dev/null; then
    API_HEALTH=$(curl -sf "http://localhost:$API_PORT/health" 2>/dev/null || echo "{}")
    echo "  Health endpoint: OK"

    # Try to get version
    API_VERSION=$(echo "$API_HEALTH" | grep -oP '"version":\s*"\K[^"]+' 2>/dev/null || echo "unknown")
    echo "  Version: $API_VERSION"
fi

# =============================================================================
# Summary
# =============================================================================
echo ""
echo "======================================"
if [ $OVERALL_STATUS -eq 0 ]; then
    echo -e "${GREEN}${BOLD}  All systems operational${NC}"
else
    echo -e "${YELLOW}${BOLD}  Some issues detected${NC}"
fi
echo "======================================"
echo ""

exit $OVERALL_STATUS
