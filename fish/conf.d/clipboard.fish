if status is-interactive
    if string match -q -- '*kitty*' "$TERM" ;and command -q kitten
        abbr -a cb 'kitten clipboard'
        abbr -a pst 'kitten clipboard -g'
    else if command -q wl-copy
        abbr -a cb 'wl-copy'
        abbr -a pst 'wl-paste'
    end
end
