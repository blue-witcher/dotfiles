function private --description 'Toggle fish private mode'
    argparse 'h/help' 's/status' 'n/new' 'r/replace' -- $argv

    # help flag
    function __private_help
        echo -se \
            '-h/--help      Show help' '\n'\
            '-s/--status    Show if private mode is on' '\n'\
            '-n/--new       Start new private fish shell inside of current shell' '\n'\
            '-r/--replace   Replace current shell with private fish shell.'
    end

    # status flag
    function __private_status
        if set -q fish_private_mode
            echo "Private mode is on."
        else
            echo "Private mode is off."
        end
    end

    # new shell flag
    function __private_new
        echo "Opening new private fish shell."
        fish --private
    end

    # replace shell
    function __private_replace
        echo "Replacing shell with private fish shell."
        exec fish --private
    end

    # main
    function __private_main
        if set -q fish_private_mode
            set -ge fish_private_mode
            echo "Fish private mode is now off."
        else
            set -g fish_private_mode
            echo "Fish private mode is now on."
        end
    end

    # execute
    if set -ql _flag_help
        __private_help
    else if set -ql _flag_status
        __private_status
    else if set -ql _flag_replace
        __private_replace
    else if set -ql _flag_new
        __private_new
    else
        __private_main
    end
end
