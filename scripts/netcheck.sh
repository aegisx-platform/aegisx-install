#!/bin/bash
# ==============================================================================
# AegisX - Network / DNS Diagnostic
# Version: 1.0.0
#
# วินิจฉัยสาเหตุที่ `docker compose pull` ล้มเหลว แล้วแยกให้ชัดว่าเป็น
#   - DNS ไม่ทำงาน          (แก้ที่ตัวเครื่อง / ต้องแจ้งทีม network)
#   - เน็ตขาออกถูกบล็อค      (ต้องแจ้งทีม network)
#   - registry ล่ม           (รอ upstream)
#
# Usage:
#   ./netcheck.sh                 วินิจฉัย (read-only ไม่แก้ไขอะไร)
#   ./netcheck.sh --scan          + สแกนหา DNS server ในวง /24
#   ./netcheck.sh --report        พิมพ์รายงานสำหรับส่งทีม network
#
# หมายเหตุ: สคริปต์นี้ READ-ONLY ทั้งหมด ปลอดภัยกับเครื่อง production
#           ไม่แก้ config ไม่ restart service ไม่แตะ container
#
# รองรับ: Linux (systemd-resolved / resolv.conf) และ macOS
# ==============================================================================

# ตั้งใจไม่ใช้ `-e` เพราะสคริปต์วินิจฉัยต้องรันต่อได้แม้คำสั่งย่อยจะ fail
set -uo pipefail

VERSION="1.0.0"
SCAN=0
REPORT=0

for a in "$@"; do
  case "$a" in
    --scan)    SCAN=1 ;;
    --report)  REPORT=1 ;;
    -h|--help) sed -n '2,18p' "$0" | sed 's/^# \?//'; exit 0 ;;
    *) echo "ไม่รู้จัก option: $a  (ดู --help)" >&2; exit 1 ;;
  esac
done

if [[ -t 1 ]]; then
  R=$'\e[31m'; G=$'\e[32m'; Y=$'\e[33m'; C=$'\e[36m'; W=$'\e[1m'; N=$'\e[0m'
else
  R=""; G=""; Y=""; C=""; W=""; N=""
fi
ok()   { echo "  ${G}[ OK ]${N} $*"; }
bad()  { echo "  ${R}[FAIL]${N} $*"; }
warn() { echo "  ${Y}[WARN]${N} $*"; }
info() { echo "         $*"; }
hdr()  { echo; echo "${C}${W}=== $* ===${N}"; }

# ------------------------------------------------------------------------------
# portability: `timeout` ไม่มีบน macOS และบาง container image
# ถ้าไม่มี ให้พึ่ง timeout ในตัวของ dig/curl แทน แล้ว "ไม่" รายงานผลเป็น FAIL
# (บั๊กเดิม: ไม่มี timeout -> test ทุกตัว fail -> ชี้ปัญหาผิดทาง)
# ------------------------------------------------------------------------------
TO=""
command -v timeout  >/dev/null 2>&1 && TO=timeout
[[ -z $TO ]] && command -v gtimeout >/dev/null 2>&1 && TO=gtimeout
_to() { local s=$1; shift; if [[ -n $TO ]]; then "$TO" "$s" "$@"; else "$@"; fi; }

for bin in dig curl; do
  command -v "$bin" >/dev/null 2>&1 || {
    echo "ต้องมีคำสั่ง '$bin' ก่อน (Ubuntu: apt install dnsutils curl)" >&2; exit 1; }
done

# ------------------------------------------------------------------------------
OS=$(uname -s)
GW=""; SRC=""; IFACE=""
detect_net() {
  if command -v ip >/dev/null 2>&1; then
    GW=$(ip route 2>/dev/null | awk '/^default/{print $3; exit}')
    IFACE=$(ip route 2>/dev/null | awk '/^default/{for(i=1;i<=NF;i++) if($i=="dev") {print $(i+1); exit}}')
    SRC=$(ip -4 addr show "${IFACE:-lo}" 2>/dev/null | awk '/inet /{sub(/\/.*/,"",$2); print $2; exit}')
  else
    GW=$(route -n get default 2>/dev/null | awk '/gateway:/{print $2; exit}')
    IFACE=$(route -n get default 2>/dev/null | awk '/interface:/{print $2; exit}')
    [[ -n $IFACE ]] && SRC=$(ipconfig getifaddr "$IFACE" 2>/dev/null)
  fi
}

