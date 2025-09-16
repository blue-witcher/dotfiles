function kb_layout
    argparse -x 'c,d,z,y,n,h' 'c/colemak' 'd/colemak-dh' 'z/qwertz' 'y/qwerty' 'n/none' 'h/help' -- $argv
    if set -qf _flag_help
        echo -es \
        'Set the kb_layout variable or show the current value.' '\n' \
        'Flags: ' 'c/colemak ' 'd/colemak-dh ' 'z/qwertz ' 'y/qwerty ' 'n/none ' 'h/help ' '\n' \
        'Sometimes it\'s better to just spawn a shell using "kb_layout=qwerty exec fish".'
        return
    else if set -qf _flag_colemak
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
