#!/usr/bin/env bash
set -euo pipefail
echo "[enclave-mesh] 137451921129154222 $(date -u +%Y-%m-%dT%H:%M:%SZ)"
for d in docs scripts .github adam; do
  [[ -d "$d" ]] && echo "[ok] $d" || echo "[miss] $d"
done
echo "[enclave-mesh] non-null"