current_dns() {
  local out=""
  if command -v resolvectl >/dev/null 2>&1; then
    out=$(resolvectl status 2>/dev/null \
      | awk '/DNS Servers:/{for(i=3;i<=NF;i++) print $i}')
  fi
  [[ -z $out ]] && command -v scutil >/dev/null 2>&1 && \
    out=$(scutil --dns 2>/dev/null | awk '/nameserver\[[0-9]+\]/{print $3}')
  [[ -z $out ]] && out=$(awk '/^nameserver/{print $2}' /etc/resolv.conf 2>/dev/null)
  printf '%s\n' "$out" | grep -E '^[0-9]{1,3}(\.[0-9]{1,3}){3}$' | sort -u
}

# dig มี timeout ในตัว (+time/+tries) จึงไม่ต้องพึ่งคำสั่ง timeout
test_dns() {
  dig +short +tries=1 +time=2 "@$1" google.com A 2>/dev/null \
    | grep -qE '^[0-9]{1,3}(\.[0-9]{1,3}){3}$'
}

dns_error() {
  local e
  e=$(dig +tries=1 +time=2 "@$1" google.com 2>&1 | grep -m1 'communications error')
  case "$e" in
    *refused*) echo "refused" ;;
    *)         echo "timeout" ;;
  esac
}

# คืน 0=เปิด 1=ปิด 2=ตรวจไม่ได้
tcp_open() {
  if [[ -n $TO ]]; then
    _to 3 bash -c "cat </dev/null >/dev/tcp/$1/$2" 2>/dev/null && return 0 || return 1
  elif command -v nc >/dev/null 2>&1; then
    nc -z -w3 "$1" "$2" >/dev/null 2>&1 && return 0 || return 1
  fi
  return 2
}

doh_resolve() {
  curl -s --max-time 8 -H 'accept: application/dns-json' \
    "https://1.1.1.1/dns-query?name=$1&type=A" 2>/dev/null \
    | grep -oE '"data":"[0-9]{1,3}(\.[0-9]{1,3}){3}"' | head -1 | cut -d'"' -f4
}

# resolve ชื่อโฮสต์แล้ว echo IP ออกมา / คืน 1 ถ้าไม่ได้
# ไล่ตามลำดับ: system resolver -> /etc/hosts -> dig
#   - getent มีเฉพาะ Linux
#   - `host` บน macOS คืน exit 1 ทั้งที่ resolve ได้ จึงไม่ใช้
#   - dig ข้าม /etc/hosts จึงต้องเช็ค /etc/hosts เองด้วย (รองรับกรณีใช้ hosts เป็น stopgap)
resolve_host() {
  local h=$1 ip=""
  command -v getent >/dev/null 2>&1 && \
    ip=$(getent hosts "$h" 2>/dev/null | awk '{print $1; exit}')
  [[ -z $ip ]] && ip=$(grep -E "[[:space:]]${h}([[:space:]]|\$)" /etc/hosts 2>/dev/null \
                        | grep -v '^#' | awk '{print $1; exit}')
  [[ -z $ip ]] && ip=$(dig +short +tries=1 +time=2 "$h" A 2>/dev/null \
                        | grep -m1 -E '^[0-9]{1,3}(\.[0-9]{1,3}){3}$')
  [[ -n $ip ]] || return 1
  echo "$ip"
}

# ==============================================================================
detect_net
CUR_DNS=$(current_dns)

hdr "1. สถานะเครื่อง"
echo "  hostname : $(hostname)"
echo "  OS       : $OS"
echo "  IP       : ${SRC:-<ตรวจไม่พบ>}   (iface: ${IFACE:-?})"
echo "  gateway  : ${GW:-<ตรวจไม่พบ>}"
if [[ -n $CUR_DNS ]]; then
  echo "  DNS      : $(echo "$CUR_DNS" | tr '\n' ' ')"
else
  echo "  DNS      : ${R}<ไม่ได้ตั้งค่าไว้เลย>${N}"
