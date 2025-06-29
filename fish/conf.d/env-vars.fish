if status is-interactive
    # sort by priority
    set -l PAGERS       bat batcat less
    set -l EDITORS      nvim micro vim nano

    function set_env
        for i in $argv[2..]
            if command -q $i
                set -gx $argv[1] $i
                return
            end
        end
    end

    set_env PAGER $PAGERS
    set_env EDITOR $EDITORS
end
