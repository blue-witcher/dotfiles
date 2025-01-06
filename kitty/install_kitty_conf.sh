#!/bin/bash

# make directory
mkdir -p ~/.config/kitty

# move old kitty.conf out of the way
mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.bakup 

# symlink main settings file
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/

# symlink the themes
## if statement because bash is dumb
## if there are no *.fish files in the directory, this command makes a symlink to ~/dotfiles/fish/conf.d/*.fish.
## Because of that, we need to check if there is a *.fish file first and only execute the symlinking if there is
if ls ~/dotfiles/kitty/themes/* 2> /dev/null; then
	ln -s ~/dotfiles/kitty/themes/* ~/.config/kitty/
fi

# download whiskers icon from https://github.com/igrmk/whiskers
wget -P ~/.config/kitty/ 'https://raw.githubusercontent.com/igrmk/whiskers/refs/heads/main/whiskers_256x256.png'
wget -P ~/.config/kitty/ 'https://raw.githubusercontent.com/igrmk/whiskers/refs/heads/main/whiskers.svg'
# install icon
sed -i 's/Icon=.*/Icon=\/home\/blue\/\.config\/kitty\/whiskers\.svg/' ~/.local/share/applications/kitty.desktop
