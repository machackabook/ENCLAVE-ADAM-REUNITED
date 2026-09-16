# Cascade receiver

This Enclave listens to TheLedgerIndex waterfall.

- Hub: https://github.com/machackabook/TheLedgerIndex
- Numeral: 137451921129154222
- Event names: `continuity-cascade`, `hourly-enhance`

A pull on the hub *may* dispatch here if `GH_PAT` + `CASCADE_TARGETS` are set on the hub. This repo never stores that token.

On receive: stamp `docs/ENCLAVE_CASCADE_STAMP.json`, run env check if scripts exist, do not overwrite ADAM trees.
