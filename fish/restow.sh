#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ~/.config/fish
stow -t ~/.config/fish/ --no-folding --ignore='.*\.sh' -R -d "$SCRIPT_DIR" .
