#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

. "$SCRIPT_DIR"/obsidian_vaults/driveBiSync_obsidian-vaults.cron

echo "Installing driveBiSync obsidian vaults cron job.."
(crontab -l; echo "$OBSIDIAN_CRON") | crontab
echo "Installed driveBiSync obsidian vaults cron jobs."

# enable cronie service
echo "Enabling cronie service.."
sudo systemctl enable --now cronie
