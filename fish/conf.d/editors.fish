if status is-interactive
    if command -q nvim
        abbr -a vi  nvim
        abbr -a vim nvim

    else if command -q vim
        abbr -a vi vim

    end

    if command -q ms-edit
        abbr -a edit ms-edit

    end
end