fi
[[ -z $TO ]] && info "(ไม่มีคำสั่ง timeout บนเครื่องนี้ — ใช้ timeout ในตัวของ dig/curl แทน)"

if [[ $OS == Linux ]] && ! grep -qE "[[:space:]]$(hostname)([[:space:]]|\$)" /etc/hosts 2>/dev/null; then
  warn "/etc/hosts ไม่มี entry ของ '$(hostname)' — sudo จะขึ้น 'unable to resolve host'"
  info "แก้: echo \"127.0.1.1 $(hostname)\" | sudo tee -a /etc/hosts"
fi

hdr "2. เน็ตขาออก (ทดสอบด้วย IP ตรง ไม่เกี่ยว DNS)"
EGRESS_ICMP=0; EGRESS_443=0
if ping -c2 -W2 8.8.8.8 >/dev/null 2>&1 || ping -c2 -t2 8.8.8.8 >/dev/null 2>&1; then
  ok "ICMP ออกได้ (ping 8.8.8.8)"; EGRESS_ICMP=1
else
  bad "ping 8.8.8.8 ไม่ผ่าน"
fi
if curl -sI --max-time 6 https://1.1.1.1 >/dev/null 2>&1; then
  ok "TCP/443 ออกอินเทอร์เน็ตได้"; EGRESS_443=1
else
  bad "TCP/443 ออกไม่ได้ — น่าจะต้องผ่าน proxy"
fi

hdr "3. DNS ที่ตั้งไว้ใช้งานได้จริงไหม"
WORKING=""; REFUSED=""; TIMEDOUT=""
if [[ -z $CUR_DNS ]]; then
  bad "ไม่มี nameserver ตั้งไว้เลย"
else
  while read -r ip; do
    [[ -z $ip ]] && continue
    if test_dns "$ip"; then
      ok "$ip ตอบ DNS ได้"; WORKING+="$ip "
    elif [[ $(dns_error "$ip") == refused ]]; then
      bad "$ip — connection refused (ไม่มี resolver listen บน :53 → ไม่ใช่ DNS server)"
      REFUSED+="$ip "
    else
      bad "$ip — timeout (ถูก firewall drop)"
      TIMEDOUT+="$ip "
    fi
  done <<<"$CUR_DNS"
