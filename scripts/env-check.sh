#!/usr/bin/env bash
# Stage 41/42 env-check autocomplete stub.
# Prints presence of mesh env vars without leaking values.
set -euo pipefail
keys=(CASCADE_TOKEN GAIA_PULSE_TOKEN RELAY_URL DRIVE_ROOT TERMUX_ROOT)
echo "enclave env-check $(date -u +%Y-%m-%dT%H:%M:%SZ)"
for k in "${keys[@]}"; do
  if [ -n "${k+x}" ] && [ -n "${!k:-}" ]; then
    echo "  $k=set"
  else
    echo "  $k=missing"
  fi
done
