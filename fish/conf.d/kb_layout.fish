if status is-interactive ;and not set -q kb_layout
    read -P 'Which keyboard layout do you use? Colemak-(D)H, qwert(y) or qwert(z)?' layout
    switch "$(string lower $layout)"
        case 'y'
            set -Ux kb_layout 'qwerty'
        case 'd'
            set -Ux kb_layout 'colemak-dh'
        case 'z'
            set -Ux kb_layout 'qwertz'
        case '*'
            echo 'No keyboard layout set.'
    end
end
