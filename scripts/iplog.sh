#!/usr/bin/env fish

mkdir -p ~/.local/var/log

while true
    begin
        date
        curl -s ifconfig.me
        echo
    end | tee -a ~/.local/var/log/iplog.txt
    sleep 2s
end
