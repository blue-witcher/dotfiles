if status is-interactive
    # disk analysis
    if type -q dysk
        abbr -a df 'dysk'
    else
        abbr -a df 'df -h'
    end

    # file size analysis
    if type -q dust
        abbr -a du 'dust'
    else 
        abbr -a du 'du -hs'
    end
    
    if type -q ncdu
        abbr -a ncdu 'ncdu --color dark'
    end

end
