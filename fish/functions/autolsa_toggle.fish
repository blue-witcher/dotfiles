function autolsa_toggle --description 'Write out the prompt'
    switch "$AUTO_LS_ALL"
        case ""
            set -g AUTO_LS_ALL 1
        case "0"
            set -g AUTO_LS_ALL 1
        case "1"
            set -g AUTO_LS_ALL 0
    end

end
