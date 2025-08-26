if status is-interactive
    if command -q rsync
        set -l -- flags --human-readable --info=progress2
        abbr -a rs      "rsync $flags"
        abbr -a rsync   "rsync $flags"
        abbr -a rcp     "rsync $flags -a"
        abbr -a rmv     "rsync --remove-source-files $flags -a"
    end
end
