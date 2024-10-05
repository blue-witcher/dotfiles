#!/bin/bash

# make rclone folder if not exist already
mkdir -p ~/.config/rclone

# backup old rclone.conf if already exist
mv ~/.config/rclone/rclone.conf ~/.config/rclone/rclone.conf.backup

# copy rclone.conf to folder
cp ~/dotfiles/rclone/rclone.conf ~/.config/rclone/

# tell the user to configure their token
echo "Please complete your rclone remote setup (you just need to authorize with your google account)."
rclone config

# create driveBiSync log file
mkdir -p ~/.var/log/
touch ~/.var/log/driveBiSync.log

# create RCLONE_TEST file
mkdir -p ~/Documents/Obsidian\ Vaults/
touch ~/Documents/Obsidian\ Vaults/RCLONE_TEST

# enable cronie service
sudo systemctl enable --now cronie

# run first run with --resync flag
/usr/bin/rclone bisync 'obsidianVaults:' "$HOME/Documents/Obsidian Vaults/" --create-empty-src-dirs --compare size,modtime --check-access  --recover --remove-empty-dirs --verbose --log-file="$HOME/.var/log/driveBiSync.log" --conflict-resolve newer --conflict-suffix 'conflict.md' --delete-after --resync
