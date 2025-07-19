if status is-interactive
    if command -q zoxide
        zoxide init fish | source
        abbr -a dse                 'zoxide query -i'
        abbr -a f   --set-cursor    'cd (zoxide query -i %)'
        switch $kb_layout
            case qwertz
                abbr -a y z
        end

    else if type -q cd
        switch $kb_layout
            case 'qwertz'
                abbr -a y cd
            case '*'
                abbr -a z cd
        end
    end
end
