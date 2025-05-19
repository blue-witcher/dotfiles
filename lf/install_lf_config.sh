#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make directories
mkdir -p ~/.config/lf
mkdir -p ~/.config/fish/functions

# link files
ln -s "$SCRIPT_DIR"/lfrc       ~/.config/lf/
ln -s "$SCRIPT_DIR"/lf.fish    ~/.config/fish/functions/
ln -s "$SCRIPT_DIR"/cleaner    ~/.config/lf/
ln -s "$SCRIPT_DIR"/previewer  ~/.config/lf/

# download icons and colors
wget https://github.com/gokcehan/lf/raw/refs/heads/master/etc/icons.example -O ~/.config/lf/icons
wget https://github.com/gokcehan/lf/raw/refs/heads/master/etc/colors.example -O ~/.config/lf/colors 
wget https://raw.githubusercontent.com/duganchen/kitty-pistol-previewer/main/vidthumb -O ~/.config/lf/vidthumb && chmod u+x ~/.config/lf/vidthumb
