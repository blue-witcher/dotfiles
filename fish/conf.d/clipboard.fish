if status is-interactive
    if test $TERM = 'xterm-kitty'
        abbr -a cb 'kitten clipboard'
    else
        abbr -a cb 'wl-copy'
    end
    abbr -a pst 'wl-paste'
end
