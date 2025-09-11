function kb_layout
    argparse -x 'c,d,z,y,n' 'c/colemak' 'd/colemak-dh' 'z/qwertz' 'y/qwerty' 'n/none' -- $argv
    if set -qf _flag_colemak
        set -Ux kb_layout colemak
        echo "New keyboard-layout: $kb_layout"
    else if set -qf _flag_colemak_dh
        set -Ux kb_layout colemak-dh
        echo "New keyboard-layout: $kb_layout"
    else if set -qf _flag_qwerty
        set -Ux kb_layout qwerty
        echo "New keyboard-layout: $kb_layout"
    else if set -qf _flag_qwertz
        set -Ux kb_layout qwertz
        echo "New keyboard-layout: $kb_layout"
    else if set -qf _flag_none
        set -Ux kb_layout ''
        echo "Keyboard-layout set to empty"
    else
        echo "Current keyboard-layout is: $kb_layout"
        return
    end
    exec fish
end
