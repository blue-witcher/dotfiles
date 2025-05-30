#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make directory
mkdir -p ~/.config/kitty

# move old kitty.conf out of the way
mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.bakup 

# symlink main settings file
ln -s "$SCRIPT_DIR"/kitty.conf ~/.config/kitty/

# symlink the themes
## if statement because bash is dumb
## if there are no *.fish files in the directory, this command makes a symlink to ~/dotfiles/fish/conf.d/*.fish.
## Because of that, we need to check if there is a *.fish file first and only execute the symlinking if there is
if ls "$SCRIPT_DIR"/themes/* 2> /dev/null; then
	ln -s "$SCRIPT_DIR"/themes/* ~/.config/kitty/
fi

# download whiskers icon from https://github.com/igrmk/whiskers
wget -P ~/.config/kitty/ 'https://raw.githubusercontent.com/igrmk/whiskers/refs/heads/main/whiskers_256x256.png'
wget -P ~/.config/kitty/ 'https://raw.githubusercontent.com/igrmk/whiskers/refs/heads/main/whiskers_1024x1024.png'
wget -P ~/.config/kitty/ 'https://raw.githubusercontent.com/igrmk/whiskers/refs/heads/main/whiskers.svg'
# install icon (.png variant because .svg support for application icons still seems a bit shaky)
echo '[Desktop Entry]
Categories=System;TerminalEmulator;
Comment=Fast, feature-rich, GPU based terminal
Exec=kitty
GenericName=Terminal emulator
Icon=/home/blue/.config/kitty/whiskers_1024x1024.png
Name=kitty' > /home/blue/.local/share/applications/kitty.desktop
