function ls --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links' --description 'alias ls=eza --color=always --group-directories-first --icons --smart-group --git --links'
    eza --color=always --group-directories-first --icons --smart-group --git --links $argv
end
