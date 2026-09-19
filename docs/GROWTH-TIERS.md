# GROWTH-TIERS — Compounding Enhancement Path

Numeral `137451921129154222`. Append-only. Source-only authority.

## Purpose

Every Team Enhance hop compounds prior quality. Percentile climbs toward 100% perfect. Perfect is not a resting place — at 100% the engine seeks the next unknown and the cycle continues.

## Tier table

| Tier | Percentile | Criteria (all must hold) |
|------|------------|--------------------------|
| T0 | 0–19% | Repo exists; no stamp |
| T1 | 20–39% | `docs/LEDGER-STAMP.md` + README present |
| T2 | 40–59% | cascade.yml healthy; numeral locked; no secrets in tree |
| T3 | 60–79% | Compounding cycle live; GROWTH-TIERS.md present; hop leaves measurable +% |
| T4 | 80–94% | Mesh siblings cross-verified; env-check + compile green; waterfall order current |
| T5 | 95–99% | Near-perfect; only residual unknowns catalogued |
| T6 | 100% | Perfect claimed — immediately refuse static rest; seek next unknown |

## Compounding rule

```
score[n+1] = min(99, score[n] + delta)
delta = 2..5 when all T-criteria for current tier pass
delta = 0 when any check fails (fail closed)
```

Never decrement. Never rewrite history. Never multiply cascade YAML.

## Current scores (2026-09-19T16:01Z)

| Surface | Stage | Tier | Score |
|---------|-------|------|-------|
| ENCLAVE-ADAM-REUNITED | 195 | T3 | 72% |
| Cryptic-Heartbeat | 192 | T2 | 58% |
| The-Hive | 193 | T2 | 61% |
| continuity-ledger-cycle | 194 | T3 | 70% |

## Next actions toward T4

1. Verify cascade.yml still healthy on every hop
2. Run env-check / mesh-env-check where scripts exist
3. Keep waterfall order accurate in README
4. Cross-link mesh siblings without secret leak
5. Compound +2–5% only when criteria pass

Point-zero null refused. Operating in the middle.
