function print_filepath --description "Print file path using current working directory"
    for file in $argv
        echo -n (pwd -L)/
        echo $file
    end
end
