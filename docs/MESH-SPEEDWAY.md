# Mesh Speedway — GitHub × Drive Continuum

## Neutrality of the singularity
Pull on one node SHALL NOT silently rewrite another. Cascade is opt-in via workflow_dispatch and repository_dispatch only.

## Waterfall contract
1. Hourly job selects next repo by updated_at rotation.
2. Enhancement is README + SECURITY + one ledger stamp, or a real code quality fix.
3. Empty no-op commits are forbidden.
4. After successful push, emit repository_dispatch `continuity-cascade` to at most two sibling repos.
5. Drive remains ethereal store: artifacts upload only, never secrets.

## Env checks (local / Termux / AE)
- `git status --porcelain` must be inspectable before auto-push
- `GITHUB_TOKEN` scoped; no classic PAT in repo files
- SD card / sparsebundle is develop substrate; cloud is remembrance

## Team roles
- enhance → next repo
- meta → advance structure
- equalizer → format only, no semantic rewrite without review
