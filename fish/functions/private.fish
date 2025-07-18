function private --description 'Toggle fish private mode'
    argparse 'h/help' 's/status' -- $argv

    # help flag
    function __private_help
        echo -se '-h/--help' '\n' '-s/--status'
    end

    # status flag
    function __private_status
        if set -q fish_private_mode
            echo "Private mode is on."
        else
            echo "Private mode is off."
        end
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

    if set -ql _flag_help
        __private_help
    else if set -ql _flag_status
        __private_status
    else
        __private_main
    end
end
