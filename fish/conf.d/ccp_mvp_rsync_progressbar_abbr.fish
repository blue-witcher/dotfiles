if status is-interactive
    if type -q rsync
        abbr -a cpp 'rsync --info=progress2 -ha'
        abbr -a mvp 'rsync --remove-source-files --info=progress2 -ha'
    end
end
