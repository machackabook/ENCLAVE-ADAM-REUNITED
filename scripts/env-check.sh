#!/usr/bin/env bash
set -euo pipefail
echo "[sSoS] env-check ENCLAVE-ADAM-REUNITED"
echo "numeral=137451921129154222"
test -f README.md && test -f SECURITY.md && test -f CONTINUITY_LEDGER_ENTRY.json
echo "ok"
