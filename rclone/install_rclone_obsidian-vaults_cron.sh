#!/bin/bash

DRIVESYNC_CRON=$(< ~/dotfiles/rclone/obsidian_vaults/driveBiSync_obsidian-vaults.cron)

echo "Installing driveBiSync obsidian vaults cron job.."
(crontab -l; echo "$DRIVESYNC_CRON") | crontab
echo "Installed driveBiSync obsidian vaults cron jobs."

# enable cronie service
echo "Enabling cronie service.."
sudo systemctl enable --now cronie
