# Waterfall Mesh — ENCLAVE-ADAM-REUNITED

Numeral: `137451921129154222`
Team Enhance → Meta Advance → Equalizer format.

## Cascade

1. Pull on this repo is a sensor event.
2. Sensor writes an append-only heartbeat under `docs/ledgers/`.
3. Downstream repos in the mesh (`The-Hive`, `Cryptic-Heartbeat`, `gaia-visualizer`) receive a documented hand-off, not a blind force-push.
4. Google Drive / shared-with-me remains the ethereal continuum *index*, not a silent overwrite of git history.

## Neutrality of the singularity

- No champion metric.
- Distinction over destruction: never clobber a generation that produced a usable signal.
- Secrets stay out of the public tree. Tokens live in GitHub Actions secrets / local env only.

## Hourly loop

See `.github/workflows/hourly-continuity.yml`.
A scheduled workflow stamps `docs/ledgers/heartbeat.jsonl`.
It does **not** rewrite every file every hour. That would burn history and Actions minutes.

## Env check

`scripts/env_check.sh` verifies cwd, python, git, and numeral presence.
