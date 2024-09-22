#!/bin/bash

DRIVESYNC_CRON=$(< ~/dotfiles/rclone/driveBiSync.cron)

echo "Installing driveBiSync cron jobs.."
(crontab -l; echo "$DRIVESYNC_CRON") | crontab
echo "Installed driveBiSync cron jobs."
