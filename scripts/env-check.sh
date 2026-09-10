#!/usr/bin/env bash
# Continuity env check — ENCLAVE-ADAM-REUNITED
# Numeral 137451921129154222
set -euo pipefail
echo "[env-check] surface=ENCLAVE-ADAM-REUNITED utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "[env-check] pwd=$(pwd) user=$(id -un)"
echo "[env-check] git=$(git rev-parse --short HEAD 2>/dev/null || echo none)"
for p in README.md SECURITY.md docs .github/workflows/cascade.yml; do
  if [ ! -e "$p" ]; then
    echo "[env-check] MISSING $p" >&2
    exit 1
  fi
done
echo "[env-check] ok"
