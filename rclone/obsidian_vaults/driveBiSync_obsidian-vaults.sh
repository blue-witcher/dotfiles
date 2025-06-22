#!/usr/bin/env bash
/usr/bin/rclone bisync 'obsidianVaults:' "$HOME/Documents/Obsidian Vaults/" --create-empty-src-dirs --compare size,modtime --check-filename=RCLONE_OBSIDIAN-VAULTS --check-access  --recover --remove-empty-dirs --verbose --log-file="$HOME/.local/var/log/driveBiSync_obsidian-vaults.log" --conflict-resolve newer --conflict-suffix 'conflict.md' --delete-after
