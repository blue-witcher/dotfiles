function ls --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink' --description 'alias ls=eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink'
    eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink $argv
end
