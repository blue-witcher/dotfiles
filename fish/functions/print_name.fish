function print_name --description "Print file path using current working directory"
    for file in $argv
        if test -e $file
            echo -n (pwd -L)/
            echo $file
        else
            echo "File '$file' does not exist."
        end
    end
end
