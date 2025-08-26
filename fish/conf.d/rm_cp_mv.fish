if status is-interactive
# advcpmv abbr
    if command -q advcp
        abbr -a cpp 'advcp -gvi'
    end
    if command -q advmv
        abbr -a mvp 'advmv -gvi'
    end

# rm cp mv abbr
    abbr -a rm 'rm -vI'
    abbr -a mv 'mv -vi'
    abbr -a cp 'cp -vi'

# shred
    abbr -a shred 'shred -zu'

    command -q vidir ;and \
        abbr -a vidir 'vidir --verbose'
end
