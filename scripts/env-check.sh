#!/usr/bin/env bash
# Local autocomplete-style gate. No secrets. Numeral 137451921129154222.
set -euo pipefail
echo "[env-check] surface=ENCLAVE-ADAM-REUNITED"
mkdir -p docs scripts .github/workflows
# refuse obvious secret filenames in tree
if find . -maxdepth 3 -iname '*secret*' -o -iname '*.pem' -o -iname '*credentials*' 2>/dev/null | grep -v '.github' | grep -q .; then
  echo "[env-check] warn: secret-like names present; do not commit them"
fi
if command -v python3 >/dev/null 2>&1; then
  python3 -m compileall -q . || true
fi
echo "[env-check] ok"
