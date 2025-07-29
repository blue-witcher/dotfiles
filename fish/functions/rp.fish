function rp --description 'Repeat the last command'
    argparse 'i/interactive' 'h/help' -- $argv
    or return

    # help text
    function __rp_help
        set -l help \
            "Repeat the last command in \$history."'\n\n'\
            "-h/--help          Show help"'\n'\
            "-i/--interactive   Confirm before running command"
        echo -es "$help"
    end

    # -i flag
    function __rp_interactive
        __rp_loop_protec
        read -l -n 1 -P "Execute \"$history[$count]\"? [Y/n] " ans
        switch "$(string lower "$ans")"
            case 'y' ''
                return 0
            case '*'
                return 1
        end
    end

    # loop protection, -S so the function uses the scope of the parent function/doesn't have its own scope
    function __rp_loop_protec -S
        # avoid endless loop
        set -f count 1
        while string match -q 'rp *' "$history[$count]" ;or string match -q 'rp' "$history[$count]" ;or not type -q (string split -f 1 ' ' $history[$count]) ;and test "$history[$count]" != ''
            set count (math "$count" +1)
        end
    end

    # main
    function __rp_main
        __rp_loop_protec
        if test "$history[$count]" = ''
            echo "Nothing to repeat."
            return 1
        end
        echo "Repeating \"$history[$count]\"" >&2 # >&2 so this doesn't get send to stdout, so it doesn't show up when redirecting or piping
        eval $history[$count]
    end

    # execute
    if set -lq _flag_help
        __rp_help
    else if set -lq _flag_interactive
        __rp_interactive ;and __rp_main
    else
        __rp_main
    end
end
