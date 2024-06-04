#!/bin/bash

DRIVESYNC_CRON="@reboot $DRIVESYNC_FOLDER/driveBiSync.sh
*/10 * * * * $DRIVESYNC_FOLDER/driveBiSync.sh"

if [ "$DRIVESYNC_CRON" = true ]; then
    echo "Installing driveSync cron jobs.."
    (crontab -l; echo "$DRIVESYNC_CRON") | crontab
    echo "Installed driveSync cron jobs."
fi
