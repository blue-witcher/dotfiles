if status is-interactive
    if type -q bat
        # replace cat with plain bat
        abbr -a cat 'bat -p'
        abbr -a catp 'bat -pp'
    end
end
