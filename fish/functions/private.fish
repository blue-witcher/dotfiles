function private --description 'Toggle fish private mode'
	switch "$fish_private_mode"
		case ''
			set -g fish_private_mode 1
			echo "Fish private mode is now on."
		case '0'
			set -g fish_private_mode 1  
			echo "Fish private mode is now on."
		case '1'
			set -eg fish_private_mode
			echo "Fish private mode is now off."
	end

end
