# Device Correlation — Samsung A15

**Status:** IDENTIFIED (conversation + prior Termux artifacts)  
**Band:** band-010-local + band-127-loopback (ADAM edge)  
**Role:** Primary Termux operational node / end-node candidate

## IP / sparse mapping (Enclave bands)
| Band | Role | Device note |
|------|------|-------------|
| 066-root | server / identifying | reserved |
| 100-dev-ai | AI / development | Gemini CLI / local models |
| 137-visual | visual / media | rendering surfaces |
| 192-network | streaming / Tailscale | mesh + exit |
| 010-local | local subnet | A15 LAN presence |
| 127-loopback | ADAM home | zero-host feedback |

## Telemetry path (design)
1. GitHub private branch or private repo section holds device marker
2. Pull of marker confirms device identity (hash + optional node env)
3. Optional: esm.run / Node gather for env snapshot (user-initiated, least-privilege)
4. Diff against prior snapshot → anomaly catalog (sanitized, no secrets)

## Confirmation
Device confirmation is **opt-in** via intentional GitHub pull of a device marker file.  
No silent background phone-home without Architect authorization.
