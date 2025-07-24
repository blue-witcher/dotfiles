function mf --description "mass file move/copy"
    # help message
    set _help \
    'Usage: mm $Destination_file_name $FilesToMove'                                                             '\n'\
    'Example: \'mm our_trip ~/Downloads/*.jpg\' or \'mm our_trip ~/Downloads/one.jpg ~/Downloads/two.jpg\''     '\n'\
    'Destination folder is current working directory.'                                                          '\n'\
    'Counter is padded with zeros to two characters.'                                                           '\n'\
    'You need to set either of c/copy or m/move flags to let mf know what you want to do.'

    # argparse
    argparse -x c,m 'n/name=' 'h/help' 'c/copy' 'm/move' -- $argv
    or begin echo -es $_help ;return ;end

    # help flag
    if set -q _flag_help
        echo -es $_help
        return
    end

    # return if needed vars not set
    if not set -q _flag_name
        echo "n/name argument not set."
        return 1
    else if not set -q _flag_copy ;and not set -q _flag_move
        echo 'No copy or move flag set.'
        return 1
    end

    # check if counter for name already exists, set counter otherwise
    read -P "Set starting counter value for counter to 01? y/n: " ans
    switch (string lower "$ans")
        case 'y*'
            set -f _counter 01
        case 'n*'
            read -P "Enter starting value for counter: " value
            # check if value is a number
            if not test "$value" -gt '0'
                echo 'Forbidden value.'
                return
            else
                set -f _counter $value
            end
        case '*'
            echo 'stopping function'
            return 1
    end

    # copy/move files
    for i in $argv
        set ext (string split -rm1 -f2 . $i)
        if set -q _flag_move
            mv -iv $i "$_flag_name""-$_counter"".$ext"
            and set _counter (string pad -c0 -w2 (math $_counter +1))
        else if set -q _flag_copy
            cp -iv $i "$_flag_name""-$_counter"".$ext"
            and set _counter (string pad -c0 -w2 (math $_counter +1))
        end
    end
end
