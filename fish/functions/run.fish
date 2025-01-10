#!/usr/bin/env fish

function run
    for program in $argv
        $program > /dev/null 2>&1 & ;disown
    end

end
