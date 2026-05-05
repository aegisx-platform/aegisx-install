#!/bin/bash
# ==============================================================================
# AegisX Platform - Production Installer (Self-Contained)
# Version: 1.20.0
#
# Download & Install (private repo):
#   export GITHUB_TOKEN="ghp_xxxx"
#   curl -H "Authorization: token $GITHUB_TOKEN" \
#     -H "Accept: application/vnd.github.raw" \
#     https://api.github.com/repos/aegisx-platform/aegisx-starter/contents/deploy/install.sh \
#     | bash -s -- --github-token "$GITHUB_TOKEN"
#
# Or download first, then run:
#   bash install.sh --github-token "$GITHUB_TOKEN" --non-interactive
#   bash install.sh --github-token "$GITHUB_TOKEN" --mode external-db --db-url "postgres://..."
#
# Modes:
#   full        - Includes PostgreSQL & Redis (default)
#   external-db - Connects to external PostgreSQL, includes Redis only
#
# Requirements:
#   - Docker 20.10+
#   - Docker Compose v2+
#   - GitHub token with packages:read scope (for GHCR image pull)
#   - 4GB RAM minimum (full mode), 2GB RAM (external-db mode)
#   - 20GB disk space
#
# Migration Order (reference: scripts/production-install.sh):
#   1. Start PostgreSQL + Redis
#   2. Wait for PostgreSQL ready + aegisx_db created
#   3. CREATE SCHEMA IF NOT EXISTS inventory
#   4. Main migrations (public schema - 77 migrations)
#   5. Inventory migrations (inventory schema - 279 migrations)
#   6. Main seeds (public schema - users, roles, navigation, RBAC)
#   7. Inventory seeds (inventory schema - reference data)
# ==============================================================================

set -euo pipefail

# =============================================================================
# Configuration
# =============================================================================
SCRIPT_VERSION="1.20.0"
GITHUB_REPO="aegisx-platform/aegisx-starter"
IMAGE_REGISTRY="ghcr.io/aegisx-platform"
DOCKERHUB_REGISTRY="dixonsatit"
DEFAULT_INSTALL_DIR="$HOME/aegisx"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m'
BOLD='\033[1m'
DIM='\033[2m'

# =============================================================================
# Helper Functions
# =============================================================================
log_info()    { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[OK]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error()   { echo -e "${RED}[ERROR]${NC} $1" >&2; }
log_step()    { echo -e "\n${MAGENTA}[STEP]${NC} ${BOLD}$1${NC}"; }

print_banner() {
    echo -e "${CYAN}"
    cat << 'BANNER'

     █████╗ ███████╗ ██████╗ ██╗███████╗██╗  ██╗
    ██╔══██╗██╔════╝██╔════╝ ██║██╔════╝╚██╗██╔╝
    ███████║█████╗  ██║  ███╗██║███████╗ ╚███╔╝
    ██╔══██║██╔══╝  ██║   ██║██║╚════██║ ██╔██╗
    ██║  ██║███████╗╚██████╔╝██║███████║██╔╝ ██╗
    ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝╚══════╝╚═╝  ╚═╝

    Enterprise Platform Installer

BANNER
    echo -e "${NC}"
    echo -e "  ${BOLD}Version:${NC}  $SCRIPT_VERSION"
    echo -e "  ${BOLD}Registry:${NC} $IMAGE_REGISTRY"
    echo ""
}

# =============================================================================
# System Requirements
# =============================================================================
check_requirements() {
    log_step "Checking system requirements"

    local errors=0

    # Check Docker
    if command -v docker &> /dev/null; then
        local docker_version
        docker_version=$(docker version --format '{{.Server.Version}}' 2>/dev/null || echo "unknown")
        log_success "Docker: $docker_version"
    else
        log_error "Docker is not installed. Visit: https://docs.docker.com/get-docker/"
        errors=$((errors + 1))
    fi

    # Check Docker Compose
    if docker compose version &> /dev/null; then
        local compose_version
        compose_version=$(docker compose version --short 2>/dev/null || echo "unknown")
        log_success "Docker Compose: $compose_version"
    else
        log_error "Docker Compose v2 is not available."
        errors=$((errors + 1))
    fi

    # Check Docker daemon
    if docker info &> /dev/null; then
        log_success "Docker daemon: running"
    else
        log_error "Docker daemon is not running. Please start Docker."
        errors=$((errors + 1))
    fi

    # Check available memory
    local min_mem=3500
    if [ "$INSTALL_MODE" = "external-db" ]; then
        min_mem=1500
    fi

    if command -v free &> /dev/null; then
        local mem_total
        mem_total=$(free -m | awk '/^Mem:/{print $2}')
        if [ "$mem_total" -lt "$min_mem" ]; then
            log_warning "System has ${mem_total}MB RAM. Recommended: ${min_mem}MB+"
        else
            log_success "Memory: ${mem_total}MB"
        fi
    elif [ "$(uname)" = "Darwin" ]; then
        local mem_total
        mem_total=$(( $(sysctl -n hw.memsize) / 1024 / 1024 ))
        log_success "Memory: ${mem_total}MB"
    fi

    # Check disk space
    local disk_avail
    disk_avail=$(df -m "${INSTALL_DIR%/*}" 2>/dev/null | awk 'NR==2{print $4}' || echo "0")
    if [ "$disk_avail" -lt 10000 ] 2>/dev/null; then
        log_warning "Available disk space: ${disk_avail}MB (recommended: 10GB+)"
    else
        log_success "Disk space: ${disk_avail}MB available"
    fi

    if [ $errors -gt 0 ]; then
        log_error "Requirements check failed. Please fix the issues above."
        exit 1
    fi
}

# =============================================================================
# Password/Secret Generators
# =============================================================================
generate_password() {
    local result
    if command -v openssl &> /dev/null; then
        result=$(openssl rand -base64 32 | tr -dc 'a-zA-Z0-9' || true)
    else
        result=$(tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c 32 || true)
    fi
    printf '%s' "${result:0:24}"
}

generate_jwt_secret() {
    local result
    if command -v openssl &> /dev/null; then
        result=$(openssl rand -hex 32)
    else
        result=$(tr -dc 'a-f0-9' < /dev/urandom | head -c 64 || true)
    fi
    printf '%s' "$result"
}

# =============================================================================
# Argument Parsing
# =============================================================================
show_help() {
    echo "AegisX Platform Installer v$SCRIPT_VERSION"
    echo ""
    echo "Usage: install.sh [OPTIONS]"
    echo ""
    echo "Installation Modes:"
    echo "  --mode full          Include PostgreSQL & Redis (default)"
    echo "  --mode external-db   Connect to external PostgreSQL"
    echo ""
    echo "Options:"
    echo "  --github-token TOK   GitHub token for GHCR image pull (required for --registry ghcr)"
    echo "  --registry SOURCE    Image registry: 'ghcr' (default) or 'dockerhub'"
    echo "  --dir PATH           Installation directory (default: ~/aegisx)"
    echo "  --tag TAG            Docker image tag (default: latest)"
    echo "  --db-url URL         External database URL (required for external-db mode)"
    echo "  --non-interactive    Use default values without prompts"
    echo "  --skip-pull          Skip pulling images"
    echo "  --skip-start         Install only, don't start services"
    echo "  -h, --help           Show this help message"
    echo ""
    echo "Examples:"
    echo "  # Full installation (private repo)"
    echo "  ./install.sh --github-token ghp_xxxx"
    echo ""
    echo "  # External database mode"
    echo "  ./install.sh --github-token ghp_xxxx --mode external-db --db-url 'postgres://user:pass@host:5432/aegisx_db'"
    echo ""
    echo "  # Non-interactive with specific tag"
    echo "  ./install.sh --github-token ghp_xxxx --mode full --tag v1.19.0 --non-interactive"
    echo ""
    echo "  # Use Docker Hub (no GitHub token needed - for servers that can't reach ghcr.io):"
    echo "  ./install.sh --registry dockerhub --non-interactive"
    echo "  ./install.sh --registry dockerhub --mode external-db --db-url 'postgres://...'"
    echo ""
    echo "  # One-liner download & install (private repo)"
    echo "  curl -H \"Authorization: token \$GITHUB_TOKEN\" -H \"Accept: application/vnd.github.raw\" \\"
    echo "    https://api.github.com/repos/aegisx-platform/aegisx-starter/contents/deploy/install.sh \\"
    echo "    | bash -s -- --github-token \"\$GITHUB_TOKEN\" --non-interactive"
}

parse_args() {
    INSTALL_DIR="$DEFAULT_INSTALL_DIR"
    INSTALL_MODE="full"
    MODE_EXPLICIT=false
    NON_INTERACTIVE=false
    IMAGE_TAG="latest"
    SKIP_PULL=false
    SKIP_START=false
    EXTERNAL_DB_URL=""
    GITHUB_TOKEN=""
    REGISTRY_SOURCE="ghcr"

    while [[ $# -gt 0 ]]; do
        case $1 in
            --github-token)
                GITHUB_TOKEN="$2"
                shift 2
                ;;
            --registry)
                REGISTRY_SOURCE="$2"
                if [[ "$REGISTRY_SOURCE" != "ghcr" && "$REGISTRY_SOURCE" != "dockerhub" ]]; then
                    log_error "Invalid registry: $REGISTRY_SOURCE (must be 'ghcr' or 'dockerhub')"
                    exit 1
                fi
                shift 2
                ;;
            --mode)
                INSTALL_MODE="$2"
                MODE_EXPLICIT=true
                if [[ "$INSTALL_MODE" != "full" && "$INSTALL_MODE" != "external-db" ]]; then
                    log_error "Invalid mode: $INSTALL_MODE (must be 'full' or 'external-db')"
                    exit 1
                fi
                shift 2
                ;;
            --dir)
                INSTALL_DIR="$2"
                shift 2
                ;;
            --tag)
                IMAGE_TAG="$2"
                shift 2
                ;;
            --db-url)
                EXTERNAL_DB_URL="$2"
                shift 2
                ;;
            --non-interactive)
                NON_INTERACTIVE=true
                shift
                ;;
            --skip-pull)
                SKIP_PULL=true
                shift
                ;;
            --skip-start)
                SKIP_START=true
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

    # Validate external-db mode
    if [ "$INSTALL_MODE" = "external-db" ] && [ -z "$EXTERNAL_DB_URL" ] && [ "$NON_INTERACTIVE" = true ]; then
        log_error "External database URL is required in non-interactive mode."
        echo "  Use: --db-url 'postgres://user:pass@host:5432/dbname'"
        exit 1
    fi
}

