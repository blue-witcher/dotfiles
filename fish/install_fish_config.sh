#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# enable globstar feature (**/*.fish)
shopt -s globstar

# make necessary folders and parent folders if not exist already
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/fish/conf.d

# move existing settings.json file out of the way if it exists
mv ~/.config/fish/config.fish ~/.config/fish/config.fish.backup

# symlink settings file
ln -s "$SCRIPT_DIR"/config.fish ~/.config/fish/

# set keybinds
fish_hybrid_key_bindings

# set theme
fish -c 'fish_config theme save Dracula'

# copy general functions
ln -s "$SCRIPT_DIR"/functions/**/*.fish ~/.config/fish/functions/

# copy general drop-in configurations
## if statement because bash is dumb
## if there are no *.fish files in the directory, this command makes a symlink to ~/dotfiles/fish/conf.d/*.fish.
## Because of that, we need to check if there is a *.fish file first and only execute the symlinking if there is
if ls "$SCRIPT_DIR"/conf.d/*.fish 2> /dev/null; then
    ln -s "$SCRIPT_DIR"/conf.d/*.fish ~/.config/fish/conf.d/
fi
