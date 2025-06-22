if status is-interactive
    if string match -q -- '*kitty*' "$TERM" ;and command -q kitten
        abbr -a icat    'kitten icat'
        abbr -a ssh     'kitten ssh'
        abbr -a ed      'kitten edit-in-kitty'
        abbr -a kiff    'kitten diff'
        abbr -a trans   'kitten transfer -c -d'
    end
end
