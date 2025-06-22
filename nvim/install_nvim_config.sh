#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ~/.config/nvim
ln -s "$SCRIPT_DIR"/init.lua     ~/.config/nvim/
ln -s "$SCRIPT_DIR"/lua          ~/.config/nvim/
