if status is-interactive
    if type -q eza
        abbr -a lsa 'ls -a'
        abbr -a lt 'ls --tree'
        abbr -a llt 'ls --total-size -Tl'
        abbr -a lta 'ls -Ta'
        abbr -a llta 'll --tree'
    end
end
