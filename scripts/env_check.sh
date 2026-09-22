#!/usr/bin/env bash
# Continuity env check — Team Enhance
set -euo pipefail
NUMERAL="137451921129154222"
echo "[env] numeral=${NUMERAL}"
echo "[env] pwd=$(pwd)"
echo "[env] date=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
command -v git >/dev/null && git --version || echo "[warn] git missing"
command -v python3 >/dev/null && python3 --version || echo "[warn] python3 missing"
ls -la . >/dev/null
echo "[env] ok"
