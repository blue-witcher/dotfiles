#!/usr/bin/env fish

function gpgedit --description "Edit encrypted gpg message-files."
    # check dependencies
    set -f _dependencies gpg vipe
    for i in $_dependencies
        if not command -q $i
            echo "$i not found."
            set -f _missing_dependency
            switch $i
                case 'vipe'
                    echo "Vipe is part of the more-utils collection."
            end
        end
    end

    if set -q $_missing_dependency
        return 1
    end

    # parse arguments
    set -f options 'f/file=' 'r/recipient=+' 'R/hidden-recipient=+' 'o/output=' 'O/override' 'h/help'
    set -f exclusive_options '-x' 'r,R' 'output,override'
    argparse $options $exlusive_options -- $argv

    # help flag
    set -f help_text "Flags:" '\n'\
        "-f/--file - file to edit" '\n''\n'\
        "-r/--recipient" '\n'\
        "OR -R/--hidden-recipient" '\n''\n'\
        "-o/--output" '\n'\
        "OR -O/--override - to override input file" '\n'\
        "no output flag outputs as ascii characters to terminal"
    if set -ql _flag_help ;or not set -ql _flag_file ;and not set -ql _flag_r ;and not set -ql _flag_R
        echo -se $help_text
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
