if type -q paru
    function yay --wraps=paru --description 'alias yay=paru'
      paru $argv
    end

else if type -q zypper
    function yay --wraps=zypper --description 'alias yay=zypper'
      zypper $argv
    end

else
    function yay
        echo 'Function not applicable.'
    end

end
