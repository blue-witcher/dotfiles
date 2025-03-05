function autolsa_toggle --description 'Write out the prompt'
    switch $AUTO_LS_ALL
        case ""
            set -g AUTO_LS_ALL 1
            echo "--all ON"
        case 0
            set -g AUTO_LS_ALL 1
            echo "--all ON"
        case 1
            set -g AUTO_LS_ALL 0
            echo "--all OFF"
    end

end
