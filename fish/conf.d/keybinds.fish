if status is-interactive
    if not set -q kb_layout
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

    # vi mode general bindings
    if test "$fish_key_bindings" = 'fish_hybrid_key_bindings' ;or test "$fish_key_bindings" = 'fish_vi_key_bindings'
        # move token history with alt '<'/'>'
        bind -s -M default      alt-comma   history-token-search-backward
        bind -s -M insert       alt-comma   history-token-search-backward
        bind -s -M default      alt-.       history-token-search-forward
        bind -s -M insert       alt-.       history-token-search-forward
        bind -s -M default      ' p'        'set -g fish_cursor_end_mode exclusive' forward-char 'set -g fish_cursor_end_mode inclusive' fish_clipboard_paste
        bind -s -M default      ' P'        fish_clipboard_paste

        # vi mode colemak-dh bindings
        if test "$kb_layout" = 'colemak-dh'
            # cursor movement
            bind -s -M default  o       forward-char
            bind -s -M visual   o       forward-char
            bind -s -M default  n       backward-char
            bind -s -M visual   n       backward-char
            bind -s             e       down-or-search
            bind -s             E       end-of-line delete-char
            bind -s -M visual   e       down-line
            bind -s             i       up-or-search
            bind -s             I       'man (commandline -t) 2>/dev/null; or echo -n \a'
            bind -s -M visual   i       up-line
            # other hjkl -> neio
            # displaced l -> o
            bind -s -M default  d,o     delete-char
            bind -s -m insert   c,o     begin-selection kill-selection end-selection repaint-mode
            bind -s -M default  y,o     begin-selection kill-selection yank end-selection
            # displaced h -> n
            bind -s -M default  d,n backward-char delete-char
            bind -s -m insert   c,n backward-char begin-selection kill-selection end-selection repaint-mode
            bind -s -M default  y,n backward-char begin-selection kill-selection yank end-selection

            # displaced binds from cursor rebinds aka neio -> hjkl
            ## displaced i -> k
            bind -s -m insert   k       repaint-mode
            bind -s -m insert   K       beginning-of-line repaint-mode
            bind -s -M visual -m insert k end-selection repaint-mode
            bind -s -M visual -m insert K end-selection beginning-of-line repaint-mode
            bind -s -M default  d,k,w   forward-single-char forward-single-char backward-word kill-word
            bind -s -M default  d,k,W   forward-single-char forward-single-char backward-bigword kill-bigword
            bind -s -M default  d,k,b   jump-till-matching-bracket and jump-till-matching-bracket and begin-selection jump-till-matching-bracket kill-selection end-selection
            bind -s -M default  d,k     backward-jump-till and repeat-jump-reverse and begin-selection repeat-jump kill-selection end-selection
            bind -s -M insert   c,k,w   forward-single-char forward-single-char backward-word kill-word repaint-mode
            bind -s -M insert   c,k,W   forward-single-char forward-single-char backward-bigword kill-bigword repaint-mode
            bind -s -M insert   c,k,b   jump-till-matching-bracket and jump-till-matching-bracket and begin-selection jump-till-matching-bracket kill-selection end-selection
            bind -s -M insert   c,k     backward-jump-till and repeat-jump-reverse and begin-selection repeat-jump kill-selection end-selection repaint-mode
            bind -s -M default  y,k,w   forward-single-char forward-single-char backward-word kill-word yank
            bind -s -M default  y,k,W   forward-single-char forward-single-char backward-bigword kill-bigword yank
            bind -s -M default  y,k,b   jump-till-matching-bracket and jump-till-matching-bracket and begin-selection jump-till-matching-bracket kill-selection yank end-selection
            bind -s -M default  y,k     backward-jump-till and repeat-jump-reverse and begin-selection repeat-jump kill-selection yank end-selection
            ## displaced o -> l
            bind -s -m insert   l       'set fish_cursor_end_mode exclusive' insert-line-under repaint-mode
            bind -s -m insert   L       'set fish_cursor_end_mode exclusive' insert-line-over repaint-mode
            bind -s -M visual   l       swap-selection-start-stop repaint-mode
            ## displaced e -> j
            bind -s             j       'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
            bind -s             J       'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
            bind -s -M visual   j       'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
            bind -s -M visual   J       'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
            bind -s -M default  g,j     backward-word
            bind -s -M default  g,J     backward-bigword
            bind -s -M default  d,j     kill-word
            bind -s -M default  d,J     kill-bigword
            bind -s -M default  d,g,j   backward-kill-word
            bind -s -M default  d,g,J   backward-kill-bigword
            bind -s -m insert   c,j     kill-word repaint-mode
            bind -s -m insert   c,J     kill-bigword repaint-mode
            bind -s -m insert   c,g,j   backward-kill-word repaint-mode
            bind -s -m insert   c,g,J   backward-kill-bigword repaint-mode
            bind -s -M default  y,j     kill-word yank
            bind -s -M default  y,J     kill-bigword yank
            bind -s -M default  y,g,j   backward-kill-word yank
            bind -s -M default  y,g,J   backward-kill-bigword yank
            bind -s -M visual   g,j     backward-word
            bind -s -M visual   g,J     backward-bigword
            ## displaced n
            ### there is no displaced n

            # history
            bind -s -M default  alt-i   up-or-search
            bind -s -M insert   alt-i   up-or-search
            bind -s -M default  alt-e   down-or-search
            bind -s -M insert   alt-e   down-or-search

            # move cursor words
            bind -s -M default  alt-o   nextd-or-forward-word
            bind -s -M insert   alt-o   nextd-or-forward-word
            bind -s -M visual   alt-o   nextd-or-forward-word
            bind -s -M default  alt-n   backward-word
            bind -s -M insert   alt-n   backward-word
            bind -s -M visual   alt-n   backward-word

        # vi mode qwerty/qwertz bindings
        else if test "$kb_layout" = 'qwerty' -o "$kb_layout" = "qwertz" -o "$kb_layout" = ''
            # history
            bind -s -M default  alt-k   up-or-search
            bind -s -M insert   alt-k   up-or-search
            bind -s -M default  alt-j   down-or-search
            bind -s -M insert   alt-j   down-or-search

            # move cursor words
            bind -s -M default  alt-l   nextd-or-forward-word
            bind -s -M insert   alt-l   nextd-or-forward-word
            bind -s -M visual   alt-l   nextd-or-forward-word
            bind -s -M default  alt-h   backward-word
            bind -s -M insert   alt-h   backward-word
            bind -s -M visual   alt-h   backward-word
        end

    # default mode bindings
    else if test "$fish_key_bindings" = 'fish_default_key_bindings'
        # history with alt '<'/'>'
        bind -s -M default      alt-comma   up-or-search
        bind -s -M default      alt-.       down-or-search
    end
end
