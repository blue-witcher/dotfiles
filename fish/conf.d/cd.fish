if status is-interactive
    if command -q zoxide
        zoxide init fish | source
        abbr -a dse                 'zoxide query -i'
        abbr -a f   --set-cursor    'cd (zoxide query -i %)'
    else if type -q cd
        abbr -a z 'cd'
    end
end
