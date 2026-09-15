#!/usr/bin/env bash
# mesh-env-check.sh — fail closed. Numeral 137451921129154222.
set -euo pipefail

echo "[mesh-env-check] start"
test -f README.md || { echo "missing README.md"; exit 1; }
test -d .github || { echo "missing .github"; exit 1; }

if command -v git >/dev/null 2>&1 && git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  sha=$(git rev-parse HEAD)
  if [ -z "${sha}" ]; then
    echo "empty SHA — point-zero null refused"
    exit 1
  fi
  echo "[mesh-env-check] HEAD=${sha}"
else
  echo "[mesh-env-check] git not available in this environment — presence checks only"
fi

echo "[mesh-env-check] ok"
