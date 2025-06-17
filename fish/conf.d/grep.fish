if status is-interactive
    if command -q rg
        abbr -a se 'rg -i'

    else if command -q grep
        abbr -a se 'grep -i'

    end

end
