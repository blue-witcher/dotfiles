if status is-interactive
    if command -q bat
        # replace cat with plain bat
        abbr -a cat     'bat -p'
        abbr -a catp    'bat -pp'
    end

    if command -q batman
        abbr -a man     'batman'
    end

    if command -q batgrep
        abbr -a bse     'batgrep -i'
        abbr -a brg     'batgrep'
    end

    if command -q batdiff
        abbr -a bdiff   'batdiff'
    end
end