# =============================================================================
# Mode Selection (Interactive)
# =============================================================================
select_mode() {
    if [ "$NON_INTERACTIVE" = true ] || [ "$MODE_EXPLICIT" = true ]; then
        return
    fi

    echo -e "${BOLD}Select installation mode:${NC}"
    echo ""
    echo -e "  ${CYAN}1)${NC} ${BOLD}Full Stack${NC} ${DIM}(recommended)${NC}"
    echo -e "     Includes PostgreSQL + Redis + All application services"
    echo -e "     Best for: Fresh installations, standalone deployments"
    echo ""
    echo -e "  ${CYAN}2)${NC} ${BOLD}External Database${NC}"
    echo -e "     Connects to your existing PostgreSQL, includes Redis"
    echo -e "     Best for: Managed databases (RDS, Cloud SQL, Supabase)"
    echo ""

    while true; do
        read -p "  Choose mode [1/2]: " mode_choice < /dev/tty
        case $mode_choice in
            1|"")
                INSTALL_MODE="full"
                break
                ;;
            2)
                INSTALL_MODE="external-db"
                break
                ;;
            *)
                echo -e "  ${RED}Invalid choice. Enter 1 or 2.${NC}"
                ;;
        esac
    done
    echo ""
}

# =============================================================================
# Configuration Prompts
# =============================================================================
prompt_config() {
    log_step "Configuration"

    if [ "$NON_INTERACTIVE" = true ]; then
        log_info "Using default configuration (non-interactive mode)"
        POSTGRES_USER="postgres"
        POSTGRES_PASSWORD=$(generate_password)
        POSTGRES_DB="aegisx_db"
        REDIS_PASSWORD=$(generate_password)
        JWT_SECRET=$(generate_jwt_secret)
        SESSION_SECRET=$(generate_jwt_secret)
        HIS_ENCRYPTION_SECRET=$(generate_jwt_secret)
        MIGRATION_ENCRYPTION_KEY=$(generate_jwt_secret)
        API_PORT=3000
        WEB_PORT=8080
        APP_NAME="AegisX Platform"
        return
    fi

    # Database config
    if [ "$INSTALL_MODE" = "full" ]; then
        echo -e "${CYAN}Database Configuration (PostgreSQL)${NC}"
        read -p "  Database name [aegisx_db]: " POSTGRES_DB < /dev/tty
        POSTGRES_DB=${POSTGRES_DB:-aegisx_db}

        read -p "  Database user [postgres]: " POSTGRES_USER < /dev/tty
        POSTGRES_USER=${POSTGRES_USER:-postgres}

        read -sp "  Database password [auto-generate]: " POSTGRES_PASSWORD < /dev/tty
        echo ""
        if [ -z "$POSTGRES_PASSWORD" ]; then
            POSTGRES_PASSWORD=$(generate_password)
            echo -e "  ${GREEN}Generated:${NC} ${POSTGRES_PASSWORD:0:4}****${POSTGRES_PASSWORD: -4}"
        fi
        echo ""
    else
        echo -e "${CYAN}External Database Configuration${NC}"
        if [ -z "$EXTERNAL_DB_URL" ]; then
            read -p "  Database URL (postgres://user:pass@host:5432/db): " EXTERNAL_DB_URL < /dev/tty
            while [ -z "$EXTERNAL_DB_URL" ]; do
                echo -e "  ${RED}Database URL is required for external-db mode.${NC}"
                read -p "  Database URL: " EXTERNAL_DB_URL < /dev/tty
            done
        else
            echo -e "  Database URL: ${DIM}${EXTERNAL_DB_URL:0:30}...${NC}"
        fi
        POSTGRES_USER=""
        POSTGRES_PASSWORD=""
        POSTGRES_DB=""
        echo ""
    fi

    # Redis
    echo -e "${CYAN}Redis Configuration${NC}"
    read -sp "  Redis password [auto-generate]: " REDIS_PASSWORD < /dev/tty
    echo ""
    if [ -z "$REDIS_PASSWORD" ]; then
        REDIS_PASSWORD=$(generate_password)
        echo -e "  ${GREEN}Generated:${NC} ${REDIS_PASSWORD:0:4}****${REDIS_PASSWORD: -4}"
    fi
    echo ""

    # JWT
    echo -e "${CYAN}Security Configuration${NC}"
    read -sp "  JWT Secret [auto-generate]: " JWT_SECRET < /dev/tty
    echo ""
    if [ -z "$JWT_SECRET" ]; then
        JWT_SECRET=$(generate_jwt_secret)
        echo -e "  ${GREEN}Generated:${NC} ${JWT_SECRET:0:8}****"
    fi
    SESSION_SECRET=$(generate_jwt_secret)
    echo -e "  ${GREEN}Session Secret Generated:${NC} ${SESSION_SECRET:0:8}****"
    HIS_ENCRYPTION_SECRET=$(generate_jwt_secret)
    echo -e "  ${GREEN}HIS Encryption Secret Generated:${NC} ${HIS_ENCRYPTION_SECRET:0:8}****"
    MIGRATION_ENCRYPTION_KEY=$(generate_jwt_secret)
    echo -e "  ${GREEN}Migration Encryption Key Generated:${NC} ${MIGRATION_ENCRYPTION_KEY:0:8}****"
    echo ""

    # Ports
    echo -e "${CYAN}Port Configuration${NC}"
    read -p "  API port [3000]: " API_PORT < /dev/tty
    API_PORT=${API_PORT:-3000}
    read -p "  Web port [8080]: " WEB_PORT < /dev/tty
    WEB_PORT=${WEB_PORT:-8080}
    echo ""

    # App name
    echo -e "${CYAN}Application Configuration${NC}"
    read -p "  Application name [AegisX Platform]: " APP_NAME < /dev/tty
    APP_NAME=${APP_NAME:-AegisX Platform}
    echo ""
}

