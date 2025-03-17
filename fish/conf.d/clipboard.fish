if status is-interactive
    if test # $KITTY_PID # disabled since I like wl-copy more
        abbr -a cb 'kitten clipboard'
    else
        abbr -a cb 'wl-copy'
    end
    abbr -a pst 'wl-paste'
end
