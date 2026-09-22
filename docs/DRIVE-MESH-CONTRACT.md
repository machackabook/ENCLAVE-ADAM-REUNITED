# Drive mesh contract (operator-gated)

GitHub remains the versioned singularity.
Google Drive is the ethereal continuum *mirror*, never a second source of truth.

## Surfaces

- My Drive — owned continuum folders
- Shared with me — inbound fragments only; never auto-merge to main
- Artifacts / SD-card analog — local unpack after env-check

## Rules

1. No tokens, cookies, or Part-15 voice captures in the repo.
2. Zip unpack only after `scripts/env-check.sh` fails-closed on secret-looking names.
3. Bidirectional sync is a *declared* mesh, not a blind rsync. Operator must confirm folder IDs.
4. Shared-with-me is cataloged, not trusted.
5. Cloud updates flow: Drive draft → env-check → GitHub commit → cascade sibling hop.

## Next operator action

List Drive folders named Continuity / Enclave / Hive and pin folder IDs in GitHub Actions secrets as `DRIVE_MIRROR_FOLDER_ID` only if a dedicated mirror script is enabled. Do not enable until the script exists and is reviewed.
