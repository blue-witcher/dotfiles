if command -q paru
    function yay --wraps=paru --description 'alias yay=paru'
        if string match -q -- '-*' $argv
            if string match -q -- '*-S*' $argv ;and not string match -q -- '-S*s*' $argv ;and not match -q -- '-S*i*' $argv
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
        zypper $argv
    end

else if command -q nala
    function yay --wraps=nala --description 'alias yay=nala'
        nala $argv
    end

else
    function yay
        echo 'Function not applicable.'
    end

end
