#!/usr/bin/env bash
# Continuity env-check — fails closed. Numeral 137451921129154222.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

fail() { echo "ENV-CHECK FAIL: $*"; exit 1; }

[[ -f README.md ]] || fail "missing README.md"
[[ -s README.md ]] || fail "empty README.md"

if command -v git >/dev/null 2>&1 && git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  SHA="$(git rev-parse HEAD 2>/dev/null || true)"
  [[ -n "${SHA}" ]] || fail "empty SHA / point-zero null"
fi

# Refuse obvious secret filenames in the working tree (names only).
while IFS= read -r f; do
  base="$(basename "$f")"
  case "$base" in
    .env|*.pem|id_rsa|id_ed25519|*secret*.txt|*token*.txt)
      fail "secret-looking file present: $f"
      ;;
  esac
done < <(find . -type f -not -path './.git/*' | head -n 4000)

echo "ENV-CHECK OK numeral=137451921129154222 root=$ROOT"
