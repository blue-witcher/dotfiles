if command -q paru
    function yay --wraps=paru --description 'alias yay=paru'
      paru $argv
    end

else if command -q pacman
	function yay --wraps=zypper --description 'alias yay=zypper'
	  pacman $argv
	end

else if command -q zypper
    function yay --wraps=zypper --description 'alias yay=zypper'
      zypper $argv
    end

else
    function yay
        echo 'Function not applicable.'
    end

end
