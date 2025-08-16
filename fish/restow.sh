#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

stow -t ~/.config/fish/ --no-folding --ignore='.*\.sh' -d "$SCRIPT_DIR" .
