if status is-interactive
# zoxide
    if command -q zoxide
        zoxide init fish | source
        abbr -a dse                 'zoxide query -i'
        switch $kb_layout
            case qwertz
                abbr -a y z
        end

# cd
    else if type -q cd
        switch $kb_layout
            case 'qwertz'
                abbr -a y cd
            case 'colemak*' 'qwerty'
                abbr -a z cd
            case '*'
                abbr -a z cd
                abbr -a y cd
        end
    end
end
