if status is-interactive
    for i in 'bat' 'batcat'
        if command -q $i
            abbr -a bat     "$i"
            abbr -a b       "$i"
            abbr -a cat     "$i --style grid,header-filename"
            abbr -a c       "$i --style grid,header-filename"
            abbr -a catp    "$i -pp"
            abbr -a cc      "$i -pp"
        end
    end
    if not command -q 'bat' 'batcat' ;and command -q cat
        abbr -a c 'cat'
    end

    begin # bat utils
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
    end # bat utils
end
