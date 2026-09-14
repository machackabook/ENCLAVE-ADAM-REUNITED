# Security posture — ENCLAVE-ADAM-REUNITED

Open Enclave surface only. Drive originals remain dual-server variant B, untouched.

## Additive rules

- No tokens, cookies, session strings, or private keys in the tree.
- `CASCADE_TOKEN` is an Actions repository secret only. Workflows skip waterfall dispatch when it is empty.
- ADAM is end/exit node on band-127-loopback. SYNAPSE alone mounts the Enclave.
- SD-card / sparsebundle / Drive originals are not mirrored as raw blobs into git.
- Zip unpack happens only in local env-check on watched download directories — never blindly in CI.
- Part-15 / device-listening claims stay off this public surface. Catalog unknowns locally; stamp hashes here.

Numeral `137451921129154222`.
