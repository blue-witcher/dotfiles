if status is-interactive
    if test $KITTY_PID
        abbr -a icat 'kitten icat'
        abbr -a kb 'kitten clipboard'
        abbr -a kps 'kitten clipboard -g'
        abbr -a ssh 'kitten ssh'
    end

end