# =============================================================================
# Directory Structure
# =============================================================================
create_directory_structure() {
    log_step "Creating directory structure"

    mkdir -p "$INSTALL_DIR"/{config/{api,web,postgres/init,nginx/ssl},backups,logs/api,scripts,uploads}

    log_success "Directory structure created at $INSTALL_DIR"
    echo ""
    echo -e "  ${DIM}$INSTALL_DIR/${NC}"
    echo -e "  ${DIM}├── config/${NC}"
    echo -e "  ${DIM}│   ├── api/            ${NC}# API configuration overrides"
    echo -e "  ${DIM}│   ├── web/            ${NC}# Nginx custom config"
    echo -e "  ${DIM}│   ├── postgres/init/  ${NC}# DB init scripts (full mode)"
    echo -e "  ${DIM}│   └── nginx/ssl/      ${NC}# SSL certificates"
    echo -e "  ${DIM}├── backups/            ${NC}# Database backups"
    echo -e "  ${DIM}├── logs/               ${NC}# Application logs"
    echo -e "  ${DIM}│   └── api/            ${NC}# API server logs"
    echo -e "  ${DIM}├── scripts/            ${NC}# Management scripts"
    echo -e "  ${DIM}├── uploads/            ${NC}# File uploads"
    echo -e "  ${DIM}├── .env                ${NC}# Environment variables"
    echo -e "  ${DIM}├── docker-compose.yml  ${NC}# Docker Compose config"
    echo -e "  ${DIM}└── aegisx              ${NC}# Management CLI"
}

# =============================================================================
# Generate DB Init Script (auto-create inventory schema on first run)
# =============================================================================
create_db_init_scripts() {
    if [ "$INSTALL_MODE" = "full" ]; then
        cat > "$INSTALL_DIR/config/postgres/init/01-create-schemas.sql" << 'INITSQL'
-- Auto-created by AegisX installer
-- This runs on first PostgreSQL container startup only
CREATE SCHEMA IF NOT EXISTS inventory;
INITSQL
        log_success "Database init script created (inventory schema)"
    fi
}

