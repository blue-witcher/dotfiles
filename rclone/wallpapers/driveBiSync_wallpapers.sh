#!/bin/bash
/usr/bin/rclone bisync 'wallpapers:' "$HOME/Pictures/wallpapers/" --create-empty-src-dirs --compare size,modtime --check-filename '.RCLONE_WALLPAPERS' --check-access  --recover --remove-empty-dirs --verbose --log-file="$HOME/.var/log/driveBiSync_wallpapers.log" --conflict-resolve newer --conflict-suffix 'conflict.md' --delete-after
