#!/usr/bin/env bash
# Continuity env check — prints presence, never values.
set -euo pipefail
fail=0
echo "[env-check] numeral=137451921129154222 host=$(hostname 2>/dev/null || echo unknown)"
need() {
  local k="$1"
  if [[ -n "${!k:-}" ]]; then
    echo "OK   $k present"
  else
    echo "MISS $k"
    fail=1
  fi
}
# Optional keys — absence is logged, not fatal unless STRICT=1
for k in GITHUB_TOKEN GH_TOKEN GOOGLE_APPLICATION_CREDENTIALS; do
  if [[ -n "${!k:-}" ]]; then echo "OK   $k present"; else echo "ABSENT $k (optional)"; fi
done
if [[ "${STRICT:-0}" == "1" && "$fail" -ne 0 ]]; then
  echo "[env-check] STRICT fail"
  exit 1
fi
echo "[env-check] complete"
exit 0
