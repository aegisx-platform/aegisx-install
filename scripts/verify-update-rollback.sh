#!/usr/bin/env bash
# =============================================================================
# Integration test for `aegisx update` auto-rollback (mock-docker harness)
#
# Runs the REAL `aegisx` management CLI (extracted from deploy/install.sh's
# MGMT_SCRIPT heredoc) but replaces `docker`, `curl` and `sleep` with
# programmable mocks, so the rollback control-flow is exercised end-to-end
# WITHOUT a real docker stack — no images, no ports, nothing to collide with a
# running dev server. Proves: failure-stage routing, exit codes (0 / 1 / 2),
# image re-tag rollback, honest recreate reporting, --no-rollback.
#
# It does NOT cover real docker behaviour (run --rm vs exec under a crash-loop,
# actual pg/network) — that still needs a real stack.
#
# Usage:  deploy/scripts/test-update-rollback.sh [path-to-deploy/install.sh]
# =============================================================================
set -uo pipefail

INSTALL_SH="${1:-$(cd "$(dirname "$0")/.." && pwd)/install.sh}"
[ -f "$INSTALL_SH" ] || { echo "install.sh not found: $INSTALL_SH" >&2; exit 1; }

ROOT="$(mktemp -d)"
trap 'rm -rf "$ROOT"' EXIT
WORK="$ROOT/work"
MOCKBIN="$ROOT/mockbin"
mkdir -p "$WORK" "$MOCKBIN"

# --- extract the aegisx wrapper exactly like .github/workflows/release.yml ----
sed -n "/cat > aegisx << 'MGMT_SCRIPT'/,/^MGMT_SCRIPT\$/p" "$INSTALL_SH" \
  | sed '1d;$d' > "$WORK/aegisx"
chmod +x "$WORK/aegisx"
head -1 "$WORK/aegisx" | grep -q '^#!/bin/bash' || { echo "extracted CLI malformed" >&2; exit 1; }

cat > "$WORK/.env" <<'ENV'
POSTGRES_USER=postgres
POSTGRES_DB=aegisx_db
API_PORT=3333
IMAGE_TAG=latest
ENV

# --- mock `docker` (behaviour driven by MOCK_* env per scenario) --------------
# A marker file ($STATE/pulled) flips image-id / version answers post-pull.
cat > "$MOCKBIN/docker" <<'DOCKER'
#!/usr/bin/env bash
args="$*"
STATE="${MOCK_STATE_DIR:?}"
echo "[docker] $args" >> "$STATE/calls.log"
case "$args" in
  info) exit 0 ;;
  "compose ls"|"compose version"*) exit 0 ;;
  "compose ps --services"*) printf 'postgres\napi\nweb\n'; exit 0 ;;
  "compose images -q api") [ -f "$STATE/pulled" ] && echo "sha256:newapi" || echo "sha256:oldapi"; exit 0 ;;
  "compose images -q web") [ -f "$STATE/pulled" ] && echo "sha256:newweb" || echo "sha256:oldweb"; exit 0 ;;
  "compose images") echo "REPOSITORY TAG IMAGE"; exit 0 ;;
  "compose pull") touch "$STATE/pulled"; exit "${MOCK_PULL_RC:-0}" ;;
  "compose up -d") exit "${MOCK_UP_RC:-0}" ;;
  "compose up -d --force-recreate api web") echo "recreate(api,web)"; exit "${MOCK_RECREATE_RC:-0}" ;;
  "compose stop api web") exit 0 ;;
  "compose ps") echo "NAME   STATUS"; exit 0 ;;
  "tag "*) echo "tagged: $args"; exit 0 ;;
esac
case "$args" in
  *"run --rm api"*"migrate:latest"*)  echo "migrate output line"; exit "${MOCK_MIGRATE_RC:-0}" ;;
  *"exec -T api"*"seed:run"*)         exit "${MOCK_SEED_RC:-0}" ;;
  *"exec -T api"*"node -p"*)          [ -f "$STATE/pulled" ] && echo "1.79.0" || echo "1.78.0"; exit 0 ;;
  *"exec -T postgres"*"pg_dumpall"*)  [ "${MOCK_BACKUP_RC:-0}" != 0 ] && exit "${MOCK_BACKUP_RC}"; echo "-- dump"; exit 0 ;;
  *"exec -T postgres"*|*"exec postgres"*) exit 0 ;;
