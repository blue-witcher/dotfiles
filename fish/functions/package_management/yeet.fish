if type -q zypper
    function yeet --wraps='zypper rm --clean-deps' --description 'alias yeet=sudo zypper rm --clean-deps'
        sudo zypper rm --clean-deps $argv
    end

else
    function yeet
        echo 'Function not applicable.'
    end

end
