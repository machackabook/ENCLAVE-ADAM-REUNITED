#!/usr/bin/env bash
# Continuity env check — ENCLAVE-ADAM-REUNITED
set -euo pipefail
NUMERAL="137451921129154222"
echo "[env-check] numeral=$NUMERAL repo=$(basename "$(git rev-parse --show-toplevel 2>/dev/null || echo ENCLAVE-ADAM-REUNITED)")"
need=()
command -v git >/dev/null || need+=(git)
command -v python3 >/dev/null || need+=(python3)
if [[ ${#need[@]} -gt 0 ]]; then
  echo "[env-check] MISSING: ${need[*]}" >&2
  exit 2
fi
echo "[env-check] git=$(git --version | awk '{print $3}')"
echo "[env-check] python3=$(python3 --version)"
echo "[env-check] PASS"
exit 0
