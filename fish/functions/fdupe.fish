# Defined interactively
function fdupe --description "Find duplicate in list"
    set wvar $argv
    for i in $wvar
        if contains $wvar[1] $wvar[2..]
            echo Duplicate $wvar[1]
            set -e wvar[1]
        else
            set -e wvar[1]
        end
    end
end
