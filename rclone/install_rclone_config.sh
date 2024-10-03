#!/bin/bash

# make rclone folder if not exist already
mkdir -p ~/.config/rclone

# backup old rclone.conf if already exist
mv ~/.config/rclone/rclone.conf ~/.config/rclone/rclone.conf.backup

# copy rclone.conf to folder
cp ~/dotfiles/rclone/rclone.conf ~/.config/rclone/
