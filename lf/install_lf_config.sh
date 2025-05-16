#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make directories
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/lf

# link files
ln -s "$SCRIPT_DIR"/lfrc       ~/.config/lf/
ln -s "$SCRIPT_DIR"/lf.fish    ~/.config/fish/functions/
