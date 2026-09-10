#!/bin/bash
# \u00c6 Chromebook / Penguin \u2014 USB Blueboy 1 mount into /\u00c6/storage/usb
set -euo pipefail
AE_ROOT="/\u00c6"
USB_TARGET="${AE_ROOT}/storage/usb"
MNT_REMOVABLE="/mnt/removable"
echo "[\u00c6] Creating directory structure..."
sudo mkdir -p "${AE_ROOT}/storage/usb" "${AE_ROOT}/home" "${AE_ROOT}/hive" "${AE_ROOT}/sentinel" "${AE_ROOT}/projects"
sudo chown -R "$(whoami):$(whoami)" "${AE_ROOT}" 2>/dev/null || true
echo "[\u00c6] Scanning for Blueboy 1 USB..."
if [[ -d "$MNT_REMOVABLE" ]]; then
  FIRST=$(find "$MNT_REMOVABLE" -maxdepth 1 -mindepth 1 -type d | head -1)
  if [[ -n "$FIRST" ]]; then
    echo "[\u00c6] Using existing removable mount: $FIRST"
    sudo mount --bind "$FIRST" "$USB_TARGET" || true
    echo "[\u00c6] Bound $FIRST \u2192 $USB_TARGET"
    exit 0
  fi
fi
echo "[\u00c6] WARNING: Blueboy 1 not detected yet. Plug it in and re-run after it appears under /mnt/removable."
echo "[\u00c6] Once mounted: sudo mount --bind /mnt/removable/<label> $USB_TARGET"
