if status is-interactive
    if type -q kitten
        abbr -a cb 'kitten clipboard'
    else
        abbr -a cb 'wl-copy'
    end
    abbr -a pst 'wl-paste'
end
