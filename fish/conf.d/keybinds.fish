if status is-interactive
	# cursor movement
	bind -s -M default o forward-char
	bind -s -M visual o forward-char
	bind -s -M default n backward-char
	bind -s -M visual n backward-char
	bind -s e down-or-search
	bind -s E end-of-line delete-char
	bind -s -M visual e down-line
	bind -s i up-or-search
	bind -s I 'man (commandline -t) 2>/dev/null; or echo -n \a'
	bind -s -M visual i up-line
	# displaced binds from cursor rebinds
	## displaced i
	bind -s -m insert l repaint-mode
	bind -s -m insert L beginning-of-line repaint-mode
	bind -s -M visual -m insert l end-selection repaint-mode
	bind -s -M visual -m insert L end-selection beginning-of-line repaint-mode
	## displaced o
	bind -s -m insert k 'set fish_cursor_end_mode exclusive' insert-line-under repaint-mode
	bind -s -m insert K 'set fish_cursor_end_mode exclusive' insert-line-over repaint-mode
	bind -s -M visual k swap-selection-start-stop repaint-mode
	## displaced e
	bind -s --preset h 'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
	bind -s --preset H 'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
	bind -s --preset -M visual h 'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
	bind -s --preset -M visual H 'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
	## displaced n
	   
	# token history search
	bind -s -M default alt-i history-token-search-backward 
	bind -s -M insert alt-i history-token-search-backward 
	bind -s -M default alt-e history-token-search-forward
	bind -s -M insert alt-e history-token-search-forward

end
