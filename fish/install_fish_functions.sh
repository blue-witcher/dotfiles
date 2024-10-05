#!/bin/bash

source ~/dotfiles/scripts/functions.sh

# make '~/.config/micro/' folder and parent folders if not exist already
mkdir -p ~/.config/fish/functions

# copy general functions
ln -s ~/dotfiles/fish/functions/*.fish ~/.config/fish/functions/

# copy ls or eza functions
if ask_user $'Do you use eza on this system?'; then
	ln -s ~/dotfiles/fish/conf.d/eza/* ~/.config/fish/conf.d/
else
	ln -s ~/dotfiles/fish/conf.d/ls/* ~/.config/fish/conf.d/
fi

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