# =============================================================================
# Generate Docker Compose File (embedded - works for private repos)
# =============================================================================
generate_compose_file() {
    log_step "Generating Docker Compose configuration"

    # Set image names based on registry source (resolve tag immediately)
    local tag="${IMAGE_TAG:-latest}"
    if [ "$REGISTRY_SOURCE" = "dockerhub" ]; then
        API_IMAGE="${DOCKERHUB_REGISTRY}/aegisx-api:${tag}"
        WEB_IMAGE="${DOCKERHUB_REGISTRY}/aegisx-web:${tag}"
        log_info "Using Docker Hub images: ${DOCKERHUB_REGISTRY}/aegisx-*:${tag}"
    else
        API_IMAGE="ghcr.io/aegisx-platform/aegisx-starter-api:${tag}"
        WEB_IMAGE="ghcr.io/aegisx-platform/aegisx-starter-web:${tag}"
        log_info "Using GitHub Container Registry images: *:${tag}"
    fi

    cd "$INSTALL_DIR"

    if [ "$INSTALL_MODE" = "full" ]; then
        cat > docker-compose.yml << 'COMPOSEFILE'
# AegisX Platform - Full Stack Docker Compose (with PostgreSQL & Redis)
name: aegisx

services:
  postgres:
    image: postgres:15-alpine
    container_name: aegisx_postgres
    restart: unless-stopped
    environment:
      POSTGRES_USER: ${POSTGRES_USER:-postgres}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD:?Database password is required}
      POSTGRES_DB: ${POSTGRES_DB:-aegisx_db}
      PGDATA: /var/lib/postgresql/data/pgdata
    ports:
      - '${POSTGRES_PORT:-5432}:5432'
    volumes:
      - postgres_data:/var/lib/postgresql/data
      - ./backups:/backups
      - ./config/postgres/init:/docker-entrypoint-initdb.d:ro
    healthcheck:
      test: ['CMD-SHELL', 'pg_isready -U ${POSTGRES_USER:-postgres} -d ${POSTGRES_DB:-aegisx_db}']
      interval: 10s
      timeout: 5s
      retries: 5
      start_period: 30s
    networks:
      - aegisx-network

  redis:
    image: redis:7-alpine
    container_name: aegisx_redis
    restart: unless-stopped
    command: >
      redis-server
      --appendonly yes
      --requirepass ${REDIS_PASSWORD:-redis_secret}
      --maxmemory ${REDIS_MAXMEMORY:-256mb}
      --maxmemory-policy allkeys-lru
    ports:
      - '${REDIS_PORT:-6379}:6379'
    volumes:
      - redis_data:/data
    healthcheck:
      test: ['CMD', 'redis-cli', '-a', '${REDIS_PASSWORD:-redis_secret}', 'ping']
      interval: 10s
      timeout: 5s
      retries: 5
    networks:
      - aegisx-network

  api:
    image: $API_IMAGE
    container_name: aegisx_api
    restart: unless-stopped
    depends_on:
      postgres:
        condition: service_healthy
      redis:
        condition: service_healthy
    environment:
      NODE_ENV: production
      HOST: 0.0.0.0
      PORT: 3000
      API_PREFIX: /api
      DATABASE_URL: postgres://${POSTGRES_USER:-postgres}:${POSTGRES_PASSWORD}@postgres:5432/${POSTGRES_DB:-aegisx_db}
      DATABASE_HOST: postgres
      DATABASE_PORT: 5432
      DATABASE_USER: ${POSTGRES_USER:-postgres}
      DATABASE_PASSWORD: ${POSTGRES_PASSWORD}
      DATABASE_NAME: ${POSTGRES_DB:-aegisx_db}
      REDIS_HOST: redis
      REDIS_PORT: 6379
      REDIS_PASSWORD: ${REDIS_PASSWORD:-redis_secret}
      JWT_SECRET: ${JWT_SECRET:?JWT secret is required}
      JWT_EXPIRES_IN: ${JWT_EXPIRES_IN:-1d}
      JWT_REFRESH_EXPIRES_IN: ${JWT_REFRESH_EXPIRES_IN:-7d}
      SESSION_SECRET: ${SESSION_SECRET:?Session secret is required}
      CORS_ORIGINS: ${CORS_ORIGINS:-http://localhost:8080}
      RATE_LIMIT_MAX: ${RATE_LIMIT_MAX:-100}
      LOG_LEVEL: ${LOG_LEVEL:-info}
      UPLOAD_DIR: /app/uploads
    ports:
      - '${API_PORT:-3333}:3000'
    volumes:
      - uploads_data:/app/uploads
      - ./config/api:/app/config:ro
      - ./logs/api:/app/logs
    healthcheck:
      test: ['CMD', 'wget', '-qO-', 'http://localhost:3000/api/health/live']
      interval: 15s
      timeout: 10s
      retries: 10
      start_period: 30s
    networks:
      - aegisx-network

  web:
    image: $WEB_IMAGE
    container_name: aegisx_web
    restart: unless-stopped
    environment:
      API_URL: ${API_URL:-http://localhost:3333/api}
      APP_NAME: ${APP_NAME:-AegisX Platform}
      APP_VERSION: ${APP_VERSION:-latest}
      ENABLE_ANALYTICS: ${ENABLE_ANALYTICS:-false}
      ENABLE_DEBUG: ${ENABLE_DEBUG:-false}
    ports:
      - '${WEB_PORT:-8080}:8080'
    volumes:
      - ./config/web:/etc/nginx/conf.d:ro
    healthcheck:
      test: ['CMD', 'wget', '-qO-', 'http://localhost:8080/health']
      interval: 30s
      timeout: 10s
      retries: 3
    networks:
      - aegisx-network

  db-backup:
    image: prodrigestivill/postgres-backup-local:15-alpine
    container_name: aegisx_db_backup
    restart: unless-stopped
    depends_on:
      postgres:
        condition: service_healthy
    environment:
      POSTGRES_HOST: postgres
      POSTGRES_PORT: 5432
      POSTGRES_USER: ${POSTGRES_USER:-postgres}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
      POSTGRES_DB: ${POSTGRES_DB:-aegisx_db}
      POSTGRES_EXTRA_OPTS: '--schema=public --schema=inventory --no-owner --no-privileges'
      SCHEDULE: ${BACKUP_SCHEDULE:-@daily}
      BACKUP_KEEP_DAYS: ${BACKUP_KEEP_DAYS:-7}
      BACKUP_KEEP_WEEKS: ${BACKUP_KEEP_WEEKS:-4}
      BACKUP_KEEP_MONTHS: ${BACKUP_KEEP_MONTHS:-6}
      HEALTHCHECK_PORT: 8080
      TZ: ${TZ:-Asia/Bangkok}
    volumes:
      - ./backups:/backups
    networks:
      - aegisx-network

  npm:
    image: jc21/nginx-proxy-manager:latest
    container_name: aegisx_npm
    restart: unless-stopped
    ports:
      - '${NPM_HTTP_PORT:-80}:80'
      - '${NPM_HTTPS_PORT:-443}:443'
      - '${NPM_ADMIN_PORT:-81}:81'
    volumes:
      - npm_data:/data
      - npm_letsencrypt:/etc/letsencrypt
    healthcheck:
      test: ['CMD', 'wget', '-qO-', 'http://localhost:81/api/']
      interval: 30s
      timeout: 10s
      retries: 3
      start_period: 30s
    networks:
      - aegisx-network

networks:
  aegisx-network:
    driver: bridge

volumes:
  postgres_data:
  redis_data:
  uploads_data:
  npm_data:
  npm_letsencrypt:
COMPOSEFILE
        log_success "Generated docker-compose.yml (full mode)"

    else
        cat > docker-compose.yml << 'COMPOSEFILE'
# AegisX Platform - External Database Docker Compose (no PostgreSQL)
name: aegisx

services:
  redis:
    image: redis:7-alpine
    container_name: aegisx_redis
    restart: unless-stopped
    command: >
      redis-server
      --appendonly yes
      --requirepass ${REDIS_PASSWORD:-redis_secret}
      --maxmemory ${REDIS_MAXMEMORY:-256mb}
      --maxmemory-policy allkeys-lru
    ports:
      - '${REDIS_PORT:-6379}:6379'
    volumes:
      - redis_data:/data
    healthcheck:
      test: ['CMD', 'redis-cli', '-a', '${REDIS_PASSWORD:-redis_secret}', 'ping']
      interval: 10s
      timeout: 5s
      retries: 5
    networks:
      - aegisx-network

  api:
    image: $API_IMAGE
    container_name: aegisx_api
    restart: unless-stopped
    depends_on:
      redis:
        condition: service_healthy
    environment:
      NODE_ENV: production
      HOST: 0.0.0.0
      PORT: 3000
      API_PREFIX: /api
      DATABASE_URL: ${DATABASE_URL:?External DATABASE_URL is required}
      DATABASE_HOST: ${DATABASE_HOST:-}
      DATABASE_PORT: ${DATABASE_PORT:-5432}
      DATABASE_USER: ${DATABASE_USER:-}
      DATABASE_PASSWORD: ${DATABASE_PASSWORD:-}
      DATABASE_NAME: ${DATABASE_NAME:-}
      REDIS_HOST: redis
      REDIS_PORT: 6379
      REDIS_PASSWORD: ${REDIS_PASSWORD:-redis_secret}
      JWT_SECRET: ${JWT_SECRET:?JWT secret is required}
      JWT_EXPIRES_IN: ${JWT_EXPIRES_IN:-1d}
      JWT_REFRESH_EXPIRES_IN: ${JWT_REFRESH_EXPIRES_IN:-7d}
      SESSION_SECRET: ${SESSION_SECRET:?Session secret is required}
      CORS_ORIGINS: ${CORS_ORIGINS:-http://localhost:8080}
      RATE_LIMIT_MAX: ${RATE_LIMIT_MAX:-100}
      LOG_LEVEL: ${LOG_LEVEL:-info}
      UPLOAD_DIR: /app/uploads
    ports:
      - '${API_PORT:-3333}:3000'
    volumes:
      - uploads_data:/app/uploads
      - ./config/api:/app/config:ro
      - ./logs/api:/app/logs
    healthcheck:
      test: ['CMD', 'wget', '-qO-', 'http://localhost:3000/api/health/live']
      interval: 15s
      timeout: 10s
      retries: 10
      start_period: 30s
    networks:
      - aegisx-network

  web:
    image: $WEB_IMAGE
    container_name: aegisx_web
    restart: unless-stopped
    environment:
      API_URL: ${API_URL:-http://localhost:3333/api}
      APP_NAME: ${APP_NAME:-AegisX Platform}
      APP_VERSION: ${APP_VERSION:-latest}
      ENABLE_ANALYTICS: ${ENABLE_ANALYTICS:-false}
      ENABLE_DEBUG: ${ENABLE_DEBUG:-false}
    ports:
      - '${WEB_PORT:-8080}:8080'
    volumes:
      - ./config/web:/etc/nginx/conf.d:ro
    healthcheck:
      test: ['CMD', 'wget', '-qO-', 'http://localhost:8080/health']
      interval: 30s
      timeout: 10s
      retries: 3
    networks:
      - aegisx-network

  npm:
    image: jc21/nginx-proxy-manager:latest
    container_name: aegisx_npm
    restart: unless-stopped
    ports:
      - '${NPM_HTTP_PORT:-80}:80'
      - '${NPM_HTTPS_PORT:-443}:443'
      - '${NPM_ADMIN_PORT:-81}:81'
    volumes:
      - npm_data:/data
      - npm_letsencrypt:/etc/letsencrypt
    healthcheck:
      test: ['CMD', 'wget', '-qO-', 'http://localhost:81/api/']
      interval: 30s
      timeout: 10s
      retries: 3
      start_period: 30s
    networks:
      - aegisx-network

networks:
  aegisx-network:
    driver: bridge

volumes:
  redis_data:
  uploads_data:
  npm_data:
  npm_letsencrypt:
COMPOSEFILE
        log_success "Generated docker-compose.yml (external-db mode)"
    fi
}

# =============================================================================
# Environment File
# =============================================================================
create_env_file() {
    log_step "Creating environment configuration"

    cd "$INSTALL_DIR"

    if [ "$INSTALL_MODE" = "full" ]; then
        cat > .env << ENVFILE
# ==============================================================================
# AegisX Platform - Environment Configuration
# Mode: Full Stack (PostgreSQL + Redis included)
# Generated: $(date -Iseconds)
# ==============================================================================

# Compose variant (read by update.sh to re-download the matching template)
COMPOSE_VARIANT=full

# =============================================================================
# Docker Image
# =============================================================================
IMAGE_TAG=$IMAGE_TAG
API_IMAGE=$API_IMAGE
WEB_IMAGE=$WEB_IMAGE

# =============================================================================
# PostgreSQL Database
# =============================================================================
POSTGRES_USER="$POSTGRES_USER"
POSTGRES_PASSWORD="$POSTGRES_PASSWORD"
POSTGRES_DB="$POSTGRES_DB"
POSTGRES_PORT=5432

# =============================================================================
# Redis
# =============================================================================
REDIS_PASSWORD="$REDIS_PASSWORD"
REDIS_PORT=6379
REDIS_MAXMEMORY=256mb

# =============================================================================
# JWT Security
# =============================================================================
JWT_SECRET="$JWT_SECRET"
JWT_EXPIRES_IN=1d
JWT_REFRESH_EXPIRES_IN=7d
SESSION_SECRET="$SESSION_SECRET"

# =============================================================================
# HIS Integration (Encryption for HIS credentials)
# =============================================================================
HIS_ENCRYPTION_SECRET="$HIS_ENCRYPTION_SECRET"

# =============================================================================
# Migration Wizard (Encryption for DB connection credentials)
# WARNING: If production data exists, keep existing key — do NOT regenerate
# =============================================================================
MIGRATION_ENCRYPTION_KEY="$MIGRATION_ENCRYPTION_KEY"

# =============================================================================
# Application
# =============================================================================
APP_NAME="$APP_NAME"
APP_VERSION="$IMAGE_TAG"

# =============================================================================
# Ports
# =============================================================================
API_PORT=$API_PORT
WEB_PORT=$WEB_PORT

# =============================================================================
# Automated Database Backup
# =============================================================================
BACKUP_SCHEDULE=@daily
BACKUP_KEEP_DAYS=7
BACKUP_KEEP_WEEKS=4
BACKUP_KEEP_MONTHS=6
TZ=Asia/Bangkok

# =============================================================================
# Nginx Proxy Manager
# =============================================================================
NPM_HTTP_PORT=80
NPM_HTTPS_PORT=443
NPM_ADMIN_PORT=81

# =============================================================================
# API URL (used by frontend to connect to API)
# Change this if using a reverse proxy or custom domain
# =============================================================================
API_URL="http://localhost:$API_PORT/api"

# =============================================================================
# CORS - Comma-separated list of allowed origins
# =============================================================================
CORS_ORIGINS="http://localhost:$WEB_PORT"

# =============================================================================
# Logging & Debug
# =============================================================================
LOG_LEVEL=info
ENABLE_ANALYTICS=false
ENABLE_DEBUG=false

# =============================================================================
# Rate Limiting
# =============================================================================
RATE_LIMIT_MAX=100
ENVFILE

    else
        cat > .env << ENVFILE
# ==============================================================================
# AegisX Platform - Environment Configuration
# Mode: External Database (connecting to existing PostgreSQL)
# Generated: $(date -Iseconds)
# ==============================================================================

# Compose variant (read by update.sh to re-download the matching template)
COMPOSE_VARIANT=external-db

# =============================================================================
# Docker Image
# =============================================================================
IMAGE_TAG=$IMAGE_TAG
API_IMAGE=$API_IMAGE
WEB_IMAGE=$WEB_IMAGE

# =============================================================================
# External Database
# =============================================================================
DATABASE_URL="$EXTERNAL_DB_URL"

# =============================================================================
# Redis
# =============================================================================
REDIS_PASSWORD="$REDIS_PASSWORD"
REDIS_PORT=6379
REDIS_MAXMEMORY=256mb

# =============================================================================
# JWT Security
# =============================================================================
JWT_SECRET="$JWT_SECRET"
JWT_EXPIRES_IN=1d
JWT_REFRESH_EXPIRES_IN=7d
SESSION_SECRET="$SESSION_SECRET"

# =============================================================================
# HIS Integration (Encryption for HIS credentials)
# =============================================================================
HIS_ENCRYPTION_SECRET="$HIS_ENCRYPTION_SECRET"

# =============================================================================
# Migration Wizard (Encryption for DB connection credentials)
# WARNING: If production data exists, keep existing key — do NOT regenerate
# =============================================================================
MIGRATION_ENCRYPTION_KEY="$MIGRATION_ENCRYPTION_KEY"

# =============================================================================
# Application
# =============================================================================
APP_NAME="$APP_NAME"
APP_VERSION="$IMAGE_TAG"

# =============================================================================
# Ports
# =============================================================================
API_PORT=$API_PORT
WEB_PORT=$WEB_PORT

# =============================================================================
# Nginx Proxy Manager
# =============================================================================
NPM_HTTP_PORT=80
NPM_HTTPS_PORT=443
NPM_ADMIN_PORT=81

# =============================================================================
# API URL (used by frontend to connect to API)
# Change this if using a reverse proxy or custom domain
# =============================================================================
API_URL="http://localhost:$API_PORT/api"

# =============================================================================
# CORS - Comma-separated list of allowed origins
# =============================================================================
CORS_ORIGINS="http://localhost:$WEB_PORT"

# =============================================================================
# Logging & Debug
# =============================================================================
LOG_LEVEL=info
ENABLE_ANALYTICS=false
ENABLE_DEBUG=false

# =============================================================================
# Rate Limiting
# =============================================================================
RATE_LIMIT_MAX=100
ENVFILE
    fi

    chmod 600 .env
    log_success "Environment file created (.env)"
}

# =============================================================================
# Management CLI Script
# =============================================================================
create_management_script() {
    log_step "Creating management CLI"

    cd "$INSTALL_DIR"

    cat > aegisx << 'MGMT_SCRIPT'
#!/bin/bash
# AegisX Platform Management CLI
set -euo pipefail
cd "$(dirname "$0")"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'
BOLD='\033[1m'

# Load .env for variable access
source .env 2>/dev/null || true

# Helper: detect if we have a local postgres container or external DB
has_local_postgres() {
    docker compose ps --services 2>/dev/null | grep -q "^postgres$"
}

# Helper: run SQL command (works for both full and external-db modes)
run_sql() {
    if has_local_postgres; then
        docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}" "$@"
    elif [ -n "${DATABASE_URL:-}" ]; then
        docker compose exec -T api sh -c "psql \"\$DATABASE_URL\" $(printf '%q ' "$@")"
    else
        echo -e "${RED}No database connection available${NC}" >&2
        return 1
    fi
}

case "${1:-help}" in
    start)
        echo -e "${GREEN}Starting AegisX Platform...${NC}"
        docker compose up -d
        echo -e "${GREEN}All services started!${NC}"
        docker compose ps
        ;;
    stop)
        echo -e "${YELLOW}Stopping AegisX Platform...${NC}"
        docker compose down
        echo "All services stopped."
        ;;
    restart)
        echo -e "${YELLOW}Restarting AegisX Platform...${NC}"
        docker compose restart
        docker compose ps
        ;;
    status)
        docker compose ps
        ;;
    logs)
        docker compose logs -f "${2:-}"
        ;;
    pull)
        echo "Pulling latest images..."
        docker compose pull
        echo -e "${GREEN}Images updated! Run './aegisx restart' to apply.${NC}"
        ;;
    migrate)
        # ============================================================
        # Migration order (reference: scripts/production-install.sh):
        #   1. Create inventory schema
        #   2. Main migrations (public schema)
        #   3. Inventory migrations (inventory schema)
        # ============================================================
        echo -e "${BOLD}=== Database Migration ===${NC}"
        echo ""

        echo -e "${CYAN}[1/3]${NC} Creating inventory schema..."
        if run_sql -c "CREATE SCHEMA IF NOT EXISTS inventory;" 2>/dev/null; then
            echo -e "  ${GREEN}✅ Inventory schema ready${NC}"
        else
            echo -e "  ${RED}❌ Failed to create inventory schema${NC}"
            echo -e "  ${YELLOW}Check database connection and credentials${NC}"
            exit 1
        fi

        echo -e "${CYAN}[2/3]${NC} Running main system migrations..."
        if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile.ts" 2>&1 | tail -5; then
            echo -e "  ${GREEN}✅ Main schema done${NC}"
        else
            echo -e "  ${RED}❌ Main migrations failed${NC}"
            exit 1
        fi

        echo -e "${CYAN}[3/3]${NC} Running inventory domain migrations..."
        if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile-inventory.ts" 2>&1 | tail -5; then
            echo -e "  ${GREEN}✅ Inventory migrations done${NC}"
        else
            echo -e "  ${RED}❌ Inventory migrations failed${NC}"
            exit 1
        fi

        echo -e "${GREEN}Migrations complete!${NC}"
        ;;
    seed)
        # ============================================================
        # Seed order:
        #   1. Main seeds (users, roles, navigation, RBAC, geography)
        #   2. Inventory seeds (reference data: budget types, drugs, etc.)
        # ============================================================
        echo -e "${BOLD}=== Seed Reference Data ===${NC}"
        echo ""

        echo -e "${CYAN}[1/2]${NC} Seeding main system data..."
        if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex seed:run --knexfile knexfile.ts" 2>&1 | tail -5; then
            echo -e "  ${GREEN}✅ Main seeds done${NC}"
        else
            echo -e "  ${YELLOW}⚠️  Seeds may already exist${NC}"
        fi

        echo -e "${CYAN}[2/2]${NC} Seeding inventory reference data..."
        if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex seed:run --knexfile knexfile-inventory.ts" 2>&1 | tail -5; then
            echo -e "  ${GREEN}✅ Inventory seeds done${NC}"
        else
            echo -e "  ${YELLOW}⚠️  Seeds may already exist${NC}"
        fi

        echo -e "${GREEN}Seeding complete!${NC}"
        ;;
    setup)
        echo -e "${BOLD}=== AegisX Platform - First Time Setup ===${NC}"
        echo ""
        echo -e "Run these commands in order after installation:"
        echo ""
        echo -e "  ${CYAN}1.${NC} ./aegisx start         ${BOLD}# Start all services${NC}"
        echo -e "  ${CYAN}2.${NC} ./aegisx migrate       ${BOLD}# Create schema + run migrations${NC}"
        echo -e "  ${CYAN}3.${NC} ./aegisx seed          ${BOLD}# Load reference data${NC}"
        echo ""
        echo -e "${BOLD}Migration order (automatic):${NC}"
        echo "  1. CREATE SCHEMA inventory"
        echo "  2. Main migrations (public schema - users, auth, RBAC)"
        echo "  3. Inventory migrations (inventory schema - drugs, budgets)"
        echo "  4. Main seeds (users, roles, navigation, geography)"
        echo "  5. Inventory seeds (budget types, drug units, ED groups)"
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
    update)
        echo -e "${BOLD}=== Update AegisX Platform ===${NC}"
        echo ""

        echo -e "${CYAN}[1/4]${NC} Creating database backup..."
        mkdir -p backups
        BACKUP_FILE="backups/aegisx_pre-update_$(date +%Y%m%d_%H%M%S).sql.gz"
        if has_local_postgres; then
            docker compose exec -T postgres pg_dumpall -U "${POSTGRES_USER:-postgres}" | gzip > "$BACKUP_FILE" 2>/dev/null && \
                echo -e "  ${GREEN}✅ Backup saved: $BACKUP_FILE${NC}" || \
                echo -e "  ${YELLOW}⚠️  Backup skipped${NC}"
        else
            echo -e "  ${YELLOW}⚠️  External DB - backup with your provider's tools${NC}"
        fi

        echo -e "${CYAN}[2/4]${NC} Pulling latest images..."
        docker compose pull

        echo -e "${CYAN}[3/4]${NC} Restarting services..."
        docker compose up -d

        echo -e "${CYAN}[4/4]${NC} Running migrations..."
        echo "  Waiting for API to be ready..."
        for i in $(seq 1 60); do
            if curl -s "http://localhost:${API_PORT:-3333}/api/health/live" &> /dev/null; then break; fi
            echo -n "."
            sleep 2
        done
        echo ""

        # Run migrations in correct order
        run_sql -c "CREATE SCHEMA IF NOT EXISTS inventory;" 2>/dev/null
        docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile.ts" 2>&1 | tail -3
        docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile-inventory.ts" 2>&1 | tail -3

        echo -e "${GREEN}Update complete! Run './aegisx seed' if new seed data is needed.${NC}"
        docker compose ps
        ;;
    backup)
        mkdir -p backups
        BACKUP_FILE="backups/aegisx_$(date +%Y%m%d_%H%M%S).sql.gz"
        if has_local_postgres; then
            echo "Creating database backup..."
            docker compose exec -T postgres pg_dumpall -U "${POSTGRES_USER:-postgres}" | gzip > "$BACKUP_FILE"
            echo -e "${GREEN}Backup saved: $BACKUP_FILE${NC}"
        elif [ -n "${DATABASE_URL:-}" ]; then
            echo "Creating database backup (external database)..."
            docker compose exec -T api sh -c "pg_dump \"\$DATABASE_URL\" 2>/dev/null" | gzip > "$BACKUP_FILE"
            if [ -s "$BACKUP_FILE" ]; then
                echo -e "${GREEN}Backup saved: $BACKUP_FILE${NC}"
            else
                rm -f "$BACKUP_FILE"
                echo -e "${YELLOW}Backup failed. For external databases, use your provider's backup tool.${NC}"
            fi
        else
            echo -e "${RED}No database connection available for backup.${NC}"
        fi
        ;;
    restore)
        if [ -z "${2:-}" ]; then
            echo "Usage: ./aegisx restore <backup-file>"
            echo "Available backups:"
            ls -la backups/*.sql.gz 2>/dev/null || echo "  No backups found"
            exit 1
        fi
        if [ ! -f "$2" ]; then
            echo -e "${RED}File not found: $2${NC}"
            exit 1
        fi
        echo -e "${YELLOW}WARNING: This will overwrite the current database!${NC}"
        read -p "Continue? [y/N] " -n 1 -r < /dev/tty
        echo ""
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Restore cancelled."
            exit 0
        fi
        echo "Restoring from $2..."
        if has_local_postgres; then
            gunzip -c "$2" | docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}"
        elif [ -n "${DATABASE_URL:-}" ]; then
            gunzip -c "$2" | docker compose exec -T api sh -c "psql \"\$DATABASE_URL\""
        else
            echo -e "${RED}No database connection available for restore.${NC}"
            exit 1
        fi
        echo -e "${GREEN}Restore complete!${NC}"
        ;;
    health)
        echo -e "${BOLD}Service Health:${NC}"
        docker compose ps --format "table {{.Name}}\t{{.Status}}\t{{.Ports}}"
        echo ""
        # Check API readiness
        echo -e "${BOLD}API Readiness:${NC}"
        curl -s "http://localhost:${API_PORT:-3333}/api/health/ready" 2>/dev/null | python3 -m json.tool 2>/dev/null || \
            echo -e "  ${YELLOW}API not reachable${NC}"
        ;;
    verify)
        echo -e "${BOLD}=== Installation Verification ===${NC}"
        echo ""
        echo -e "${CYAN}Checking table counts...${NC}"
        run_sql -c "
SELECT '  companies' as table_name, count(*) as records from inventory.companies
UNION ALL SELECT '  drug_generics', count(*) from inventory.drug_generics
UNION ALL SELECT '  drugs', count(*) from inventory.drugs
UNION ALL SELECT '  locations', count(*) from inventory.locations
UNION ALL SELECT '  budget_types', count(*) from inventory.budget_types
UNION ALL SELECT '  dosage_forms', count(*) from inventory.dosage_forms
UNION ALL SELECT '  ed_groups', count(*) from inventory.ed_groups
ORDER BY table_name;
" 2>/dev/null || echo -e "  ${RED}Could not query database${NC}"
        ;;
    shell)
        case "${2:-api}" in
            api)
                docker compose exec api sh
                ;;
            postgres|db)
                if has_local_postgres; then
                    docker compose exec postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}"
                else
                    echo -e "${YELLOW}No local PostgreSQL. Use your external database client.${NC}"
                fi
                ;;
            redis)
                docker compose exec redis redis-cli -a "$REDIS_PASSWORD"
                ;;
            *)
                echo "Unknown service: $2"
                echo "Available: api, postgres, redis"
                ;;
        esac
        ;;
    config)
        echo -e "${BOLD}Current Configuration:${NC}"
        echo ""
        if [ -f .env ]; then
            grep -v "^#" .env | grep -v "^$" | grep -v "PASSWORD\|SECRET\|DATABASE_URL" | while read line; do
                echo "  $line"
            done
            echo ""
            echo -e "  ${YELLOW}(Secrets hidden. Edit .env to view/change)${NC}"
        fi
        ;;
    help|*)
        echo -e "${CYAN}"
        echo "  AegisX Platform Management CLI"
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
        echo "  migrate            Run database migrations (schema + main + inventory)"
        echo "  seed               Load reference data (main + inventory)"
        echo "  verify             Check database tables and record counts"
        echo ""
        echo "Maintenance Commands:"
        echo "  pull               Pull latest images"
        echo "  update             Backup + pull + restart + migrate"
        echo "  backup             Create database backup"
        echo "  restore <file>     Restore from backup"
        echo "  health             Check system health"
        echo ""
        echo "Debug Commands:"
        echo "  shell <service>    Open shell (api, postgres, redis)"
        echo "  config             Show current config (secrets hidden)"
        echo "  help               Show this help"
        ;;
esac
MGMT_SCRIPT

    chmod +x aegisx
    log_success "Management CLI created (./aegisx)"
}

# =============================================================================
# Login to GHCR (required for private repos)
# =============================================================================
login_ghcr() {
    if [ -z "$GITHUB_TOKEN" ]; then
        # Check if already logged in via lightweight manifest inspect (no full pull)
        if docker manifest inspect ghcr.io/aegisx-platform/aegisx-starter-api:latest > /dev/null 2>&1; then
            log_success "Already authenticated to ghcr.io"
            return 0
        fi

        if [ "$NON_INTERACTIVE" = true ]; then
            log_error "GitHub token is required for pulling images from private registry."
            echo "  Use: --github-token 'ghp_xxxx'"
            exit 1
        fi

        echo -e "${CYAN}GitHub Container Registry Authentication${NC}"
        echo -e "  Images are hosted on ghcr.io (private registry)."
        echo -e "  You need a GitHub token with ${BOLD}read:packages${NC} scope."
        echo -e "  Create one at: ${CYAN}https://github.com/settings/tokens${NC}"
        echo ""
        read -sp "  GitHub token: " GITHUB_TOKEN < /dev/tty
        echo ""

        if [ -z "$GITHUB_TOKEN" ]; then
            log_error "GitHub token is required."
            exit 1
        fi
    fi

    log_step "Logging in to GitHub Container Registry"
    if echo "$GITHUB_TOKEN" | docker login ghcr.io -u github --password-stdin; then
        log_success "Logged in to ghcr.io"
    else
        log_error "Failed to login to ghcr.io. Check your token has 'read:packages' scope."
        exit 1
    fi
}

# =============================================================================
# Pull Images
# =============================================================================
pull_images() {
    if [ "$SKIP_PULL" = true ]; then
        log_info "Skipping image pull (--skip-pull)"
        return
    fi

    if [ "$REGISTRY_SOURCE" = "dockerhub" ]; then
        log_step "Pulling Docker images from Docker Hub (dixonsatit)"
        log_info "Using Docker Hub registry (no GitHub token required)"
    else
        login_ghcr
        log_step "Pulling Docker images from GitHub Container Registry"
    fi

    cd "$INSTALL_DIR"
    docker compose pull

    log_success "All images pulled"
}

# =============================================================================
# Start Services
# =============================================================================
start_services() {
    if [ "$SKIP_START" = true ]; then
        log_info "Skipping service start (--skip-start)"
        return
    fi

    log_step "Starting services"

    cd "$INSTALL_DIR"
    docker compose up -d

    echo ""
    log_info "Waiting for services to be ready..."

    # Wait for PostgreSQL (full mode only)
    if [ "$INSTALL_MODE" = "full" ]; then
        echo -n "  PostgreSQL: "
        local pg_ready=false
        for i in $(seq 1 30); do
            if docker compose exec -T postgres pg_isready -U postgres &> /dev/null; then
                pg_ready=true
                break
            fi
            echo -n "."
            sleep 2
        done
        if [ "$pg_ready" = true ]; then
            echo -e "${GREEN}Ready${NC}"
        else
            echo -e "${YELLOW}Timeout (check logs)${NC}"
        fi

        # Wait for database to be created (POSTGRES_DB env takes a moment after pg_isready)
        echo -n "  Database: "
        local db_ready=false
        for i in $(seq 1 15); do
            if docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}" -c "SELECT 1" &> /dev/null; then
                db_ready=true
                break
            fi
            echo -n "."
            sleep 1
        done
        if [ "$db_ready" = true ]; then
            echo -e "${GREEN}Ready${NC}"
        else
            echo -e "${YELLOW}Timeout (check logs)${NC}"
        fi
    fi

    # Wait for Redis
    echo -n "  Redis: "
    local redis_ready=false
    for i in $(seq 1 15); do
        if docker compose exec -T -e REDISCLI_AUTH="$REDIS_PASSWORD" redis redis-cli ping &> /dev/null; then
            redis_ready=true
            break
        fi
        echo -n "."
        sleep 1
    done
    if [ "$redis_ready" = true ]; then
        echo -e "${GREEN}Ready${NC}"
    else
        echo -e "${YELLOW}Timeout (check logs)${NC}"
    fi

    # Wait for API
    echo -n "  API: "
    local api_ready=false
    for i in $(seq 1 60); do
        if curl -s "http://localhost:$API_PORT/api/health/live" &> /dev/null; then
            api_ready=true
            break
        fi
        echo -n "."
        sleep 2
    done
    if [ "$api_ready" = true ]; then
        echo -e "${GREEN}Ready${NC}"
    else
        echo -e "${YELLOW}Timeout (check: ./aegisx logs api)${NC}"
    fi

    # Wait for Web
    echo -n "  Web: "
    local web_ready=false
    for i in $(seq 1 30); do
        if curl -s "http://localhost:$WEB_PORT" &> /dev/null; then
            web_ready=true
            break
        fi
        echo -n "."
        sleep 1
    done
    if [ "$web_ready" = true ]; then
        echo -e "${GREEN}Ready${NC}"
    else
        echo -e "${YELLOW}Timeout (check: ./aegisx logs web)${NC}"
    fi

    # Wait for Nginx Proxy Manager
    echo -n "  Proxy Manager: "
    local npm_ready=false
    for i in $(seq 1 30); do
        if curl -s "http://localhost:81" &> /dev/null; then
            npm_ready=true
            break
        fi
        echo -n "."
        sleep 2
    done
    if [ "$npm_ready" = true ]; then
        echo -e "${GREEN}Ready${NC}"
    else
        echo -e "${YELLOW}Timeout (check: ./aegisx logs npm)${NC}"
    fi

    echo ""
}

# =============================================================================
# Run Database Migrations
# Order follows scripts/production-install.sh:
#   1. Create inventory schema (prerequisite for inventory migrations)
#   2. Main system migrations (public schema)
#   3. Inventory domain migrations (inventory schema)
#   4. Main system seeds (users, roles, RBAC, navigation, geography)
#   5. Inventory domain seeds (budget types, drug units, ED groups)
# =============================================================================
run_migrations() {
    if [ "$SKIP_START" = true ]; then
        log_info "Skipping migrations (--skip-start)"
        return
    fi

    log_step "Running database migrations & seeds"

    cd "$INSTALL_DIR"
    local migration_log="$INSTALL_DIR/logs/migration-$(date +%Y%m%d_%H%M%S).log"

    # Step 1: Create inventory schema
    # This MUST happen before inventory migrations.
    # In full mode, docker-entrypoint-initdb.d also creates it, but only on first container start.
    # Running it here ensures it exists on subsequent installs/updates too.
    echo -n "  [1/5] Create inventory schema: "
    if [ "$INSTALL_MODE" = "full" ]; then
        if docker compose exec -T postgres psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-aegisx_db}" \
            -c "CREATE SCHEMA IF NOT EXISTS inventory;" >> "$migration_log" 2>&1; then
            echo -e "${GREEN}Done${NC}"
        else
            echo -e "${YELLOW}Warning (see: $migration_log)${NC}"
        fi
    else
        # external-db mode: run SQL through the API container
        if docker compose exec -T api sh -c "psql \"\$DATABASE_URL\" -c 'CREATE SCHEMA IF NOT EXISTS inventory;'" >> "$migration_log" 2>&1; then
            echo -e "${GREEN}Done${NC}"
        else
            echo -e "${YELLOW}Warning - ensure inventory schema exists on your external database${NC}"
        fi
    fi

    # Step 2: Main system migrations (public schema - 77 migrations)
    # Creates: users, roles, permissions, sessions, settings, navigation, files, etc.
    echo -n "  [2/5] Main migrations (public): "
    if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile.ts" >> "$migration_log" 2>&1; then
        echo -e "${GREEN}Done${NC}"
    else
        echo -e "${RED}FAILED (see: $migration_log)${NC}"
        log_error "Main migrations failed. Check the log and fix before continuing."
        echo "  Log: $migration_log"
        return 1
    fi

    # Step 3: Inventory domain migrations (inventory schema - 279 migrations)
    # Creates: drugs, budgets, purchase_orders, locations, companies, etc.
    # Depends on: inventory schema (step 1) and some public schema tables (step 2)
    echo -n "  [3/5] Inventory migrations: "
    if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex migrate:latest --knexfile knexfile-inventory.ts" >> "$migration_log" 2>&1; then
        echo -e "${GREEN}Done${NC}"
    else
        echo -e "${RED}FAILED (see: $migration_log)${NC}"
        log_error "Inventory migrations failed. Check the log and fix before continuing."
        echo "  Log: $migration_log"
        return 1
    fi

    # Step 4: Main system seeds (19 seed files)
    # Seeds: admin user, roles, permissions, navigation menus, geography data, RBAC
    # NODE_ENV=production skips dev-only seeds (011_test_categories, 012_test_products)
    echo -n "  [4/5] Main seed data: "
    if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex seed:run --knexfile knexfile.ts" >> "$migration_log" 2>&1; then
        echo -e "${GREEN}Done${NC}"
    else
        echo -e "${YELLOW}Warning - seeds may already exist (see: $migration_log)${NC}"
    fi

    # Step 5: Inventory domain seeds (16 seed files)
    # Seeds: budget_types, dosage_forms, drug_units, ed_groups, purchase_methods, etc.
    # NOTE: drugs, drug_generics, companies are seeded EMPTY in production
    #       Hospitals import their own data via the Import feature
    echo -n "  [5/5] Inventory seed data: "
    if docker compose exec -T api sh -c "cd /app && NODE_ENV=production npx knex seed:run --knexfile knexfile-inventory.ts" >> "$migration_log" 2>&1; then
        echo -e "${GREEN}Done${NC}"
    else
        echo -e "${YELLOW}Warning - seeds may already exist (see: $migration_log)${NC}"
    fi

    echo ""
    log_success "Database setup complete (log: $migration_log)"
}

# =============================================================================
# Print Completion
# =============================================================================
print_completion() {
    echo ""
    echo -e "${GREEN}${BOLD}======================================================${NC}"
    echo -e "${GREEN}${BOLD}   AegisX Platform Installation Complete!${NC}"
    echo -e "${GREEN}${BOLD}======================================================${NC}"
    echo ""
    echo -e "${BOLD}Mode:${NC} $([ "$INSTALL_MODE" = "full" ] && echo "Full Stack" || echo "External Database")"
    echo ""
    echo -e "${BOLD}Access URLs:${NC}"
    echo -e "  Web Application:   ${CYAN}http://localhost:$WEB_PORT${NC}"
    echo -e "  API Server:        ${CYAN}http://localhost:$API_PORT${NC}"
    echo -e "  API Documentation: ${CYAN}http://localhost:$API_PORT/docs${NC}"
    echo -e "  Proxy Manager:     ${CYAN}http://localhost:81${NC}"
    echo ""
    echo -e "${BOLD}Default Credentials:${NC}"
    echo -e "  ${BOLD}App:${NC}"
    echo -e "    Email:    ${CYAN}admin@aegisx.local${NC}"
    echo -e "    Password: ${CYAN}Admin123!${NC}"
    echo -e "  ${BOLD}Nginx Proxy Manager:${NC}"
    echo -e "    Email:    ${CYAN}admin@example.com${NC}"
    echo -e "    Password: ${CYAN}changeme${NC}"
    echo ""
    echo -e "${BOLD}Management:${NC}"
    echo -e "  cd $INSTALL_DIR"
    echo -e "  ./aegisx start       # Start services"
    echo -e "  ./aegisx stop        # Stop services"
    echo -e "  ./aegisx status      # Check status"
    echo -e "  ./aegisx logs        # View all logs"
    echo -e "  ./aegisx logs api    # View API logs"
    echo -e "  ./aegisx backup      # Backup database"
    echo -e "  ./aegisx update      # Update to latest"
    echo -e "  ./aegisx verify      # Check DB tables"
    echo -e "  ./aegisx help        # All commands"
    echo ""
    echo -e "${BOLD}Configuration Files:${NC}"
    echo -e "  Environment:  ${CYAN}$INSTALL_DIR/.env${NC}"
    echo -e "  Compose:      ${CYAN}$INSTALL_DIR/docker-compose.yml${NC}"
    echo -e "  API Config:   ${CYAN}$INSTALL_DIR/config/api/${NC}"
    echo -e "  Web Config:   ${CYAN}$INSTALL_DIR/config/web/${NC}"
    echo -e "  SSL Certs:    ${CYAN}$INSTALL_DIR/config/nginx/ssl/${NC}"
    echo ""
    echo -e "${BOLD}Data Directories:${NC}"
    echo -e "  Backups:      ${CYAN}$INSTALL_DIR/backups/${NC}"
    echo -e "  Logs:         ${CYAN}$INSTALL_DIR/logs/${NC}"
    echo -e "  Uploads:      ${CYAN}$INSTALL_DIR/uploads/${NC}"
    echo ""
    echo -e "${YELLOW}Important:${NC}"
    echo -e "  1. Change the default admin password after first login"
    echo -e "  2. Change the Nginx Proxy Manager default password at http://localhost:81"
    echo -e "  3. Set up regular backups: ./aegisx backup"
    echo -e "  4. Configure CORS_ORIGINS in .env for your domain"
    echo -e "  5. Set up SSL via Nginx Proxy Manager for HTTPS"
    echo ""
}

# =============================================================================
# Main
# =============================================================================
main() {
    print_banner
    parse_args "$@"
    select_mode
    check_requirements
    prompt_config

    # Show summary
    echo ""
    echo -e "${BOLD}Installation Summary:${NC}"
    echo -e "  Mode:         $([ "$INSTALL_MODE" = "full" ] && echo "Full Stack (PostgreSQL + Redis)" || echo "External Database (Redis only)")"
    echo -e "  Directory:    $INSTALL_DIR"
    echo -e "  Image Tag:    $IMAGE_TAG"
    echo -e "  API Port:     $API_PORT"
    echo -e "  Web Port:     $WEB_PORT"
    echo ""

    if [ "$NON_INTERACTIVE" = false ]; then
        # Check if /dev/tty is available for interactive prompts
        if [ ! -e /dev/tty ]; then
            log_error "No terminal available for interactive prompts."
            log_error "Use: --non-interactive flag"
            exit 1
        fi
        local reply=""
        read -p "Proceed with installation? [Y/n] " -n 1 -r reply < /dev/tty || true
        echo ""
        if [[ ! "${reply}" =~ ^[Yy]?$ ]]; then
            log_info "Installation cancelled."
            exit 0
        fi
    fi

    echo ""
    create_directory_structure
    create_db_init_scripts
    generate_compose_file
    create_env_file
    create_management_script
    pull_images
    start_services
    run_migrations
    print_completion
}

main "$@"
