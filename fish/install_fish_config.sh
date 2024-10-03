#!/bin/bash

# make '~/.config/micro/' folder and parent folders if not exist already
mkdir -p ~/.config/fish/

# move existing settings.json file out of the way if it exists
mv ~/.config/fish/config.fish ~/.config/fish/config.fish.backup 

# symlink settings file
ln -s ~/dotfiles/fish/config.fish ~/.config/fish/
