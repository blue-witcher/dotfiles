#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# make needed folders if not exist already
mkdir -p ~/.local/share/kf6/searchproviders

# symlink files
if ls "$SCRIPT_DIR"/*.desktop; then
	ln -s "$SCRIPT_DIR"/*.desktop ~/.local/share/kf6/searchproviders/
fi
