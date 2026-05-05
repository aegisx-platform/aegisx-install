#!/bin/bash
# ==============================================================================
# AegisX Inventory System - One-Command Installer
# Version: 1.0.0
#
# Usage:
#   curl -sSL https://raw.githubusercontent.com/aegisx-platform/aegisx-starter-1/main/deploy/install-inventory.sh | bash
#
#   Or with options:
#   curl -sSL ... | bash -s -- --dir /opt/aegisx --non-interactive
#
# Requirements:
#   - Docker 20.10+
#   - Docker Compose v2+
#   - 4GB RAM minimum
#   - 20GB disk space
# ==============================================================================

set -euo pipefail

# =============================================================================
# Configuration
# =============================================================================
SCRIPT_VERSION="1.0.0"
GITHUB_RAW_URL="https://raw.githubusercontent.com/aegisx-platform/aegisx-starter-1/main/deploy"
IMAGE_REGISTRY="ghcr.io/aegisx-platform"
DEFAULT_INSTALL_DIR="$HOME/aegisx-inventory"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color
BOLD='\033[1m'

# =============================================================================
# Helper Functions
# =============================================================================
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1" >&2; }

print_banner() {
    echo -e "${CYAN}"
    cat << 'EOF'
    ___            _     _  __
   /   | ___  __ _(_)___| |/ /
  / /| |/ _ \/ _` | / __| ' /
 / ___ |  __/ (_| | \__ \ . \
/_/  |_|\___|\__, |_|___/_|\_\
             |___/
    Inventory System Installer
EOF
    echo -e "${NC}"
    echo -e "${BOLD}Version:${NC} $SCRIPT_VERSION"
    echo ""
}

check_requirements() {
    log_info "Checking system requirements..."

    # Check Docker
    if ! command -v docker &> /dev/null; then
        log_error "Docker is not installed. Please install Docker first."
        echo "  Visit: https://docs.docker.com/get-docker/"
        exit 1
    fi

    # Check Docker Compose
    if ! docker compose version &> /dev/null; then
        log_error "Docker Compose v2 is not available."
        echo "  Please upgrade Docker or install Docker Compose plugin."
        exit 1
    fi

    # Check if Docker is running
    if ! docker info &> /dev/null; then
        log_error "Docker daemon is not running. Please start Docker."
        exit 1
    fi

    # Check available memory (minimum 4GB)
    if command -v free &> /dev/null; then
        MEM_TOTAL=$(free -m | awk '/^Mem:/{print $2}')
        if [ "$MEM_TOTAL" -lt 3500 ]; then
            log_warning "System has less than 4GB RAM. Performance may be affected."
        fi
    fi

    log_success "All requirements met!"
}

generate_password() {
    # Generate a random password (alphanumeric, 24 chars)
    if command -v openssl &> /dev/null; then
        openssl rand -base64 32 | tr -dc 'a-zA-Z0-9' | head -c 24
    else
        cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 24
    fi
}

generate_jwt_secret() {
    # Generate a secure JWT secret (64 chars)
    if command -v openssl &> /dev/null; then
        openssl rand -hex 32
    else
        cat /dev/urandom | tr -dc 'a-f0-9' | head -c 64
    fi
}

# =============================================================================
# Installation Functions
# =============================================================================
parse_args() {
    INSTALL_DIR="$DEFAULT_INSTALL_DIR"
    NON_INTERACTIVE=false
    IMAGE_TAG="latest"
    SKIP_PULL=false

    while [[ $# -gt 0 ]]; do
        case $1 in
            --dir)
                INSTALL_DIR="$2"
                shift 2
                ;;
            --non-interactive)
                NON_INTERACTIVE=true
                shift
                ;;
            --tag)
                IMAGE_TAG="$2"
                shift 2
                ;;
            --skip-pull)
                SKIP_PULL=true
                shift
                ;;
            --help|-h)
                show_help
                exit 0
                ;;
            *)
                log_error "Unknown option: $1"
                show_help
                exit 1
                ;;
        esac
    done
}

show_help() {
    echo "Usage: install-inventory.sh [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --dir PATH          Installation directory (default: ~/aegisx-inventory)"
    echo "  --non-interactive   Use default values without prompts"
    echo "  --tag TAG           Docker image tag (default: latest)"
    echo "  --skip-pull         Skip pulling images (use existing)"
    echo "  -h, --help          Show this help message"
}

prompt_config() {
    echo ""
    echo -e "${BOLD}=== Configuration ===${NC}"
    echo ""

    if [ "$NON_INTERACTIVE" = true ]; then
        log_info "Using default configuration (non-interactive mode)"
        POSTGRES_PASSWORD=$(generate_password)
        REDIS_PASSWORD=$(generate_password)
        JWT_SECRET=$(generate_jwt_secret)
        SESSION_SECRET=$(generate_jwt_secret)
        HIS_ENCRYPTION_SECRET=$(generate_jwt_secret)
        MIGRATION_ENCRYPTION_KEY=$(generate_jwt_secret)
        API_PORT=3333
        WEB_PORT=8080
        APP_NAME="AegisX Inventory"
        return
    fi

    # Database password
    echo -e "${CYAN}Database Configuration${NC}"
    read -sp "  PostgreSQL password [auto-generate]: " POSTGRES_PASSWORD
    echo ""
    if [ -z "$POSTGRES_PASSWORD" ]; then
        POSTGRES_PASSWORD=$(generate_password)
        echo -e "  ${GREEN}Generated:${NC} ${POSTGRES_PASSWORD:0:4}****${POSTGRES_PASSWORD: -4}"
    fi

    # Redis password
    read -sp "  Redis password [auto-generate]: " REDIS_PASSWORD
    echo ""
    if [ -z "$REDIS_PASSWORD" ]; then
        REDIS_PASSWORD=$(generate_password)
        echo -e "  ${GREEN}Generated:${NC} ${REDIS_PASSWORD:0:4}****${REDIS_PASSWORD: -4}"
    fi

    # JWT Secret & Session Secret
    echo ""
    echo -e "${CYAN}Security Configuration${NC}"
    read -sp "  JWT Secret [auto-generate]: " JWT_SECRET
    echo ""
    if [ -z "$JWT_SECRET" ]; then
        JWT_SECRET=$(generate_jwt_secret)
        echo -e "  ${GREEN}Generated:${NC} ${JWT_SECRET:0:8}****"
    fi

    read -sp "  Session Secret [auto-generate]: " SESSION_SECRET
    echo ""
    if [ -z "$SESSION_SECRET" ]; then
        SESSION_SECRET=$(generate_jwt_secret)
        echo -e "  ${GREEN}Generated:${NC} ${SESSION_SECRET:0:8}****"
    fi
    HIS_ENCRYPTION_SECRET=$(generate_jwt_secret)
    echo -e "  ${GREEN}HIS Encryption Secret Generated:${NC} ${HIS_ENCRYPTION_SECRET:0:8}****"
    MIGRATION_ENCRYPTION_KEY=$(generate_jwt_secret)
    echo -e "  ${GREEN}Migration Encryption Key Generated:${NC} ${MIGRATION_ENCRYPTION_KEY:0:8}****"

    # Ports
    echo ""
    echo -e "${CYAN}Network Configuration${NC}"
    read -p "  API port [3333]: " API_PORT
    API_PORT=${API_PORT:-3333}

    read -p "  Web port [8080]: " WEB_PORT
    WEB_PORT=${WEB_PORT:-8080}

    # App name
    echo ""
    echo -e "${CYAN}Application Configuration${NC}"
    read -p "  Application name [AegisX Inventory]: " APP_NAME
    APP_NAME=${APP_NAME:-AegisX Inventory}

    echo ""
}

create_directory_structure() {
    log_info "Creating directory structure at $INSTALL_DIR..."

    mkdir -p "$INSTALL_DIR"/{backups,logs,scripts,nginx/ssl}
    cd "$INSTALL_DIR"

    log_success "Directory structure created"
}

download_files() {
    log_info "Downloading deployment files..."

    # Download docker-compose
    curl -sSL "$GITHUB_RAW_URL/docker-compose.inventory.yml" -o docker-compose.yml

    # Download scripts
    curl -sSL "$GITHUB_RAW_URL/scripts/backup.sh" -o scripts/backup.sh
    curl -sSL "$GITHUB_RAW_URL/scripts/restore.sh" -o scripts/restore.sh
    curl -sSL "$GITHUB_RAW_URL/scripts/health-check.sh" -o scripts/health-check.sh
    curl -sSL "$GITHUB_RAW_URL/scripts/logs.sh" -o scripts/logs.sh
    curl -sSL "$GITHUB_RAW_URL/scripts/update.sh" -o scripts/update.sh

    # Make scripts executable
    chmod +x scripts/*.sh

    log_success "Files downloaded"
}

create_env_file() {
    log_info "Creating environment configuration..."

    cat > .env << EOF
# ==============================================================================
# AegisX Inventory System - Environment Configuration
# Generated: $(date -Iseconds)
# ==============================================================================

# =============================================================================
# Database Configuration
# =============================================================================
POSTGRES_USER=postgres
POSTGRES_PASSWORD=$POSTGRES_PASSWORD
POSTGRES_DB=aegisx_db
POSTGRES_PORT=5432

# =============================================================================
# Redis Configuration
# =============================================================================
REDIS_PASSWORD=$REDIS_PASSWORD
REDIS_PORT=6379

# =============================================================================
# Security Configuration
# =============================================================================
JWT_SECRET=$JWT_SECRET
JWT_EXPIRES_IN=1d
JWT_REFRESH_EXPIRES_IN=7d
SESSION_SECRET=$SESSION_SECRET

# =============================================================================
# HIS Integration (Encryption for HIS credentials)
# =============================================================================
HIS_ENCRYPTION_SECRET=$HIS_ENCRYPTION_SECRET

# =============================================================================
# Migration Wizard (Encryption for DB connection credentials)
# WARNING: If production data exists, keep existing key — do NOT regenerate
# =============================================================================
MIGRATION_ENCRYPTION_KEY=$MIGRATION_ENCRYPTION_KEY

# =============================================================================
# Application Configuration
# =============================================================================
APP_NAME=$APP_NAME
APP_VERSION=1.0.0
IMAGE_TAG=$IMAGE_TAG

# =============================================================================
# Network Configuration
# =============================================================================
API_PORT=$API_PORT
WEB_PORT=$WEB_PORT
API_URL=http://localhost:$API_PORT/api

# CORS - Comma-separated list of allowed origins
CORS_ORIGINS=http://localhost:$WEB_PORT

# =============================================================================
# Logging
# =============================================================================
LOG_LEVEL=info

# =============================================================================
# Features
# =============================================================================
ENABLE_ANALYTICS=false
ENABLE_DEBUG=false

# =============================================================================
# Rate Limiting
# =============================================================================
RATE_LIMIT_MAX=100
EOF

    # Secure the .env file
    chmod 600 .env

    log_success "Environment file created"
}

create_management_script() {
    log_info "Creating management script..."

    cat > aegisx << 'SCRIPT'
#!/bin/bash
# AegisX Inventory Management CLI

set -euo pipefail
cd "$(dirname "$0")"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'
BOLD='\033[1m'

case "${1:-help}" in
    start)
        docker compose up -d
        echo -e "${GREEN}AegisX Inventory started!${NC}"
        ;;
    stop)
        docker compose down
        echo "AegisX Inventory stopped."
        ;;
    restart)
        docker compose restart
        echo "AegisX Inventory restarted."
        ;;
    status)
        docker compose ps
        ;;
    logs)
        docker compose logs -f ${2:-}
        ;;
    backup)
        if [ -f scripts/backup.sh ]; then
            ./scripts/backup.sh
        else
            source .env 2>/dev/null || true
            BACKUP_FILE="backups/aegisx_$(date +%Y%m%d_%H%M%S).sql.gz"
            docker compose exec -T postgres pg_dumpall -U "${POSTGRES_USER:-postgres}" | gzip > "$BACKUP_FILE"
            echo -e "${GREEN}Backup saved: $BACKUP_FILE${NC}"
        fi
        ;;
    restore)
        if [ -z "${2:-}" ]; then
            echo "Usage: ./aegisx restore <backup-file>"
            echo "Available backups:"
            ls -la backups/*.sql.gz 2>/dev/null || echo "  No backups found"
            exit 1
        fi
        if [ -f scripts/restore.sh ]; then
            ./scripts/restore.sh "$2"
        else
            source .env 2>/dev/null || true
            gunzip -c "$2" | docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}"
            echo -e "${GREEN}Restore complete!${NC}"
        fi
        ;;
    health)
        if [ -f scripts/health-check.sh ]; then
            ./scripts/health-check.sh
        else
            echo -e "${BOLD}Service Health:${NC}"
            docker compose ps --format "table {{.Name}}\t{{.Status}}\t{{.Ports}}"
        fi
        ;;
    update)
        if [ -f scripts/update.sh ]; then
            ./scripts/update.sh
        else
            echo "Pulling latest images..."
            docker compose pull
            echo "Restarting..."
            docker compose up -d
            echo -e "${GREEN}Update complete! Run './aegisx migrate' if needed.${NC}"
        fi
        ;;
    shell)
        case "${2:-api}" in
            api)
                docker compose exec api sh
                ;;
            postgres|db)
                source .env 2>/dev/null || true
                docker compose exec postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}"
                ;;
            redis)
                source .env 2>/dev/null || true
                docker compose exec redis redis-cli -a "$REDIS_PASSWORD"
                ;;
            *)
                echo "Unknown service: $2"
                echo "Available: api, postgres, redis"
                ;;
        esac
        ;;
    migrate)
        echo -e "${CYAN}[1/3]${NC} Running main system migrations..."
        docker compose exec -T api sh -c "cd /app && pnpm run db:migrate" && \
            echo -e "  ${GREEN}✅ Main schema done${NC}" || \
            echo -e "  ${YELLOW}⚠️  Warning (check logs)${NC}"
        echo -e "${CYAN}[2/3]${NC} Creating inventory schema..."
        source .env 2>/dev/null || true
        docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}" \
            -c "CREATE SCHEMA IF NOT EXISTS inventory;" && \
            echo -e "  ${GREEN}✅ Inventory schema ready${NC}" || \
            echo -e "  ${YELLOW}⚠️  Warning (check logs)${NC}"
        echo -e "${CYAN}[3/3]${NC} Running inventory domain migrations..."
        docker compose exec -T api sh -c "cd /app && pnpm run db:migrate:inventory" && \
            echo -e "  ${GREEN}✅ Inventory migrations done${NC}" || \
            echo -e "  ${YELLOW}⚠️  Warning (check logs)${NC}"
        echo -e "${GREEN}Migrations complete!${NC}"
        ;;
    seed)
        echo -e "${CYAN}[1/2]${NC} Seeding main system data..."
        docker compose exec -T api sh -c "cd /app && pnpm run db:seed" && \
            echo -e "  ${GREEN}✅ Main seeds done${NC}" || \
            echo -e "  ${YELLOW}⚠️  Seeds may already exist${NC}"
        echo -e "${CYAN}[2/2]${NC} Seeding inventory reference data..."
        docker compose exec -T api sh -c "cd /app && pnpm run db:seed:inventory" && \
            echo -e "  ${GREEN}✅ Inventory seeds done${NC}" || \
            echo -e "  ${YELLOW}⚠️  Seeds may already exist${NC}"
        echo -e "${GREEN}Seeding complete!${NC}"
        ;;
    setup)
        echo -e "${BOLD}=== AegisX Inventory - First Time Setup ===${NC}"
        echo ""
        echo -e "Run these commands in order after installation:"
        echo ""
        echo -e "  ${CYAN}1.${NC} ./aegisx start         ${BOLD}# Start all services${NC}"
        echo -e "  ${CYAN}2.${NC} ./aegisx migrate       ${BOLD}# Create database tables${NC}"
        echo -e "  ${CYAN}3.${NC} ./aegisx seed          ${BOLD}# Load reference data${NC}"
        echo ""
        echo -e "${BOLD}What's included in seed data:${NC}"
        echo "  - Budget types (9) & categories (6)"
        echo "  - Dosage forms (28) & drug units (31)"
        echo "  - ED groups (209) & drug generics (1,100+)"
        echo "  - Purchase methods (7) per พ.ร.บ. 2560"
        echo "  - Purchase types, return actions/reasons"
        echo "  - Sample locations (10) & companies (100)"
        echo ""
        echo -e "${BOLD}After setup, hospitals need to import:${NC}"
        echo "  - Drug catalog (ยา) via Excel import"
        echo "  - Vendor/company list (บริษัทคู่ค้า)"
        echo "  - Storage locations (คลังยา)"
        echo "  - Hospital settings (ข้อมูล รพ.)"
        echo ""
        ;;
    help|*)
        echo -e "${CYAN}"
        echo "  AegisX Inventory Management CLI"
        echo -e "${NC}"
        echo "Usage: ./aegisx <command> [options]"
        echo ""
        echo "Service Commands:"
        echo "  start              Start all services"
        echo "  stop               Stop all services"
        echo "  restart            Restart all services"
        echo "  status             Show service status"
        echo "  logs [service]     View logs (api, web, postgres, redis)"
        echo ""
        echo "Setup Commands (run in order for first install):"
        echo "  setup              Show first-time setup guide"
        echo "  migrate            Run database migrations (main + inventory)"
        echo "  seed               Load reference data (main + inventory)"
        echo ""
        echo "Maintenance Commands:"
        echo "  update             Pull latest images and restart"
        echo "  backup             Create database backup"
        echo "  restore <file>     Restore from backup"
        echo "  health             Check system health"
        echo ""
        echo "Debug Commands:"
        echo "  shell <service>    Open shell (api, postgres, redis)"
        echo "  help               Show this help"
        ;;
esac
SCRIPT

    chmod +x aegisx
    log_success "Management script created"
}

pull_images() {
    if [ "$SKIP_PULL" = true ]; then
        log_info "Skipping image pull..."
        return
    fi

    log_info "Pulling Docker images (this may take a few minutes)..."

    docker compose pull

    log_success "Images pulled successfully"
}

start_services() {
    log_info "Starting services..."

    docker compose up -d

    echo ""
    log_info "Waiting for services to be healthy..."

    # Wait for postgres
    echo -n "  PostgreSQL: "
    for i in {1..30}; do
        if docker compose exec -T postgres pg_isready -U postgres &> /dev/null; then
            echo -e "${GREEN}Ready${NC}"
            break
        fi
        echo -n "."
        sleep 2
    done

    # Wait for Redis
    echo -n "  Redis: "
    for i in {1..15}; do
        if docker compose exec -T redis redis-cli -a "$REDIS_PASSWORD" ping &> /dev/null; then
            echo -e "${GREEN}Ready${NC}"
            break
        fi
        echo -n "."
        sleep 1
    done

    # Wait for API
    echo -n "  API: "
    for i in {1..60}; do
        if curl -s "http://localhost:$API_PORT/api/health/live" &> /dev/null; then
            echo -e "${GREEN}Ready${NC}"
            break
        fi
        echo -n "."
        sleep 2
    done

    # Wait for Web
    echo -n "  Web: "
    for i in {1..30}; do
        if curl -s "http://localhost:$WEB_PORT/health" &> /dev/null; then
            echo -e "${GREEN}Ready${NC}"
            break
        fi
        echo -n "."
        sleep 1
    done

    echo ""
    log_success "All services started"
}

print_completion() {
    echo ""
    echo -e "${GREEN}${BOLD}=============================================${NC}"
    echo -e "${GREEN}${BOLD}   Installation Complete!${NC}"
    echo -e "${GREEN}${BOLD}=============================================${NC}"
    echo ""
    echo -e "${BOLD}Access URLs:${NC}"
    echo -e "  Web Application:  ${CYAN}http://localhost:$WEB_PORT${NC}"
    echo -e "  API:              ${CYAN}http://localhost:$API_PORT${NC}"
    echo -e "  API Docs:         ${CYAN}http://localhost:$API_PORT/docs${NC}"
    echo ""
    echo -e "${BOLD}Default Credentials:${NC}"
    echo -e "  Email:    ${CYAN}admin@aegisx.local${NC}"
    echo -e "  Password: ${CYAN}Admin123!${NC}"
    echo ""
    echo -e "${BOLD}Management Commands:${NC}"
    echo -e "  cd $INSTALL_DIR"
    echo -e "  ./aegisx start      # Start services"
    echo -e "  ./aegisx stop       # Stop services"
    echo -e "  ./aegisx status     # Check status"
    echo -e "  ./aegisx logs       # View logs"
    echo -e "  ./aegisx backup     # Backup database"
    echo -e "  ./aegisx help       # Show all commands"
    echo ""
    echo -e "${BOLD}Configuration:${NC}"
    echo -e "  Environment: ${CYAN}$INSTALL_DIR/.env${NC}"
    echo -e "  Backups:     ${CYAN}$INSTALL_DIR/backups/${NC}"
    echo ""
    echo -e "${YELLOW}Important:${NC}"
    echo -e "  - Please change the default admin password after first login"
    echo -e "  - Setup regular backups with: ./aegisx backup"
    echo -e "  - Check system health with: ./aegisx health"
    echo ""
}

# =============================================================================
# Main Installation Flow
# =============================================================================
main() {
    print_banner
    parse_args "$@"
    check_requirements
    prompt_config

    echo ""
    echo -e "${BOLD}Installation Summary:${NC}"
    echo -e "  Directory:    $INSTALL_DIR"
    echo -e "  Image Tag:    $IMAGE_TAG"
    echo -e "  API Port:     $API_PORT"
    echo -e "  Web Port:     $WEB_PORT"
    echo ""

    if [ "$NON_INTERACTIVE" = false ]; then
        read -p "Proceed with installation? [Y/n] " -n 1 -r
        echo ""
        if [[ ! $REPLY =~ ^[Yy]?$ ]]; then
            log_info "Installation cancelled."
            exit 0
        fi
    fi

    echo ""
    create_directory_structure
    download_files
    create_env_file
    create_management_script
    pull_images
    start_services
    print_completion
}

# Run main function
main "$@"
