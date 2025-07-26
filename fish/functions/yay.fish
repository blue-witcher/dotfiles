if command -q paru
    function yay --wraps=paru --description 'alias yay=paru'
        if string match -q -- '-*' $argv
            if string match -q -- '*-S*' $argv ;and not string match -q -- '-S*s*' $argv ;and not string match -q -- '-S*i*' $argv
                echo "Yay we're installing software!! :3"
            end
        else
            echo "Yay we're installing software!! :3"
        end
        paru $argv
    end

else if command -q pacman
    function yay --wraps=zypper --description 'alias yay=zypper'
        if string match -q -- '-S*' $argv ;and not string match -q -- '-S*s*' $argv ;and not string match -q -- '-S*i*' $argv
            echo "Yay we're installing software!! :3"
            sudo pacman $argv
        else
            pacman $argv
        end
    end

else if command -q zypper
    function yay --wraps=zypper --description 'alias yay=zypper'
        if contains -- "$argv[1]" in install
            echo "Yay we're installing software!! :3"
            sudo zypper $argv
        else if contains -- "$argv[1]" rm remove in install
            sudo zypper $argv
        else
            zypper $argv
        end
    end

else if command -q nala
    function yay --wraps=nala --description 'alias yay=nala'
        if contains -- "$argv[1]" install upgrade
            echo "Yay we're installing software!! :3"
            sudo nala $argv
        else if contains -- "$argv[1]" remove purge update
            sudo nala $argv
        else
            nala $argv
        end
    end

else
    function yay
        echo 'No compatible package manager found.'
    end

end
