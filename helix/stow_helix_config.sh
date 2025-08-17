#!/usr/bin/env bash

# check requirements
if ! command -v stow >/dev/null 2>&1; then
    echo 'You need to install gnu-stow'
fi

mkdir -p ~/.config/helix
stow -t ~/.config/helix --no-folding --ignore='.*\.sh' -R .
