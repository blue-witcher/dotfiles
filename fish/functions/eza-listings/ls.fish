function ls --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlinks' --description 'alias ls=eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlinks'
    eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlinks $argv
end
