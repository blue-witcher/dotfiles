function run --wraps='sudo' --description 'run detached with no output'
    $argv &>/dev/null& ;disown
        
end
