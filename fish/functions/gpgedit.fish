#!/usr/bin/env fish

function gpgedit --description "Edit encrypted gpg message-files."
    # check dependencies
    set -f _dependencies gpg vipe

    for i in $_dependencies
        if not command -q $i
            echo "$i not found."
            set -f _missing_dependency 1
        end
    end

    switch $_missing_dependency
        case 1
            return 1
    end

    # parse arguments
    set -f options 'f/file=' 'r/recipient=+' 'R/hidden-recipient=+' 'o/output=' 'O/override' 'h/help'
    set -f exclusive_options '-x' 'r,R' 'output,override'
    argparse $options $exlusive_options -- $argv

    # help flag
    if set -ql _flag_help
        echo -se "Flags:\n"                                             '\n' \
            "-f/--file - file to edit"                             '\n' '\n' \
            "-r/--recipient"                                            '\n' \
            "OR -R/--hidden-recipient"                             '\n' '\n' \
            "-o/--output"                                               '\n' \
            "OR -O/--override - to override input file"                 '\n' \
            "no output flag outputs as ascii files to terminal"
        
        return

    end

    # check file flag
    if not set -ql _flag_file
        echo "You need to specify a file with the -f flag."
        return 1
    end

    # determine recipient
    if set -ql _flag_R
        set -f _recipient "-R $_flag_R"
    else if set -ql _flag_r
        set -f _recipient "-r $_flag_r"
    else
        echo "You need to define a recipient with the -r or -R flags."
        return 1
    end

    # determine output
    if not set -ql _flag_output ;and not set -ql _flag_override
        set -f _output '--armor'

    else if set -ql _flag_output
        set -f _output "--output" "$_flag_output"

    else if set -ql _flag_override
        set -f _output "--output" "$_flag_file"

    else
        echo "You somehow didn't specify an output option."
        return 1

    end

    set -f message "$(gpg --decrypt $_flag_file | vipe)"
    echo "$message" | gpg --encrypt $_recipient $_output

end
