#!/bin/bash

DRIVESYNC_CRON=$(< crontabs/driveBiSync.cron)

if [ "$DRIVESYNC_CRON" = true ]; then
    echo "Installing driveBiSync cron jobs.."
    (crontab -l; echo "$DRIVESYNC_CRON") | crontab
    echo "Installed driveBiSync cron jobs."
fi
