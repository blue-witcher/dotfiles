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
        bind -s -M visual -m default ' y'   'fish_clipboard_copy; commandline -f end-selection repaint-mode'
        bind -s -M default      ' y'        fish_clipboard_copy

        # vi mode colemak-dh bindings
        if test "$kb_layout" = 'colemak-dh'
            # hjkl -> neio
            set -l colemak_dh_h n
            set -l colemak_dh_j e
            set -l colemak_dh_k i
            set -l colemak_dh_l o
            # neio -> hjkl
            set -l colemak_dh_n h
            set -l colemak_dh_e j
            set -l colemak_dh_i k
            set -l colemak_dh_o l
            # upper case
            set -l colemak_dh_H (string upper $colemak_dh_h)
            set -l colemak_dh_J (string upper $colemak_dh_j)
            set -l colemak_dh_K (string upper $colemak_dh_k)
            set -l colemak_dh_L (string upper $colemak_dh_l)
            set -l colemak_dh_H (string upper $colemak_dh_n)
            set -l colemak_dh_E (string upper $colemak_dh_e)
            set -l colemak_dh_I (string upper $colemak_dh_i)
            set -l colemak_dh_O (string upper $colemak_dh_o)
            # cursor movement
            bind -s -M default  $colemak_dh_l       forward-char
            bind -s -M visual   $colemak_dh_l       forward-char
            bind -s -M default  $colemak_dh_h       backward-char
            bind -s -M visual   $colemak_dh_h       backward-char
            bind -s             $colemak_dh_j       down-or-search
            bind -s             $colemak_dh_J       end-of-line delete-char
            bind -s -M visual   $colemak_dh_j       down-line
            bind -s             $colemak_dh_k       up-or-search
            bind -s             $colemak_dh_K       'man (commandline -t) 2>/dev/null; or echo -n \a'
            bind -s -M visual   $colemak_dh_k       up-line
            # other hjkl -> neio
            # displaced l -> o
            bind -s -M default  d,$colemak_dh_l     delete-char
            bind -s -m insert   c,$colemak_dh_l     begin-selection kill-selection end-selection repaint-mode
            bind -s -M default  y,$colemak_dh_l     begin-selection kill-selection yank end-selection
            # displaced h -> n
            bind -s -M default  d,$colemak_dh_h backward-char delete-char
            bind -s -m insert   c,$colemak_dh_h backward-char begin-selection kill-selection end-selection repaint-mode
            bind -s -M default  y,$colemak_dh_h backward-char begin-selection kill-selection yank end-selection

            # displaced binds from cursor rebinds aka neio -> hjkl
            ## displaced i -> k
            bind -s -m insert   $colemak_dh_i       repaint-mode
            bind -s -m insert   $colemak_dh_I       beginning-of-line repaint-mode
            bind -s -M visual -m insert $colemak_dh_i end-selection repaint-mode
            bind -s -M visual -m insert $colemak_dh_I end-selection beginning-of-line repaint-mode
            bind -s -M default  d,$colemak_dh_i,w   forward-single-char forward-single-char backward-word kill-word
            bind -s -M default  d,$colemak_dh_i,W   forward-single-char forward-single-char backward-bigword kill-bigword
            bind -s -M default  d,$colemak_dh_i,b   jump-till-matching-bracket and jump-till-matching-bracket and begin-selection jump-till-matching-bracket kill-selection end-selection
            bind -s -M default  d,$colemak_dh_i     backward-jump-till and repeat-jump-reverse and begin-selection repeat-jump kill-selection end-selection
            bind -s -m insert   c,$colemak_dh_i,w   forward-single-char forward-single-char backward-word kill-word repaint-mode
            bind -s -m insert   c,$colemak_dh_i,W   forward-single-char forward-single-char backward-bigword kill-bigword repaint-mode
            bind -s -m insert   c,$colemak_dh_i,b   jump-till-matching-bracket and jump-till-matching-bracket and begin-selection jump-till-matching-bracket kill-selection end-selection
            bind -s -m insert   c,$colemak_dh_i     backward-jump-till and repeat-jump-reverse and begin-selection repeat-jump kill-selection end-selection repaint-mode
            bind -s -M default  y,$colemak_dh_i,w   forward-single-char forward-single-char backward-word kill-word yank
            bind -s -M default  y,$colemak_dh_i,W   forward-single-char forward-single-char backward-bigword kill-bigword yank
            bind -s -M default  y,$colemak_dh_i,b   jump-till-matching-bracket and jump-till-matching-bracket and begin-selection jump-till-matching-bracket kill-selection yank end-selection
            bind -s -M default  y,$colemak_dh_i     backward-jump-till and repeat-jump-reverse and begin-selection repeat-jump kill-selection yank end-selection
            ## displaced o -> l
            bind -s -m insert   $colemak_dh_o      'set fish_cursor_end_mode exclusive' insert-line-under repaint-mode
            bind -s -m insert   $colemak_dh_O       'set fish_cursor_end_mode exclusive' insert-line-over repaint-mode
            bind -s -M visual   $colemak_dh_o      swap-selection-start-stop repaint-mode
            ## displaced e -> j
            bind -s             $colemak_dh_e       'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
            bind -s             $colemak_dh_E       'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
            bind -s -M visual   $colemak_dh_e       'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
            bind -s -M visual   $colemak_dh_E       'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
            bind -s -M default  g,$colemak_dh_e     backward-word
            bind -s -M default  g,$colemak_dh_E     backward-bigword
            bind -s -M default  d,$colemak_dh_e     kill-word
            bind -s -M default  d,$colemak_dh_E     kill-bigword
            bind -s -M default  d,g,$colemak_dh_e   backward-kill-word
            bind -s -M default  d,g,$colemak_dh_E   backward-kill-bigword
            bind -s -m insert   c,$colemak_dh_e     kill-word repaint-mode
            bind -s -m insert   c,$colemak_dh_E     kill-bigword repaint-mode
            bind -s -m insert   c,g,$colemak_dh_e   backward-kill-word repaint-mode
            bind -s -m insert   c,g,$colemak_dh_E   backward-kill-bigword repaint-mode
            bind -s -M default  y,$colemak_dh_e     kill-word yank
            bind -s -M default  y,$colemak_dh_E     kill-bigword yank
            bind -s -M default  y,g,$colemak_dh_e   backward-kill-word yank
            bind -s -M default  y,g,$colemak_dh_E   backward-kill-bigword yank
            bind -s -M visual   g,$colemak_dh_e     backward-word
            bind -s -M visual   g,$colemak_dh_E     backward-bigword
            ## displaced n
            ### there is no displaced n

            # history
            bind -s -M default  alt-$colemak_dh_k   up-or-search
            bind -s -M insert   alt-$colemak_dh_k   up-or-search
            bind -s -M default  alt-$colemak_dh_j   down-or-search
            bind -s -M insert   alt-$colemak_dh_j   down-or-search

            # move cursor words
            bind -s -M default  alt-$colemak_dh_l   nextd-or-forward-word
            bind -s -M insert   alt-$colemak_dh_l   nextd-or-forward-word
            bind -s -M visual   alt-$colemak_dh_l   nextd-or-forward-word
            bind -s -M default  alt-$colemak_dh_h   backward-word
            bind -s -M insert   alt-$colemak_dh_h   backward-word
            bind -s -M visual   alt-$colemak_dh_h   backward-word

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
