#!/bin/bash

DRIVESYNC_CRON=$(< ~/dotfiles/rclone/wallpapers/driveBiSync_wallpapers.cron)

echo "Creating anacron spool directory.."
mdir -p ~/.local/var/spool/anacron
echo "Anacron directory created."

echo "Installing driveBiSync wallpapers cron job.."
(crontab -l; echo "$DRIVESYNC_CRON") | crontab
echo "Installed driveBiSync obsidian vaults cron jobs."

# enable cronie service
echo "Enabling cronie service.."
sudo systemctl enable --now cronie
