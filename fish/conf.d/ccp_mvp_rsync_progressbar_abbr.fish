if status is-interactive
    if command -q rsync
        abbr -a cpp 'rsync --human-readable --info=progress2 --partial -a'
        abbr -a mvp 'rsync --human-readable --remove-source-files --info=progress2 --partial -a'
    end
end
