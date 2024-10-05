function ll --wraps=ls --wraps='eza -al --color=always --group-directories-first --icons' --description 'alias ll=eza -al --color=always --group-directories-first --icons'
  eza -al --color=always --group-directories-first --icons $argv
        
end
