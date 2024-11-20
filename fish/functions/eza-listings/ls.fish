function ls --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes' --description 'alias ls=eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes'
    eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes $argv
end
