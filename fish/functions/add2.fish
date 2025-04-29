function add2 --wraps='set -a' --description='add values to variable if not already in it'
    for i in $argv[2..]
        if not contains $i $$argv[1]
            set -a $argv[1] $i
        end
    end
        
end
