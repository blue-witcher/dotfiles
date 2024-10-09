#!/bin/bash

# make needed folders if not exist already
mkdir -p ~/.local/share/kf6/searchproviders

# symlink files
if ls ~/dotfiles/KDE/searchproviders/*.desktop; then
	ln -s ~/dotfiles/KDE/searchproviders/*.desktop ~/.local/share/kf6/searchproviders/
fi
