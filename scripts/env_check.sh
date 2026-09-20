#!/usr/bin/env bash
# Continuity env check — refuse null, catalog unknowns.
set -euo pipefail
NUMERAL="${NUMERAL:-137451921129154222}"
echo "[env-check] numeral=${NUMERAL}"
echo "[env-check] pwd=$(pwd)"
echo "[env-check] date=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
command -v git >/dev/null && git rev-parse --is-inside-work-tree 2>/dev/null || echo "[env-check] not a git worktree (ok in Actions checkout)"
ls -la | head -n 40
test -f README.md && echo "[env-check] README present" || echo "[env-check] README missing"
test -f SECURITY.md && echo "[env-check] SECURITY present" || echo "[env-check] SECURITY missing"
echo "[env-check] refuse-null=1"
exit 0