fi
[[ -z ${WORKING// } ]] && warn "ไม่มี DNS ที่ตั้งไว้ตัวไหนใช้งานได้เลย"

hdr "4. ค้นหา DNS server ที่ใช้ได้ในวง LAN"
FOUND=""
SUBNET=$(echo "${SRC:-}" | cut -d. -f1-3)
if [[ -z $SUBNET || $SUBNET == "$SRC" ]]; then
  warn "ตรวจ subnet ไม่ได้ — ข้าม"
elif [[ $SCAN -eq 1 ]]; then
  info "สแกน ${SUBNET}.1-254 (อาจถูกบันทึกใน log/IDS ของทีม network)"
  TMPF=$(mktemp)
  for i in $(seq 1 254); do
    ( test_dns "${SUBNET}.$i" && echo "${SUBNET}.$i" >>"$TMPF" ) &
    (( i % 64 == 0 )) && wait
  done; wait
  FOUND=$(sort -t. -k4 -n "$TMPF" 2>/dev/null | tr '\n' ' '); rm -f "$TMPF"
else
  info "ลองเฉพาะ IP ที่พบบ่อย (ใส่ --scan เพื่อสแกนทั้ง /24)"
  for i in 1 2 10 11 200 253 254; do
    test_dns "${SUBNET}.$i" && FOUND+="${SUBNET}.$i "
  done
fi
if [[ -n ${FOUND// } ]]; then
  for ip in $FOUND; do ok "พบ DNS ที่ใช้ได้: $ip"; done
elif [[ -n ${WORKING// } ]]; then
  # DNS ที่ตั้งไว้ใช้ได้อยู่แล้ว ขั้นนี้จึงไม่ใช่ความผิดพลาด
  info "ไม่พบตัวอื่นในวง — แต่ DNS ที่ตั้งไว้ใช้งานได้อยู่แล้ว จึงไม่เป็นปัญหา"
else
  bad "ไม่พบ DNS server ที่ใช้ได้ในวง"
fi

hdr "5. ทางเลี่ยงเมื่อ UDP/53 ถูกบล็อค"
DOT=0; DOH=0
tcp_open 1.1.1.1 853; rc=$?
case $rc in
  0) ok  "TCP/853 เปิด — ใช้ DNS-over-TLS ได้"; DOT=1 ;;
  1) bad "TCP/853 ถูกบล็อค" ;;
  2) warn "ตรวจ TCP/853 ไม่ได้ (ไม่มีทั้ง timeout และ nc)" ;;
esac
if [[ $EGRESS_443 -eq 1 ]]; then
  IP=$(doh_resolve registry-1.docker.io)
  if [[ -n $IP ]]; then ok "DNS-over-HTTPS ใช้ได้ (registry-1.docker.io → $IP)"; DOH=1
  else bad "DNS-over-HTTPS ไม่ตอบ"; fi
fi

hdr "6. ทดสอบ registry ที่ deployment นี้ใช้จริง"
ENVF=""
for f in "$(dirname "$0")/../.env" "$(dirname "$0")/../../.env" ./.env; do
  [[ -f $f ]] && { ENVF=$f; break; }
done
REGS="registry-1.docker.io ghcr.io"
if [[ -n $ENVF ]]; then
  info "อ่านจาก $ENVF"
  EXTRA=$(grep -hE '^[A-Z_]*IMAGE=' "$ENVF" 2>/dev/null | cut -d= -f2- \
          | sed 's#^\([^/]*\.[^/]*\)/.*#\1#' | grep '\.' | sort -u | tr '\n' ' ')
  REGS+=" $EXTRA"
fi
REG_FAIL=0
for reg in $(echo "$REGS" | tr ' ' '\n' | sort -u); do
  [[ -z $reg ]] && continue
  if rip=$(resolve_host "$reg"); then
    ok "resolve $reg ได้ → $rip"
  else
    bad "resolve $reg ไม่ได้"; REG_FAIL=1
  fi
done

# ==============================================================================
hdr "7. สรุป"
CAUSE=""
if [[ -n ${WORKING// } ]]; then
  echo "  ${G}${W}DNS ใช้งานได้ปกติ${N} — ถ้า pull ยังไม่ผ่าน ให้ดูที่ proxy/firewall ระดับ TCP/443 หรือ registry เอง"
  CAUSE="ok"
elif [[ $EGRESS_443 -eq 1 || $EGRESS_ICMP -eq 1 ]]; then
  echo "  ${R}${W}ปัญหา: DNS ใช้งานไม่ได้ ทั้งที่เน็ตขาออกปกติ${N}"
  [[ -n ${REFUSED// } ]]  && info "• ${REFUSED}→ ตอบ refused = ไม่ใช่ DNS server (มักเกิดจากเอา IP gateway มาตั้งเป็น nameserver)"
  [[ -n ${TIMEDOUT// } ]] && info "• ${TIMEDOUT}→ timeout = UDP/53 ขาออกถูก firewall บล็อค"
  info "ต้องแจ้งทีม network — รันด้วย --report เพื่อได้ข้อความสำหรับส่ง"
  CAUSE="dns"
else
  echo "  ${R}${W}ปัญหา: เครื่องออกอินเทอร์เน็ตไม่ได้เลย${N}"
  info "ต้องแจ้งทีม network เรื่อง egress/proxy"
  CAUSE="egress"
fi
[[ $DOT -eq 1 && $CAUSE == dns ]] && info "ทางเลี่ยงชั่วคราว: TCP/853 เปิดอยู่ ใช้ DNS-over-TLS ได้"

# ==============================================================================
if [[ $REPORT -eq 1 ]]; then
  if [[ $CAUSE == ok ]]; then
    echo
    echo "────────────────────────────────────────────────────────────────"
    echo "ไม่มีปัญหา DNS/เน็ตที่ต้องแจ้งทีม network — ไม่ได้สร้างรายงาน"
    echo "ถ้า pull ยังไม่ผ่าน ปัญหาอยู่ที่ชั้นอื่น (proxy, credential, registry)"
    echo "────────────────────────────────────────────────────────────────"
  else
    # ประกอบบรรทัดผลทดสอบก่อน กัน heredoc เว้นบรรทัดว่างจาก loop ที่ไม่มีข้อมูล
    TESTS="  - ping 8.8.8.8          : $([[ $EGRESS_ICMP -eq 1 ]] && echo 'สำเร็จ (ICMP ขาออกปกติ)' || echo 'ไม่สำเร็จ')
  - curl https://1.1.1.1  : $([[ $EGRESS_443 -eq 1 ]] && echo 'สำเร็จ (TCP/443 ขาออกปกติ)' || echo 'ไม่สำเร็จ')"
    for ip in $REFUSED;  do TESTS+="
  - dig @$ip google.com : connection refused (ไม่มี DNS service บน port 53)"; done
    for ip in $TIMEDOUT; do TESTS+="
  - dig @$ip google.com : timeout (UDP/53 ขาออกถูกบล็อค)"; done
    for ip in $WORKING;  do TESTS+="
  - dig @$ip google.com : สำเร็จ"; done

    if [[ $CAUSE == dns ]]; then
      SUBJ="ขอความอนุเคราะห์เปิด DNS ให้เครื่อง $(hostname)"
      SYMPTOM="เครื่อง resolve ชื่อโดเมนไม่ได้ ทำให้ดึง container image ไม่สำเร็จ
       และไม่สามารถอัปเดตระบบได้"
      CONCLUSION="เครื่องออกอินเทอร์เน็ตได้ตามปกติ ปัญหาอยู่ที่ DNS เท่านั้น"
      ASK="  1. แจ้ง IP ของ DNS server ภายในที่เครื่องในวง ${SUBNET:-<subnet>}.0/24 ควรใช้
  2. เปิด UDP/53 และ TCP/53 จาก ${SRC:-เครื่องนี้} ไปยัง DNS server ดังกล่าว
  3. หากไม่มี DNS ภายใน ขอทางเลือกอย่างใดอย่างหนึ่ง
     - เปิด UDP/53 ออก public resolver (1.1.1.1 / 8.8.8.8) หรือ
     - เปิด TCP/853 เพื่อใช้ DNS over TLS"
    else
      SUBJ="ขอความอนุเคราะห์เปิดการเชื่อมต่อขาออกให้เครื่อง $(hostname)"
      SYMPTOM="เครื่องเชื่อมต่อออกอินเทอร์เน็ตไม่ได้เลย ทำให้ดึง container image
       ไม่สำเร็จ และไม่สามารถอัปเดตระบบได้"
      CONCLUSION="เครื่องถูกบล็อคการเชื่อมต่อขาออก ไม่ใช่ปัญหา DNS อย่างเดียว"
      ASK="  1. เปิด TCP/443 ขาออกจาก ${SRC:-เครื่องนี้} ไปยัง registry ที่ใช้งาน
     (registry-1.docker.io, ghcr.io และ CDN ที่เกี่ยวข้อง)
  2. หากต้องผ่าน proxy ขอ URL และ credential ของ proxy
  3. แจ้ง IP ของ DNS server ภายในที่ควรใช้"
    fi

cat <<EOF

────────────────────────────────────────────────────────────────
ข้อความสำหรับส่งทีม network (copy ได้เลย)
────────────────────────────────────────────────────────────────

เรื่อง: $SUBJ

เครื่อง   : $(hostname)
IP        : ${SRC:-ไม่ทราบ} (iface ${IFACE:-?})
Gateway   : ${GW:-ไม่ทราบ}
DNS ที่ตั้ง: $(echo "$CUR_DNS" | tr '\n' ' ')
ตรวจเมื่อ : $(date '+%Y-%m-%d %H:%M:%S %z')

อาการ: $SYMPTOM

ผลการทดสอบ:
$TESTS

สรุป: $CONCLUSION

ขอความอนุเคราะห์:
$ASK

ผลกระทบ: ระบบยังให้บริการตามปกติด้วยเวอร์ชันเดิม ไม่มี downtime
         แต่ไม่สามารถอัปเดตได้จนกว่าจะแก้ไข

(generated by netcheck.sh v$VERSION)
────────────────────────────────────────────────────────────────
EOF
  fi
fi

case "$CAUSE" in
  ok) exit 0 ;;
  *)  exit 1 ;;
esac
