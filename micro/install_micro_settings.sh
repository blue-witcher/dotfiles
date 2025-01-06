#!/bin/bash

# make '~/.config/micro/colorschemes' folder and parent folders if not exist already
mkdir -p ~/.config/micro/colorschemes

# move existing settings.json file out of the way if it exists
mv ~/.config/micro/settings.json ~/.config/micro/settings.json.backup 

# symlink settings file
ln -s ~/dotfiles/micro/settings.json ~/.config/micro/

# symlink colorschemes
## if statement because bash is dumb
if ls ~/dotfiles/micro/colorschemes/* 2> /dev/null; then
    ln -s ~/dotfiles/micro/colorschemes/* ~/.config/micro/colorschemes/
fi
