if status is-interactive
    if command -q bat
        # replace cat with plain bat
        abbr -a cat 'bat -p'
        abbr -a catp 'bat -pp'
    end
end
