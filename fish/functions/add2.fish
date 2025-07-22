function add2 --description='add values to variable if not already in it'
    set _help 'Usage: add2 --var <var> <things to add to var>' '\n'                                     \
    'They will only be added if they are not already in the list.' '\n'                                 \
    'If one or more items from could not be adde because of this, the function will return 1.' '\n'     \
    'add2 can also work on files. For this, use the -f/--file flag instead.'

    argparse -x file,var 'f/file=' 'v/var=' 'h/help' -- $argv
    or begin echo -se $_help ;return ;end

    if not set -q _flag_file ;and not set -q _flag_var ;or set -ql _flag_help
        echo -se $_help
        return
    end

    # variable
    if set -q _flag_var
        if not set -q $_flag_var
            echo "\$$_flag_var doesn't exit. Creating.."
            set -g $_flag_var
        end

        for i in $argv
            if not contains $i $$_flag_var
                set -a $_flag_var $i
            else
                set --function present 1
            end
        end

        if set -qf present
            return 1
        end
    end

    # file
    if set -q _flag_file
        if not test -e $_flag_file
            echo "File $_flag_file doesn't exit. Creating.."
            touch $_flag_file
        end

        for i in $argv
            if not contains $i (cat $_flag_file)
                echo $i >> $_flag_file
            else
                set -f present 1
            end
        end

        if set -qf present
            return 1
        end
    end
end

# todo
# check if file exists
# check if var exists
# help text
