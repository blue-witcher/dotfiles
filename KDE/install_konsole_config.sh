#!/bin/bash

# make directories if not already exist
mkdir -p ~/.config
mkdir -p ~/.local/share/konsole/

# backup previous konsolerc
mv ~/.config/konsolerc ~/.config/konsolerc.backup

# symlink files
ln -s ~/dotfiles/KDE/konsolerc ~/.config/
ln -s ~/dotfiles/KDE/.local/share/konsole/* ~/.local/share/konsole
