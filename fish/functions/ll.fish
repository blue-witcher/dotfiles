if type -q eza
    function ll --wraps='eza --color=always --group-directories-first --icons --smart-group --git --links --no-quotes --hyperlink -al' --description 'alias ll=ls -al'
        ls -al $argv
            
    end
else
    # original function is from /usr/share/fish/functions/ll.fish
    # the only change I made was to add the -A flag to display all files, even hidden ones.
    # These are very common and useful
    #
    function ll --wraps ls --description "List contents of directory using long format"
        ls -lhA $argv
    end
end
