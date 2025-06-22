#!/usr/bin/env bash
/usr/bin/rclone bisync 'wallpapers:' "$HOME/Pictures/wallpapers/" --create-empty-src-dirs --compare size,modtime --check-filename '.RCLONE_WALLPAPERS' --check-access  --recover --remove-empty-dirs --verbose --log-file="$HOME/.local/var/log/driveBiSync_wallpapers.log" --conflict-resolve newer --delete-after
