if status is-interactive
    if command -q rsync
        set -l -- flags --human-readable
        abbr -a rs      "rsync $flags"
        abbr -a rsync   "rsync $flags"
        abbr -a rcp     "rsync $flags -a --info=progress2"
        abbr -a rmv     "rsync --remove-source-files $flags -a --info=progress2"
    end
end
