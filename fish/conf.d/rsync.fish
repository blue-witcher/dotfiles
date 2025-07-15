if status is-interactive
    if command -q rsync
        set -l -- flags --human-readable
        abbr -a rs      "rsync $flags"
        abbr -a rsync   "rsync $flags"
    end
end
