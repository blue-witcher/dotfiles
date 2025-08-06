if status is-interactive
# advcpmv abbr
    if command -q advcp
        abbr -a cpp 'advcp -giv'
    end
    if command -q advmv
        abbr -a mvp 'advmv -giv'
    end

# rm cp mv abbr
    abbr -a rm 'rm -Iv'
    abbr -a mv 'mv -iv'
    abbr -a cp 'cp -iv'

# shred
    abbr -a shred 'shred -zu'

    command -q vidir ;and \
        abbr -a vidir 'vidir --verbose'
end
