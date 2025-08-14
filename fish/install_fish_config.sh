#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# move existing config.fish and make folders
mv -i  ~/.config/fish/config.fish  ~/.config/fish/config.fish.backup
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/fish/conf.d

# symlink config.fish, functions/ and conf.d/
ln -s   "$SCRIPT_DIR"/config.fish   ~/.config/fish/
## if statement because bash is dumb
## if there are no *.fish files in the directory, this command makes a symlink to ~/dotfiles/fish/conf.d/*.fish.
## Because of that, we need to check if there is a *.fish file first and only execute the symlinking if there is
if ls "$SCRIPT_DIR"/conf.d/*.fish 2> /dev/null; then
    ln -s "$SCRIPT_DIR"/conf.d/*.fish ~/.config/fish/conf.d/
fi
if ls "$SCRIPT_DIR"/functions/*.fish 2> /dev/null; then
    ln -s "$SCRIPT_DIR"/functions/*.fish ~/.config/fish/functions/
fi
# set keybinds
fish -c 'fish_hybrid_key_bindings'

# set theme
fish -c 'fish_config theme save Dracula'

# set keyboard layout
fish -c "
read -P 'Which keyboard layout do you use? Colemak-(D)H, qwert(y) or qwert(z)?' layout
switch \"\$(string lower \$layout)\"
    case 'y*'
        set -Ux kb_layout 'qwerty'
    case 'd*'
        set -Ux kb_layout 'colemak-dh'
    case 'z*'
        set -Ux kb_layout 'qwertz'
    case '*'
        echo 'No keyboard layout set.'
end"
