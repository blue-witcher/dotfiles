if command -q zypper
    function yayy --wraps='zypper' --description 'alias yayy=sudo zypper'
      sudo zypper $argv
    end

else if command -q pacman ;and not command -q paru
	function yayy --wraps=pacman --description 'alias yayy=sudo pacman'
		sudo pacman $argv
	end

else if command -q nala
	function yayy --wraps=nala --description 'alias yayy=sudo nala'
        sudo nala $argv
    end
	
else
    function yayy
        echo 'Function not applicable.'
    end

end
