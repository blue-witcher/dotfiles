#!/bin/bash

source ~/dotfiles/scripts/functions.sh

# make necessary folders and parent folders if not exist already
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/fish/conf.d

# copy general functions
ln -s ~/dotfiles/fish/functions/*.fish ~/.config/fish/functions/

# copy general drop-in configurations
## if statement because bash is dumb
if ls ~/dotfiles/conf.d/*.fish; then
    ln -s ~/dotfiles/fish/conf.d/*.fish ~/.config/fish/conf.d/
fi

# if bat is installed
if bat -V; then
    ln -s ~/dotfiles/fish/conf.d/bat/* ~/.config/fish/conf.d/
fi

# copy ls or eza functions
if eza --version; then
	ln -s ~/dotfiles/fish/functions/eza-listings/* ~/.config/fish/functions/
else
	ln -s ~/dotfiles/fish/functions/listings/* ~/.config/fish/functions/
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
