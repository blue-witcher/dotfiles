if command -q eza
    function ls --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink' --description 'alias ls=eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink'
        eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink $argv

    end

else if command -q exa
    function ls --wraps='exa --color=always --group-directories-first --icons --git --links' --description 'alias ls=eza --color=always --group-directories-first --icons --git --links'
        exa --color=always --group-directories-first --icons --git --links $argv

    end

else
    abbr -a ls 'ls --group-directories-first'

end
