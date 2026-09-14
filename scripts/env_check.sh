#!/usr/bin/env bash
set -euo pipefail
echo "[continuity] numeral=137451921129154222"
echo "[continuity] pwd=$(pwd)"
echo "[continuity] date=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
command -v git >/dev/null && git rev-parse --is-inside-work-tree || echo "not a git worktree"
ls -la | head
echo "[continuity] env check complete — refuse null at point zero"
