if status is-interactive
    if command -q fzf
        fzf --fish | source

    end

end
