#!/bin/bash

# make necessary folders and parent folders if not exist already
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/fish/conf.d

# copy general functions
ln -s ~/dotfiles/fish/functions/*.fish ~/.config/fish/functions/

# copy general drop-in configurations
## if statement because bash is dumb
if ls ~/dotfiles/fish/conf.d/*.fish; then
    ln -s ~/dotfiles/fish/conf.d/*.fish ~/.config/fish/conf.d/
fi

# download autols plugin
if ! [[ -f ~/.config/fish/conf.d/autols.fish ]]; then
# don't download the file again if it is already there
	wget -qP ~/.config/fish/conf.d/ https://raw.githubusercontent.com/rstacruz/fish-autols/6d704c0e33522335539bf6844ce9f7009b2ee6a2/conf.d/autols.fish
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
