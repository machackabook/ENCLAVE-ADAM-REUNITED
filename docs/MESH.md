# MESH — ENCLAVE-ADAM-REUNITED

Numeral `137451921129154222`  
Surface: open Enclave node  
Team enhance · 2026-09-10

## Bidirectional continuum

```
Google Drive (ethereal) ↔ nexus-repo-sync ↔ GitHub surfaces ↔ device SD / Termux
```

| Hop | Repo | Cron | Role |
|-----|------|------|------|
| 0 | Cryptic-Heartbeat | `23 * * * *` | living runtime root |
| 1 | ENCLAVE-ADAM-REUNITED | `21 * * * *` | open Enclave + ADAM |
| 2 | The-Hive | `19 * * * *` | public Gaia mesh |
| 3 | gaia-visualizer | — | band-137 visual |
| 4 | nexus-repo-sync | — | Drive ↔ Git contract |

Dispatch type: `continuity-cascade`  
Secret: `CASCADE_TOKEN` (PAT with `repo` + `workflow`)

## Env check directories

Operators should keep these present on device:

- `$HOME/storage/shared` or SD card developing env
- Termux prefix `$PREFIX`
- Drive mount / Shared with me ↔ My computer bridge (manual or rclone)

`scripts/env-check.sh` exits non-zero on missing critical paths so the cascade does not stamp a lie.

## Security

No secrets in tree. Cookies and device IDs stay off-repo. Ledger is public hash only.
