#!/bin/bash

# make necessary folders and parent folders if not exist already
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/fish/conf.d

# move existing settings.json file out of the way if it exists
mv ~/.config/fish/config.fish ~/.config/fish/config.fish.backup

# symlink settings file
ln -s ~/dotfiles/fish/config.fish ~/.config/fish/

# set theme
fish -c 'fish_config theme save Dracula'

# set prompt
fish -c 'fish_config prompt save astronaut'

# copy general functions
ln -s ~/dotfiles/fish/functions/*.fish ~/.config/fish/functions/

# copy general drop-in configurations
## if statement because bash is dumb
## if there are no *.fish files in the directory, this command makes a symlink to ~/dotfiles/fish/conf.d/*.fish.
## Because of that, we need to check if there is a *.fish file first and only execute the symlinking if there is
if ls ~/dotfiles/fish/conf.d/*.fish 2> /dev/null; then
    ln -s ~/dotfiles/fish/conf.d/*.fish ~/.config/fish/conf.d/
fi

# if bat is installed
if bat -V; then
    ln -s ~/dotfiles/fish/conf.d/bat/* ~/.config/fish/conf.d/
fi

# copy ls or eza functions
if eza --version; then
	ln -s ~/dotfiles/fish/functions/eza-listings/* ~/.config/fish/functions/
	ln -s ~/dotfiles/fish/conf.d/eza/* ~/.config/fish/conf.d/
else
	ln -s ~/dotfiles/fish/functions/listings/* ~/.config/fish/functions/
fi

# clipboard abbreviation
echo "Are you using Wayland or X11? w for Wayland or x for X11 "
read display
case $display in
	"w") 
		ln -s ~/dotfiles/fish/conf.d/clipboard/wl-clipboard_copy.fish ~/.config/fish/conf.d/
		;;
esac

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
