#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# move existing config.fish, functions/ and conf.d/ out of the way if they exist
mv ~/.config/fish/config.fish   ~/.config/fish/config.fish.backup
mv ~/.config/fish/functions     ~/.config/fish/old_functions
mv ~/.config/fish/conf.d        ~/.config/fish/old_conf.d

# symlink config.fish, functions/ and conf.d/
ln -s "$SCRIPT_DIR"/config.fish ~/.config/fish/
ln -s "$SCRIPT_DIR"/functions   ~/.config/fish/functions
ln -s "$SCRIPT_DIR"/conf.d      ~/.config/fish/conf.d

# set keybinds
fish -c 'fish_hybrid_key_bindings'

# set theme
fish -c 'fish_config theme save Dracula'
