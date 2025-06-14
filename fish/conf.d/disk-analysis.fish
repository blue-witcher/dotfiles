if status is-interactive
    # disk analysis
    if command -q dysk
        abbr -a df 'dysk'
    else
        abbr -a df 'df -h'
    end

    # file size analysis
    if command -q dust
        abbr -a du 'dust'
    else 
        abbr -a du 'du -hs'
    end
    
    if command -q ncdu
        abbr -a ncdu 'ncdu --color dark'
    end

end
