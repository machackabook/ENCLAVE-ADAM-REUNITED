#!/usr/bin/env bash
# Continuity mesh env-check. Fails closed. No secrets printed.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
fail() { echo "FAIL: $*" >&2; exit 1; }

[[ -f "$ROOT/README.md" ]] || fail "missing README.md"
[[ -s "$ROOT/README.md" ]] || fail "empty README.md"
grep -q "137451921129154222" "$ROOT/README.md" || fail "numeral missing from README"

if command -v git >/dev/null 2>&1 && [[ -d "$ROOT/.git" ]]; then
  sha=$(git -C "$ROOT" rev-parse HEAD 2>/dev/null || true)
  [[ -n "${sha:-}" ]] || fail "empty SHA"
fi

python_ok=0
if command -v python3 >/dev/null 2>&1; then
  python3 -m compileall -q "$ROOT" || fail "python compileall"
  python_ok=1
elif command -v python >/dev/null 2>&1; then
  python -m compileall -q "$ROOT" || fail "python compileall"
  python_ok=1
fi

echo "OK mesh-env-check root=$ROOT python=$python_ok numeral=137451921129154222"
