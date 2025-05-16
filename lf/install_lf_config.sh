#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make directories
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/lf

# link files
ln -s "$SCRIPT_DIR"/lfrc       ~/.config/lf/
ln -s "$SCRIPT_DIR"/lf.fish    ~/.config/fish/functions/

# download icons and colors
wget https://github.com/gokcehan/lf/raw/refs/heads/master/etc/icons.example -O ~/.config/lf/icons
wget https://github.com/gokcehan/lf/raw/refs/heads/master/etc/colors.example -O ~/.config/lf/colors 
