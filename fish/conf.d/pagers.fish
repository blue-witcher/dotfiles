if status is-interactive
    # sort by priority
    set -l pagers       less

    function set_pager
        for pager in $argv
            if command -q $pager
                set -gx PAGER $pager
                return
            end
        end
    end
    set_pager $pagers
end
