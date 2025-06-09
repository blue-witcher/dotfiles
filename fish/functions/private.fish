function private --description 'Toggle fish private mode'
    argparse 'h/help' 's/status' -- $argv
# help flag
    if set -q _flag_help
        echo -se '-h/--help' '\n' '-s/--status'
        return
    end

    set -f _status (set -q fish_private_mode; echo $status)

# Status flag
    if set -q _flag_status
        switch "$_status"
            case 1
                echo "Private mode is off."
            case 0
                echo "Private mode is on."
        end
        return
    end

# main function
    switch "$_status"
        case 1
            set -g fish_private_mode 1
			echo "Fish private mode is now on."
		case 0
			set -eg fish_private_mode
			echo "Fish private mode is now off."
    end

end
