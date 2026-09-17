# Waterfall pipeline

```
pull(main) -> stamp(ledger) -> if CASCADE_TOKEN -> dispatch(next-hop) -> enhance(next repo)
```

Hourly cadence lives in `.github/workflows/cascade.yml` and Grok automations.
Do not clone extra hourly YAML. One workflow family.

Env checks:
- `bash scripts/env-check.sh`
- `bash scripts/mesh-env-check.sh`
- fail closed on empty SHA / missing README

Bidirectional Drive mesh is documentary, not a second git remote.
SD-card / sparsebundle remains the developing environment.
Source code is the only trusted neighbor.
