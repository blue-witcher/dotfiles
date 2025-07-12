if status is-interactive
    # vim
    if command -q nvim
        abbr -a vi  nvim
        abbr -a vim nvim

    else if command -q vim
        abbr -a vi vim
    end

    # microsoft edit
    for i in ms-edit msedit
        if command -q $i
            abbr -a edit $i
        end
    end

    # nano
    if command -q nano
        abbr -a nano 'nano --modernbindings'
    end

    # set $EDITOR environment var
    set -l editors      nvim micro msedit ms-edit nano vim vi
    function set_editor
        for editor in $argv
            if command -q $editor
                for env_var in VISUAL EDITOR
                    set -gx $env_var $editor
                end
                break
            end
        end

        # add --modernbindings option to nano
        if test "$EDITOR" = "nano"
            for env_var in VISUAL EDITOR; set -gxa $env_var '--modernbindings'; end
        end
    end
    set_editor $editors
end
