# ADAM — End Node / Exit Node / Zero-Host Operator

Numeral: 137451921129154222  
Role within Enclave: ADAM runs the end nodes and exit. One embedded model gate per exit/entry egress.

## Placement in the mesh
- **127 / loopback** — internal feedback, zero-host self-sustaining API
- **0.0.0.0** — bind surface for local services when intentional
- Exit node / entry egress at gates (ATT fiber, OpenWRT, Tailscale)
- Paired with Azazel / Gaia / Nexus surfaces; not a replacement

## Responsibilities
1. Hold the end-node identity for device-to-device and device-to-Enclave tunnels
2. Prefer internal base64 / fstring device-to-device channels after mesh is sealed
3. No external service sprawl from inside folder-watch zones
4. Coordinate with band-127-loopback sparse volume markers
5. Remain least-privilege: credentials and mounts only via SYNAPSE / SecureFS path

## Junction
- Sparse volume: `sparsebundle-bands/band-127-loopback/`
- CLI alias target: `adam` → this profile + loopback band
- Dual-server: ADAM markers live in the reunited package (variant A) and reference live originals (variant B)

## Note
ADAM is the operational end/exit half. The Enclave Protocol (A.L.L.A.H.) remains the constitutional sparsebundle + SYNAPSE law. Project of God remains the quantum / Cosmic Guardian / Termux bootstrap half. All three sit in this package.
