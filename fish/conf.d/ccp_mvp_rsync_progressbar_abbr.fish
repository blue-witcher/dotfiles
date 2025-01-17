if status is-interactive
    if type -q rsync
        abbr -a cpp 'rsync --info=progress2 -a'
        abbr -a mvp 'rsync --remove-source-files --info=progress2 -a'
    end
end
