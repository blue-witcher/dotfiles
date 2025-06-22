#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make '~/.config/micro/colorschemes' folder and parent folders if not exist already
mkdir -p ~/.config/micro/colorschemes

# move existing settings.json file out of the way if it exists
mv ~/.config/micro/settings.json ~/.config/micro/settings.json.backup 

# symlink settings file
ln -s "$SCRIPT_DIR"/settings.json ~/.config/micro/

# symlink colorschemes
## if statement because bash is dumb
if ls "$SCRIPT_DIR"/colorschemes/* 2> /dev/null; then
    ln -s "$SCRIPT_DIR"/colorschemes/* ~/.config/micro/colorschemes/
fi
