if type -q zypper
    function yayy --wraps='zypper' --description 'alias yayy=sudo zypper'
      sudo zypper $argv
    end

else
    function yayy
        echo 'Function not applicable.'
    end

end
