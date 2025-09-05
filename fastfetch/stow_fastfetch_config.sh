#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if ! command -v stow >/dev/null 2>&1; then
    echo 'You need to install gnu-stow'
fi

mkdir -p ~/.config/fastfetch

stow -t ~/.config/fastfetch/ --ignore='stow.*\.sh' -d "$SCRIPT_DIR" .
