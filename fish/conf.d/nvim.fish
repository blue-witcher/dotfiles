if status is-interactive
	if command -q nvim
		abbr -a vi nvim
	else if command -q vim
		abbr -a vi vim
	end
end
	
