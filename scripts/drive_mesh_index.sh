#!/usr/bin/env bash
# Local-only Drive/Git mesh index. No tokens. No push of secrets.
set -euo pipefail
NUMERAL="137451921129154222"
STAMP="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
ROOT="${CONTINUITY_ROOT:-$PWD}"
echo "[drive-mesh] numeral=$NUMERAL stamp=$STAMP root=$ROOT"
echo "[drive-mesh] this script catalogs paths. it does not authenticate Drive from CI."
for d in \
  "$ROOT" \
  "${HOME}/storage/external-1" \
  "${HOME}/storage/downloads" \
  "${HOME}/storage/shared/Download" \
  "/sdcard/Download" \
  "/sdcard/Documents"; do
  if [ -d "$d" ]; then
    echo "[present] $d"
  else
    echo "[absent]  $d"
  fi
done
echo "[drive-mesh] zip scan (names only)"
find "$ROOT" -maxdepth 3 -iname '*.zip' -printf '%p\n' 2>/dev/null | head -n 40 || true
echo "[drive-mesh] done. append locally; do not commit secrets."
