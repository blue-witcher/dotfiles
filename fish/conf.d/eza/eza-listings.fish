function ls --wraps='eza --color=always --group-directories-first --icons' --description 'alias ls=eza --color=always --group-directories-first --icons'
  eza --color=always --group-directories-first --icons $argv
        
end
function lsa --wraps='ls -a' --description 'alias lsa=ls -a'
  ls -a $argv
        
end
function ll --wraps='ls -al' --description 'alias ll=ls -al'
  ls -al $argv
        
end
function lt --wraps='ls -lT' --description 'alias lt=ls -lT'
  ls -lT $argv
        
end
function lta --wraps='lt -a' --description 'alias lta=lt -a'
  lt -a $argv
        
end
