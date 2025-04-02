if status is-interactive
    if type -q eza
        abbr -a ls1 'ls -1'
        abbr -a lsa 'ls -a'
        abbr -a lsa1 'ls -a1'
        abbr -a lt 'ls --tree'
        abbr -a llt 'ls -Tl'
        abbr -a lta 'ls -Ta'
        abbr -a llta 'll --tree'
        abbr -a lsr 'ls -R'
        abbr -a llr 'll -R'
        abbr -a lsar 'ls -aR'
        abbr -a lsr1 'ls -R1'
    else
        abbr -a lsa 'ls -a'
        abbr -a ls1 'ls -1'
        abbr -a lsa1 'ls -a1'
        abbr -a lsr 'ls -R'
        abbr -a llr 'll -R'
        abbr -a lsar 'ls -aR'
        abbr -a lsr1 'ls -R1'
    end
end
