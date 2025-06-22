function mm --description "mass move"
    argparse 'n/name=' 'h/help' -- $argv

    # echo help message if help flag set
    set _help \
    'Usage: mm $Destination_file_name $FilesToMove\n' \
    'Example: \'mm our_trip ~/Downloads/*.jpg\' or \'mm our_trip ~/Downloads/one.jpg ~/Downloads/two.jpg\'\n' \
    'Destination folder is current working directory.\n' \
    'Counter is padded with zeros to two characters.'
    if set -q _flag_help
        echo -es $_help
        return
    end

    # return if name not set
    if not set -q _flag_name ;or test "$_flag_name" = ''
        echo "n/name argument not set."
        return
    end

    # check if counter for name already exists, set counter otherwise
    if not set -q $_flag_name
        read -P "Set starting counter value for \$$_flag_name to 01? y/n: " ans
        switch (string lower "$ans")
            case 'y*'
                set -g $_flag_name 01
            case 'n*'
                read -P "Enter starting value for \$$_flag_name counter: " value
                # check if value is a number
                if not test "$value" -gt '0'
                    echo 'Forbidden value.'
                    return
                else
                    set -g $_flag_name $value
                end
            case '*'
                echo 'stopping function'
                return 1
        end
    end

    # move the files
    for i in $argv
        set ext (string split -rm1 -f2 . $i)
        mv -i $i "$_flag_name""-$$_flag_name"".$ext"
        and set $_flag_name (string pad -c0 -w2 (math $$_flag_name +1))
    end
end
