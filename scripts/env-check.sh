#!/usr/bin/env bash
# Continuity env check — ENCLAVE-ADAM-REUNITED
# Numeral 137451921129154222
set -euo pipefail
echo "[env-check] surface=ENCLAVE-ADAM-REUNITED utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "[env-check] pwd=$(pwd) user=$(id -un)"
echo "[env-check] git=$(git rev-parse --short HEAD 2>/dev/null || echo none)"
REQUIRED=(README.md SECURITY.md docs .github/workflows/cascade.yml scripts/env-check.sh)
fail=0
for p in "${REQUIRED[@]}"; do
  if [ ! -e "$p" ]; then
    echo "[env-check] MISSING $p" >&2
    fail=1
  fi
done
# Directory mesh hints (do not fail CI if absent — device/SD/Drive are local)
for hint in "$HOME/storage" /sdcard /storage/emulated/0 "$HOME/Google Drive" "$HOME/gdrive"; do
  if [ -d "$hint" ]; then
    echo "[env-check] mesh-dir $hint"
  fi
done
if [ "$fail" -ne 0 ]; then
  exit 1
fi
echo "[env-check] ok"
