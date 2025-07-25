#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make rclone folder if not exist already
mkdir -p ~/.config/rclone


# # copy rclone.conf to folder
# cp ~/dotfiles/rclone/rclone.conf ~/.config/rclone/

# if rclone_obsidian_vaults exists, append rclone obsidian-vaults config to rclone.conf
if [ -f ~/.config/rclone/wallpapers ]; then
	echo 'obsidian vaults rclone config already installed. Delete it manually (~/.config/rclone/obsidian_vaults and in ~/.config/rclone/rclone.conf)'
else
	# backup old rclone.conf if already exist
	cp ~/.config/rclone/rclone.conf ~/.config/rclone/rclone.conf.backup

	# append rclone_wallpapers.conf to rclone.conf
	cat "$SCRIPT_DIR"/wallpapers/rclone_wallpapers.conf >> ~/.config/rclone/rclone.conf
	touch ~/.config/rclone/wallpapers

	# create driveBiSync log file
	mkdir -p ~/.local/var/log/
	touch ~/.local/var/log/driveBiSync_wallpapers.log
	
	# create RCLONE_TEST file
	mkdir -p ~/Pictures/wallpapers/
	touch ~/Pictures/wallpapers/.RCLONE_WALLPAPERS

	# tell the user to configure their token
	echo "Please complete your rclone remote setup (you just need to authorize with your google account)."
	rclone config reconnect wallpapers:

	# first run with --resync flag
	echo "Running driveBiSync for the first time, please don't interrupt the process"
	/usr/bin/rclone bisync 'wallpapers:' "$HOME/Pictures/wallpapers/" --create-empty-src-dirs --compare size,modtime --check-filename '.RCLONE_WALLPAPERS' --check-access  --recover --remove-empty-dirs --verbose --log-file="$HOME/.local/var/log/driveBiSync_wallpapers.log" --conflict-resolve newer --delete-after --resync
	echo "First run complete. rclone obsidian vaults setup complete."
fi




