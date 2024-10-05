#!/bin/bash
/usr/bin/rclone bisync 'obsidianVaults:' "$HOME/Documents/Obsidian Vaults/" --create-empty-src-dirs --compare size,modtime --check-access  --recover --remove-empty-dirs --verbose --log-file="$HOME/.var/log/driveBiSync.log" --conflict-resolve newer --conflict-suffix 'conflict.md' --delete-after
