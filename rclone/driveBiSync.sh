#!/bin/bash
/usr/bin/rclone bisync 'obsidianVaults:' '/home/blue/Documents/Obsidian Vaults/' --create-empty-src-dirs --compare size,modtime --check-access  --recover --remove-empty-dirs --verbose --log-file='/home/blue/.var/log/driveBiSync.log' --conflict-resolve newer --conflict-suffix 'conflict.md' --delete-after
