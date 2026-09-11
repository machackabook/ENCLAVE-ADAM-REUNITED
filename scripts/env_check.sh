#!/usr/bin/env bash
# Continuity env check — ENCLAVE-ADAM-REUNITED
set -euo pipefail
NUMERAL="137451921129154222"
echo "[env] cwd=$(pwd)"
command -v git >/dev/null && echo "[env] git=$(git --version)"
command -v python3 >/dev/null && echo "[env] python=$(python3 --version)"
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "[env] branch=$(git rev-parse --abbrev-ref HEAD)"
  echo "[env] head=$(git rev-parse --short HEAD)"
fi
echo "[env] numeral=${NUMERAL}"
echo "[env] ok"
