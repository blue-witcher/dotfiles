if status is-interactive
    if type -q eza
        abbr -a ls1 'ls -1'
        abbr -a lsa 'ls -a'
        abbr -a lt 'ls --tree'
        abbr -a llt 'ls -Tl'
        abbr -a lta 'ls -Ta'
        abbr -a llta 'll --tree'
    end
end
