function ls --wraps='eza --color=always --group-directories-first --icons --smart-group --git' --description 'alias ls=eza --color=always --group-directories-first --icons --smart-group --git'
    eza --color=always --group-directories-first --icons --smart-group --git $argv
end