esac
echo "[docker] UNHANDLED: $args" >> "$STATE/calls.log"
exit 0
DOCKER
chmod +x "$MOCKBIN/docker"

# --- mock `curl` (health + self-update) ---------------------------------------
cat > "$MOCKBIN/curl" <<'CURL'
#!/usr/bin/env bash
for a in "$@"; do
  case "$a" in
    *"/api/health/live") exit "${MOCK_HEALTH_RC:-0}" ;;
  esac
done
exit 1   # self-update download → fail so the wrapper keeps the local CLI
CURL
chmod +x "$MOCKBIN/curl"

# --- mock `sleep` (instant) so health/readiness loops don't burn real seconds -
printf '#!/usr/bin/env bash\nexit 0\n' > "$MOCKBIN/sleep"
chmod +x "$MOCKBIN/sleep"

# --- scenario runner ----------------------------------------------------------
PASS=0; FAIL=0
run() {
  # run <name> <expected_rc> <must_regex|-> <must_NOT_regex|-> [VAR=val ...]
  local name="$1" exp_rc="$2" must="$3" mustnot="$4"; shift 4
  local state; state="$(mktemp -d)"
  local out rc
  out=$(cd "$WORK" && env -i \
        PATH="$MOCKBIN:/usr/bin:/bin:/usr/sbin:/sbin" \
        HOME="$WORK" MOCK_STATE_DIR="$state" AEGISX_SELF_UPDATED=1 \
        "$@" \
        bash ./aegisx update ${SCN_ARGS:-} 2>&1)
  rc=$?
  local ok=1
  [ "$rc" = "$exp_rc" ] || ok=0
  if [ "$must" != "-" ];    then grep -qE "$must"    <<<"$out" || ok=0; fi
  if [ "$mustnot" != "-" ]; then grep -qE "$mustnot" <<<"$out" && ok=0; fi
  if [ "$ok" = 1 ]; then
    PASS=$((PASS+1)); printf "  PASS  %-44s rc=%s\n" "$name" "$rc"
  else
    FAIL=$((FAIL+1)); printf "  FAIL  %-44s rc=%s (exp %s)\n" "$name" "$rc" "$exp_rc"
    echo "        --- output (tail) ---"; sed 's/^/        /' <<<"$out" | tail -25
  fi
  rm -rf "$state"
}

echo "=== aegisx update — auto-rollback integration (mock docker) ==="

SCN_ARGS="" run "happy path (migrate ok, health ok)" 0 \
  "App version: 1.78.0 .* 1.79.0|Update complete" "Rolling back" \
  MOCK_MIGRATE_RC=0 MOCK_HEALTH_RC=0

SCN_ARGS="" run "migrate fail -> rollback + exit 1" 1 \
  "Rolling back to previous images" "Update complete" \
  MOCK_MIGRATE_RC=1 MOCK_HEALTH_RC=0

SCN_ARGS="" run "health fail -> exit 2 (no complete)" 2 \
  "API did not respond|NOT healthy" "Update complete" \
  MOCK_MIGRATE_RC=0 MOCK_HEALTH_RC=7

SCN_ARGS="" run "rollback recreate fails -> honest error" 1 \
  "Rollback recreate failed" "Rolled back to previous images" \
  MOCK_MIGRATE_RC=1 MOCK_RECREATE_RC=1

SCN_ARGS="--no-rollback" run "--no-rollback + migrate fail = no rollback" 1 \
  "Migrations failed" "Rolling back to previous images" \
  MOCK_MIGRATE_RC=1 MOCK_HEALTH_RC=0

SCN_ARGS="" run "pull fail -> exit 1, no rollback" 1 \
  "Image pull failed" "Rolling back to previous images" \
  MOCK_PULL_RC=1

SCN_ARGS="" run "container recreate fail -> rollback" 1 \
  "Container recreate failed|Rolling back" "Update complete" \
  MOCK_UP_RC=1

echo ""
echo "=== result: $PASS passed, $FAIL failed ==="
[ "$FAIL" = 0 ]
