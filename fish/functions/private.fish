function private --description 'Toggle fish private mode'
    set -f _status (set -q fish_private_mode; echo $status)

    switch "$_status"
        case 1
            set -g fish_private_mode 1
			echo "Fish private mode is now on."
		case 0
			set -eg fish_private_mode
			echo "Fish private mode is now off."
    end

end
