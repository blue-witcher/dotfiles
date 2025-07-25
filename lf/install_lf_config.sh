#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make directories
mkdir -p ~/.config/lf

# link files
ln -s "$SCRIPT_DIR"/lfrc       ~/.config/lf/
ln -s "$SCRIPT_DIR"/cleaner    ~/.config/lf/
ln -s "$SCRIPT_DIR"/previewer  ~/.config/lf/

# download icons and colors
wget -nc https://github.com/gokcehan/lf/raw/refs/heads/master/etc/icons.example -O ~/.config/lf/icons
wget -nc https://github.com/gokcehan/lf/raw/refs/heads/master/etc/colors.example -O ~/.config/lf/colors 
wget -nc https://raw.githubusercontent.com/duganchen/kitty-pistol-previewer/main/vidthumb -O ~/.config/lf/vidthumb && chmod u+x ~/.config/lf/vidthumb
