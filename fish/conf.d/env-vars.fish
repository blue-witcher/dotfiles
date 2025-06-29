if status is-interactive
    # sort by priority
    set -l editors      nvim micro vim nano
    set -l pagers       less

    function set_env
        for i in $argv[2..]
            if command -q $i
                set -gx $argv[1] $i
                return
            end
        end
    end

    set_env EDITOR $editors
    set_env VISUAL $editors
    set_env PAGER  $pagers
end
