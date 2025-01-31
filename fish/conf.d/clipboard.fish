if status is-interactive
    if test $KITTY_PID
        abbr -a cb 'kitten clipboard'
    else
        abbr -a cb 'wl-copy'
    end
    abbr -a pst 'wl-paste'
end
