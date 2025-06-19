if status is-interactive
    if command -q nvim
        abbr -a vi  nvim
        abbr -a vim nvim

    else if command -q vim
        abbr -a vi vim

    end

    for i in ms-edit msedit
        if command -q $i
            abbr -a edit $i
        end
    end
end
