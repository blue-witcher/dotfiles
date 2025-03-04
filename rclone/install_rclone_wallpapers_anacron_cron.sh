#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

. "$SCRIPT_DIR"/wallpapers/driveBiSync_wallpapers.cron

echo "Creating anacron spool directory.."
mkdir -p ~/.local/var/spool/anacron
echo "Anacron directory created."

echo "Installing driveBiSync wallpapers cron job.."
(crontab -l; echo "$WALLPAPER_CRON") | crontab
echo "Installed driveBiSync obsidian vaults cron jobs."

# symlink sync script for anacrontab
mkdir -p ~/.local/anacron
ln -s "$SCRIPT_DIR"/wallpapers/driveBiSync_wallpapers.sh ~/.local/anacron/driveBiSync_wallpapers.sh

# enable cronie service
echo "Enabling cronie service.."
sudo systemctl enable --now cronie
