#!/bin/bash
# ==============================================================================
# AegisX Inventory - Log Viewer Script
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$SCRIPT_DIR"

# Default values
SERVICE="${1:-}"
LINES=${2:-100}
FOLLOW=false

# Parse flags
while [[ $# -gt 0 ]]; do
    case $1 in
        -f|--follow)
            FOLLOW=true
            shift
            ;;
        -n|--lines)
            LINES="$2"
            shift 2
            ;;
        api|web|postgres|redis|all)
            SERVICE="$1"
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [service] [options]"
            echo ""
            echo "Services:"
            echo "  api       View API logs"
            echo "  web       View Web logs"
            echo "  postgres  View PostgreSQL logs"
            echo "  redis     View Redis logs"
            echo "  all       View all service logs (default)"
            echo ""
            echo "Options:"
            echo "  -f, --follow    Follow log output"
            echo "  -n, --lines N   Show last N lines (default: 100)"
            echo "  -h, --help      Show this help"
            echo ""
            echo "Examples:"
            echo "  $0 api -f           # Follow API logs"
            echo "  $0 postgres -n 50   # Last 50 postgres logs"
            echo "  $0 -f               # Follow all logs"
            exit 0
            ;;
        *)
            shift
            ;;
    esac
done

# Build docker compose logs command
COMPOSE_ARGS=""

if [ "$FOLLOW" = true ]; then
    COMPOSE_ARGS="$COMPOSE_ARGS -f"
fi

COMPOSE_ARGS="$COMPOSE_ARGS --tail=$LINES"

if [ -n "$SERVICE" ] && [ "$SERVICE" != "all" ]; then
    docker compose logs $COMPOSE_ARGS "$SERVICE"
else
    docker compose logs $COMPOSE_ARGS
fi
