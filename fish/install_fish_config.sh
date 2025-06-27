#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# move existing config.fish, functions/ and conf.d/ out of the way if they exist
mv -Tn  ~/.config/fish/config.fish  ~/.config/fish/config.fish.backup
mv -Tn  ~/.config/fish/functions    ~/.config/fish/old_functions
mv -Tn  ~/.config/fish/conf.d       ~/.config/fish/old_conf.d

# symlink config.fish, functions/ and conf.d/
ln -s   "$SCRIPT_DIR"/config.fish   ~/.config/fish/
ln -sT  "$SCRIPT_DIR"/functions     ~/.config/fish/functions
ln -sT  "$SCRIPT_DIR"/conf.d        ~/.config/fish/conf.d

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
