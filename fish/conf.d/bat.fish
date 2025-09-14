if status is-interactive
    for i in bat batcat
        if command -q $i
            abbr -a bat "$i --style full"
            abbr -a b "$i"
        end
    end

    if type -q cat
        abbr -a c cat
    end

    begin # bat utils
        if command -q batman
            abbr -a man batman
        end

        if command -q batgrep
            abbr -a bse 'batgrep -i'
            abbr -a brg batgrep
        end

        if command -q batdiff
            abbr -a bdiff batdiff
        end
    end # bat utils
end
