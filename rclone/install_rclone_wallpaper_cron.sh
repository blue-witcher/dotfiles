#!/bin/bash

DRIVESYNC_CRON=$(< ~/dotfiles/rclone/wallpapers/driveBiSync_wallpapers.cron)

echo "Installing driveBiSync wallpapers cron job.."
(crontab -l; echo "$DRIVESYNC_CRON") | crontab
echo "Installed driveBiSync wallpapers cron jobs."

# enable cronie service
echo "Enabling cronie service.."
sudo systemctl enable --now cronie
