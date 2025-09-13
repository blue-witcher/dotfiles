#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ~/.config/helix

echo -n 'Link (q)wert* or (c)olemak version of config? [q/c]: ' ; read kb
case $kb in
    [cC] ) ln -srb "$SCRIPT_DIR"/config_colemak.toml -T "$HOME"/.config/helix/config.toml ;;
    [qQ] ) ln -srb "$SCRIPT_DIR"/config_qwert.toml -T "$HOME"/.config/helix/config.toml ;;
    * ) echo 'No config linked.' ;;
esac
