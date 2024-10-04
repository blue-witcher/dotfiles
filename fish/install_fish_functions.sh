#!/bin/bash

# make '~/.config/micro/' folder and parent folders if not exist already
mkdir -p ~/.config/fish/functions

# copy general functions
ln -s ~/dotfiles/fish/functions/*.fish ~/.config/fish/functions/

# copy distribution specifig functions
if [ -f /etc/os-release ]; then
	. /etc/os-release
	if [ "$ID_LIKE" = "arch" ]; then
		echo "ArchLinux detected."
		ln -s ~/dotfiles/fish/functions/ArchLinux/*.fish ~/.config/fish/functions/
	elif [ "$ID_LIKE" = *"suse"* ]; then
		echo "Detected suse-like distro."
		ln -s ~/dotfiles/fish/functions/openSuse/*.fish ~/.config/fish/functions/
	else
		echo "No distro-specific functions present."
	fi
else
	echo "Couldn't detect distribution."
fi
