if status is-interactive
    if test $TERM = 'xterm-kitty'
        abbr -a cb 'kitten clipboard'
    else
        abbr -a cb 'fish_clipboard_copy'
        abbr -a pst 'fish_clipboard_paste'
    end
end
