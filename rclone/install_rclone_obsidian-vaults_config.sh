#!/bin/bash

# make rclone folder if not exist already
mkdir -p ~/.config/rclone


# # copy rclone.conf to folder
# cp ~/dotfiles/rclone/rclone.conf ~/.config/rclone/

# if rclone_obsidian_vaults exists, append rclone obsidian-vaults config to rclone.conf
if [ -f ~/.config/rclone/obsidian_vaults ]; then
	echo 'obsidian vaults rclone config already installed. Delete it manually (~/.config/rclone/obsidian_vaults and in ~/.config/rclone/rclone.conf)'
else
	# backup old rclone.conf if already exist
	cp ~/.config/rclone/rclone.conf ~/.config/rclone/rclone.conf.backup

	# append rclone_obsidian-vaults.conf to rclone.conf
	cat ~/dotfiles/rclone/obsidian_vaults/rclone_obsidian-vaults.conf >> ~/.config/rclone/rclone.conf
	touch ~/.config/rclone/obsidian_vaults

	# create driveBiSync log file
	mkdir -p ~/.var/log/
	touch ~/.var/log/driveBiSync_obsidian-vaults.log
	
	# create RCLONE_TEST file
	mkdir -p ~/Documents/Obsidian\ Vaults/
	touch ~/Documents/Obsidian\ Vaults/RCLONE_OBSIDIAN-VAULTS

	# tell the user to configure their token
	echo "Please complete your rclone remote setup (you just need to authorize with your google account)."
	rclone config reconnect obsidianVaults:

	# first run with --resync flag
	echo "Running driveBiSync for the first time, please don't interrupt the process"
	/usr/bin/rclone bisync 'obsidianVaults:' "$HOME/Documents/Obsidian Vaults/" --create-empty-src-dirs --compare size,modtime --check-filename=RCLONE_OBSIDIAN-VAULTS --check-access  --recover --remove-empty-dirs --verbose --log-file="$HOME/.var/log/driveBiSync.log" --conflict-resolve newer --conflict-suffix 'conflict.md' --delete-after --resync
	echo "First run complete. rclone obsidian vaults setup complete."
fi




