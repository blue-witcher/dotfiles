#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ~/.config/fastfetch

# backup old fastfetch config
mv ~/.config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc.backup

# link fastfetch config
ln -s "$SCRIPT_DIR"/config.jsonc ~/.config/fastfetch/
