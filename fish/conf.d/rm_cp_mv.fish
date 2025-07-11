if status is-interactive
# advcpmv abbr
    if command -q advcp
        abbr -a acp 'advcp -gi'
    end
    if command -q advmv
        abbr -a amv 'advmv -gi'
    end

# rm cp mv abbr
    abbr -a rm 'rm -I'
    abbr -a mv 'mv -i'
    abbr -a cp 'cp -i'

# shred
    abbr -a shred 'shred -zu'

end
