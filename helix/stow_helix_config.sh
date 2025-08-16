#!/usr/bin/env bash

# check requirements
if ! command -v stow >/dev/null 2>&1; then
    echo 'You need to install gnu-stow'
fi

stow -t ~/.config/helix --no-folding --ignore='.*\.sh' -R .
