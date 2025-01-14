#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make necessary folders and parent folders if not exist already
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/fish/conf.d

# move existing settings.json file out of the way if it exists
mv ~/.config/fish/config.fish ~/.config/fish/config.fish.backup

# symlink settings file
ln -s "$SCRIPT_DIR"/config.fish ~/.config/fish/

# set theme
fish -c 'fish_config theme save Dracula'

# set prompt
fish -c 'fish_config prompt save astronaut'

# copy general functions
ln -s "$SCRIPT_DIR"/functions/*.fish ~/.config/fish/functions/
# link bashrun if run is present
if ls "$SCRIPT_DIR"/functions/run.fish 2> /dev/null; then
	ln -s "$SCRIPT_DIR"/../scripts/run.sh ~/.config/fish/functions/
fi

# copy general drop-in configurations
## if statement because bash is dumb
## if there are no *.fish files in the directory, this command makes a symlink to ~/dotfiles/fish/conf.d/*.fish.
## Because of that, we need to check if there is a *.fish file first and only execute the symlinking if there is
if ls "$SCRIPT_DIR"/conf.d/*.fish 2> /dev/null; then
    ln -s "$SCRIPT_DIR"/conf.d/*.fish ~/.config/fish/conf.d/
fi

# if bat is installed
if bat -V; then
    ln -s "$SCRIPT_DIR"/conf.d/bat/* ~/.config/fish/conf.d/
fi

# copy ls or eza functions
if eza --version; then
	ln -s "$SCRIPT_DIR"/functions/eza-listings/* ~/.config/fish/functions/
	ln -s "$SCRIPT_DIR"/conf.d/eza/* ~/.config/fish/conf.d/
else
	ln -s "$SCRIPT_DIR"/functions/listings/* ~/.config/fish/functions/
fi

# copy distribution specifig functions
. "$SCRIPT_DIR"/../scripts/functions.sh
detect_distro
if [ "$DISTRO_FAMILY" = "arch" ]; then
	echo "Installing functions for ArchLinux."
	ln -s "$SCRIPT_DIR"/functions/ArchLinux/*.fish ~/.config/fish/functions/
elif [ "$DISTRO_FAMILY" = *"suse"* ]; then
	echo "Installing functions for OpenSuse distributions."
	ln -s "$SCRIPT_DIR"/functions/openSuse/*.fish ~/.config/fish/functions/
elif [ "$DISTRO" = "Unknown" ]; then
	echo "Couldn't detect distro."
else
	echo "No distro-specific functions present."
fi
