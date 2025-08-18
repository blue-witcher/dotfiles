#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# check requirements
if command -v stow >/dev/null 2>&1; then
    mkdir -p ~/.config/fish
    stow -t ~/.config/fish/ --no-folding --ignore='.*\.sh' -d "$SCRIPT_DIR" .
else
    echo 'You need to install gnu-stow'
    exit
fi

if ! command -v fish >/dev/null 2>&1; then
    echo 'You need to install fish'
    exit
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
