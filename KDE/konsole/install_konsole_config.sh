#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make directories if not already exist
mkdir -p ~/.config
mkdir -p ~/.local/share/konsole

# backup previous konsolerc
mv ~/.config/konsolerc ~/.config/konsolerc.backup

# symlink files
ln -s "$SCRIPT_DIR"/konsolerc ~/.config/
ln -s "$SCRIPT_DIR"/colorschemesAndProfiles/* ~/.local/share/konsole/
