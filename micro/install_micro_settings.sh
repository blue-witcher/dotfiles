#!/bin/bash

# make '~/.config/micro/' folder and parent folders if not exist already
mkdir -p ~/.config/micro/

# move existing settings.json file out of the way if it exists
mv ~/.config/micro/settings.json ~/.config/micro/settings.json.backup 

# symlink settings file
ln -s ~/dotfiles/micro/settings.json ~/.config/micro/
