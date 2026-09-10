# Æ Chromebook / Penguin Workflow

**Dual Authority:** machackabook + azazeleous  
**Numeral:** 137451921129154222  
**Enclave surface:** Cloud-backed terminal for ChromeOS + Crostini (Penguin)

## Goals

- Overcome Crostini space constraints by routing heavy storage to the 250 GB Blueboy 1 USB and to Google Drive.
- Make `/\u00c6` the central development root on the device.
- Prefer Google Drive as the durable home (`/\u00c6/home`) so any ChromeOS login with the same account sees the same hive.
- Automatic sentinel that reclaims space from the Crostini disk image into USB.
- GitHub pipeline that stays mergeable with upstream Chrome developer repositories while preserving our branching.

## Directory Contract (device)

```
/\u00c6/
\u251c\u2500\u2500 home/          \u2190 Google Drive backed (cloud home)
\u2502   \u2514\u2500\u2500 projects/
\u251c\u2500\u2500 storage/
\u2502   \u2514\u2500\u2500 usb/       \u2190 Blueboy 1 (bind-mounted from /mnt/removable/...)
\u251c\u2500\u2500 hive/          \u2190 shared notes, authority, discussions
\u251c\u2500\u2500 sentinel/      \u2190 logs + reclaim history
\u2514\u2500\u2500 projects/      \u2190 optional local overlay
```

Google Drive already contains the matching folder tree under `\u00c6/`.

## Quick Start on Penguin

```bash
# 1. Create the local \u00c6 root
sudo mkdir -p /\u00c6/{home,storage/usb,hive,sentinel,projects}
sudo chown -R $USER /\u00c6

# 2. Mount Blueboy 1 into the desired location
bash scripts/setup-ae-usb.sh

# 3. Prepare cloud-home orientation
bash scripts/setup-cloud-home.sh

# 4. Arm the space-reclaim sentinel (cron)
chmod +x scripts/ae-sentinel.sh
(crontab -l 2>/dev/null; echo "*/30 * * * * /\u00c6/sentinel/ae-sentinel.sh") | crontab -
```

## Google Drive as Home Philosophy

ChromeOS already mounts Google Drive into the Files app.  
By keeping all durable state under the Drive folder `\u00c6/` and treating `/\u00c6/home` as the working home, the terminal becomes effectively cloud-native.

## Sentinel Behaviour

- Watches Crostini root disk usage.
- When > 80 %: moves large (>50 MB), older files from caches/trash into `/\u00c6/storage/usb/reclaimed/`.
- Runs git gc on projects under `/\u00c6`.
- Logs everything under `/\u00c6/sentinel/`.
