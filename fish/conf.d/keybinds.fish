if status is-interactive
	if test "$fish_key_bindings" = 'fish_hybrid_key_bindings' ;or test "$fish_key_bindings" = 'fish_vi_key_bindings' ;and test "$kb_layout" = 'colemak-dh'
		# cursor movement
		bind -s -M default  o       forward-char
		bind -s -M visual   o       forward-char
		bind -s -M default  n       backward-char
		bind -s -M visual   n       backward-char
		bind -s             e       down-or-search
		bind -s             E       end-of-line delete-char
		bind -s -M visual   e       down-line
		bind -s             i       up-or-search
		bind -s             I       'man (commandline -t) 2>/dev/null; or echo -n \a'
		bind -s -M visual   i       up-line
		# displaced binds from cursor rebinds
		## displaced i
		bind -s -m insert   l       repaint-mode
		bind -s -m insert   L       beginning-of-line repaint-mode
		bind -s -M visual -m insert l end-selection repaint-mode
		bind -s -M visual -m insert L end-selection beginning-of-line repaint-mode
		## displaced o
		bind -s -m insert   k       'set fish_cursor_end_mode exclusive' insert-line-under repaint-mode
		bind -s -m insert   K       'set fish_cursor_end_mode exclusive' insert-line-over repaint-mode
		bind -s -M visual   k       swap-selection-start-stop repaint-mode
		## displaced e
		bind -s             h       'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
		bind -s             H       'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
		bind -s -M visual   h       'set fish_cursor_end_mode exclusive' forward-single-char forward-word backward-char 'set fish_cursor_end_mode inclusive'
		bind -s -M visual   H       'set fish_cursor_end_mode exclusive' forward-single-char forward-bigword backward-char 'set fish_cursor_end_mode inclusive'
		## displaced n
        ### there is no displaced n
		# token history search
		bind -s -M default  alt-i   history-token-search-backward
		bind -s -M insert   alt-i   history-token-search-backward
		bind -s -M default  alt-e   history-token-search-forward
		bind -s -M insert   alt-e   history-token-search-forward

		# move cursor words
		bind -s -M default  alt-o   nextd-or-forward-word
		bind -s -M insert   alt-o   nextd-or-forward-word
		bind -s -M visual   alt-o   nextd-or-forward-word
		bind -s -M default  alt-n   backward-word
		bind -s -M insert   alt-n   backward-word
		bind -s -M visual   alt-n   backward-word

    else if test "$fish_key_bindings" = 'fish_hybrid_key_bindings' ;or test "$fish_key_bindings" = 'fish_vi_key_bindings' ;and test "$kb_layout" = 'qwerty' -o "$kb_layout" = ''
		# token history search
		bind -s -M default  alt-k   history-token-search-backward
		bind -s -M insert   alt-k   history-token-search-backward
		bind -s -M default  alt-j   history-token-search-forward
		bind -s -M insert   alt-j   history-token-search-forward

		# move cursor words
		bind -s -M default  alt-l   nextd-or-forward-word
		bind -s -M insert   alt-l   nextd-or-forward-word
		bind -s -M visual   alt-l   nextd-or-forward-word
		bind -s -M default  alt-h   backward-word
		bind -s -M insert   alt-h   backward-word
		bind -s -M visual   alt-h   backward-word
    end

    # move history with alt '<'/'>'
    bind -s -M default      alt-comma   up-or-search
    bind -s -M visual       alt-comma   up-line
    bind -s -M insert       alt-comma   up-or-search
    bind -s -M default      alt-.       down-or-search
    bind -s -M visual       alt-.       down-line
    bind -s -M insert       alt-.       down-or-search
end
