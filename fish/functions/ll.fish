if command -q eza
    function ll --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink -al' --description 'alias ll=ls -al'
        ls -alh $argv
    end

else if command -q exa
    function ll --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink -al' --description 'alias ll=ls -al'
        ls -al $argv
    end
end
