#!/usr/bin/env bash
# Continuity env check — Part-15-aware, source-only trust.
set -euo pipefail
NUMERAL="137451921129154222"
echo "[env-check] numeral=$NUMERAL host=$(hostname) utc=$(date -u +%FT%TZ)"
echo "[env-check] pwd=$(pwd)"
echo "[env-check] uname=$(uname -a)"
for d in adam device docs enclave-protocol profiles skills strange-loop workflows scripts .github/workflows; do
  if [[ -d "$d" ]]; then
    echo "[ok] dir $d"
  else
    echo "[miss] dir $d"
  fi
done
command -v sha256sum >/dev/null && echo "[ok] sha256sum" || echo "[miss] sha256sum"
command -v git >/dev/null && echo "[ok] git $(git --version)" || echo "[miss] git"
echo "[env-check] complete — catalog unknown, verify voice, keep ledger full."
