#!/usr/bin/env bash
# Æ Single Trigger Auto-Setup — Dual Authority Bootstrap
# Numeral: 137451921129154222
# Covers: Chromebook Penguin + Samsung A15 Termux + USB Blueboy + Cloud Home
# Run once per device: bash ae-bootstrap.sh

set -euo pipefail

NUMERAL="137451921129154222"
AE_ROOT="/Æ"
ENCLAVE_REPO="machackabook/ENCLAVE-ADAM-REUNITED"

echo "=== Æ Bootstrap · Numeral $NUMERAL · $(date -Iseconds) ==="

# Detect environment
if [[ -d /data/data/com.termux ]]; then
  ENV="termux-a15"
  HOME_BASE="$HOME"
elif grep -qi chromebook /etc/os-release 2>/dev/null || [[ -d /mnt/chromeos ]]; then
  ENV="chromebook-penguin"
  HOME_BASE="$HOME"
else
  ENV="generic-linux"
  HOME_BASE="$HOME"
fi
echo "[Æ] Detected environment: $ENV"

# 1. Create Æ root
sudo mkdir -p "${AE_ROOT}"/{home/projects,storage/usb,hive,sentinel,projects} 2>/dev/null || mkdir -p "${AE_ROOT}"/{home/projects,storage/usb,hive,sentinel,projects}
sudo chown -R "$(whoami)" "${AE_ROOT}" 2>/dev/null || true

# 2. Pull Enclave (single source of truth)
if [[ ! -d "$HOME_BASE/ENCLAVE-ADAM-REUNITED" ]]; then
  if command -v gh &>/dev/null; then
    gh repo clone "$ENCLAVE_REPO" "$HOME_BASE/ENCLAVE-ADAM-REUNITED" || true
  else
    git clone "https://github.com/${ENCLAVE_REPO}.git" "$HOME_BASE/ENCLAVE-ADAM-REUNITED" || true
  fi
else
  (cd "$HOME_BASE/ENCLAVE-ADAM-REUNITED" && git pull origin main) || true
fi

# 3. Install skill / workflow scripts
SKILL_SRC="$HOME_BASE/ENCLAVE-ADAM-REUNITED/skills/hamiltonian-incursion"
AE_SRC="$HOME_BASE/ENCLAVE-ADAM-REUNITED/ae-chromebook"
if [[ -d "$SKILL_SRC" ]]; then
  mkdir -p "${AE_ROOT}/sentinel" "${AE_ROOT}/scripts"
  cp -r "$SKILL_SRC/scripts/"* "${AE_ROOT}/scripts/" 2>/dev/null || true
  cp -r "$SKILL_SRC/scans" "${AE_ROOT}/" 2>/dev/null || true
fi
if [[ -d "$AE_SRC" ]]; then
  cp -r "$AE_SRC/scripts/"* "${AE_ROOT}/scripts/" 2>/dev/null || true
fi
chmod +x "${AE_ROOT}/scripts/"*.sh 2>/dev/null || true

# 4. USB Blueboy bind (Chromebook / Linux)
if [[ -d /mnt/removable ]]; then
  FIRST=$(find /mnt/removable -maxdepth 1 -mindepth 1 -type d 2>/dev/null | head -1 || true)
  if [[ -n "$FIRST" ]]; then
    sudo mount --bind "$FIRST" "${AE_ROOT}/storage/usb" 2>/dev/null || true
    echo "[Æ] USB bound: $FIRST → ${AE_ROOT}/storage/usb"
  fi
fi

# 5. Space-reclaim sentinel cron
if [[ -f "${AE_ROOT}/scripts/ae-sentinel.sh" ]]; then
  cp "${AE_ROOT}/scripts/ae-sentinel.sh" "${AE_ROOT}/sentinel/" 2>/dev/null || true
  (crontab -l 2>/dev/null | grep -v ae-sentinel; echo "*/30 * * * * ${AE_ROOT}/sentinel/ae-sentinel.sh") | crontab - 2>/dev/null || true
fi

# 6. Hamiltonian sentinel (Termux style)
if [[ "$ENV" == "termux-a15" && -f "${AE_ROOT}/scripts/continuity-sentinel.sh" ]]; then
  mkdir -p "$HOME/bin"
  cp "${AE_ROOT}/scripts/continuity-sentinel.sh" "$HOME/bin/" 2>/dev/null || true
  chmod +x "$HOME/bin/continuity-sentinel.sh"
  (crontab -l 2>/dev/null | grep -v continuity-sentinel; echo "*/5 * * * * $HOME/bin/continuity-sentinel.sh") | crontab - 2>/dev/null || true
fi

# 7. Fiscal process marker (OpportunityScanner lineage)
mkdir -p "${AE_ROOT}/hive/fiscal"
echo "{\"numeral\":\"$NUMERAL\",\"status\":\"initiated\",\"ts\":\"$(date -Iseconds)\",\"env\":\"$ENV\"}" > "${AE_ROOT}/hive/fiscal/process-started.json"
echo "[Æ] Fiscal process marker written."

echo "=== Æ Bootstrap complete ==="
echo "Root: ${AE_ROOT}"
echo "USB:  ${AE_ROOT}/storage/usb"
echo "Hive: ${AE_ROOT}/hive"
echo "Next: run fiscal agents or open ${AE_ROOT}/home/projects"
