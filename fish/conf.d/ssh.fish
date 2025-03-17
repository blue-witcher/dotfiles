if status is-interactive
    if test $KITTY_PID
        abbr -a ssh 'kitten ssh'
    end
end
