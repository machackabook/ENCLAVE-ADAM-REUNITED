#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — one-shot installer for Samsung A15 / Termux
# Defensive. Numeral: 137451921129154222
set -euo pipefail

echo "[HI] Installing Continuity Sentinel lineage A15-Controller..."

pkg install -y git gh jq curl termux-api cronie python 2>/dev/null || true

mkdir -p "$HOME/bin" "$HOME/strange-loop-a15-controller"/{.github/remedy,scans,agents}
# Note: on A15 the skill will be cloned from the Enclave repo
# This installer expects the skill already present or will pull it

if [[ ! -d "$HOME/ENCLAVE-ADAM-REUNITED" ]]; then
  gh repo clone machackabook/ENCLAVE-ADAM-REUNITED "$HOME/ENCLAVE-ADAM-REUNITED" || true
fi

SKILL="$HOME/ENCLAVE-ADAM-REUNITED/skills/hamiltonian-incursion"
if [[ -d "$SKILL" ]]; then
  cp "$SKILL/scripts/continuity-sentinel.sh" "$HOME/bin/" 2>/dev/null || true
  cp "$SKILL/scripts/error_corrector.py" "$HOME/strange-loop-a15-controller/agents/" 2>/dev/null || true
  cp "$SKILL/scans/"*.sh "$HOME/strange-loop-a15-controller/scans/" 2>/dev/null || true
fi

chmod +x "$HOME/bin/continuity-sentinel.sh" 2>/dev/null || true
chmod +x "$HOME/strange-loop-a15-controller/agents/error_corrector.py" 2>/dev/null || true
chmod +x "$HOME/strange-loop-a15-controller/scans/"*.sh 2>/dev/null || true

# Boot + cron
mkdir -p "$HOME/.termux/boot"
echo '#!/data/data/com.termux/files/usr/bin/bash
$HOME/bin/continuity-sentinel.sh' > "$HOME/.termux/boot/hi-sentinel.sh"
chmod +x "$HOME/.termux/boot/hi-sentinel.sh"

(crontab -l 2>/dev/null | grep -v continuity-sentinel; echo "*/5 * * * * $HOME/bin/continuity-sentinel.sh") | crontab -

echo "[HI] Lineage A15-Controller armed. Numeral locked."
echo "[HI] Continuum maximum."
