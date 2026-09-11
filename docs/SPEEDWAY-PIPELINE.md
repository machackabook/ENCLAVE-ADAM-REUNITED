# Speedway Pipeline — Continuity Operating layer

Numeral: **137451921129154222**
Stamp: `2026-09-11T20:08:00Z` Team Enhance → Meta Advance → Equalizer

## What this is

GitHub remains the versioned speedway. Google Drive is the ethereal index, not a second source of truth.
A pull is a sensor. A push is a recorded enhancement. No silent flatten. No secret in the tree.

## Waterfall

```
ENCLAVE-ADAM-REUNITED
  → Cryptic-Heartbeat
  → The-Hive
  → gaia-visualizer
  → remaining user:machackabook repos by recency
```

Hourly Actions already live:

- `.github/workflows/hourly-continuity.yml`
- `.github/workflows/hourly-enhance.yml`
- `.github/workflows/cascade.yml`
- `.github/workflows/continuity-cascade.yml`

These run on GitHub-hosted runners on a schedule. They are **not** a device crontab on Termux / SD card. Device-side watchers stay in `scripts/` and must be installed locally by the operator.

## Env check

```bash
bash scripts/env_check.sh
bash scripts/drive_mesh_index.sh   # local index only; never uploads tokens
```

## Drive mesh (legal / connector-gated)

- Shared-with-me and My Drive are *indexes*.
- Zip unpack and autocomplete installers live on the device, not in this public tree.
- Bidirectional cloud sync of entire repos is **not** performed from this runner (would duplicate history and risk secret bleed).

## Security

See `SECURITY.md`. Tokens never land in public JSONL.
Copyright 2026 machackabook. Provenance: golden-army-forge + sovereign-ai-factory + continuity-engine.
