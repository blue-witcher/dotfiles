#!/usr/bin/env fish

# check dependencies
if not type -q patch
    echo "Dependency \"patch\" not installed"
    return
end
if not type -q gcc
    echo "Dependency \"gcc\" not installed"
    return
end

# compile
curl https://raw.githubusercontent.com/jarun/advcpmv/master/install.sh --create-dirs -o ./advcpmv/install.sh
and begin
    cd advcpmv
    and sh install.sh
end

# place files
read -c 'y' -P 'Place binaries in "~/.local/bin"? [y/n]: ' -l q1
if test (string sub -l 1 $q1) = y
    mkdir --parents ~/.local/bin
    and cp advcp ~/.local/bin/acp; cp advmv ~/.local/bin/amv
end

# delete working dir
read -c 'y' -P 'Delete working directory? [y/n]: ' -l q2
if test (string sub -l 1 $q2) = y
    cd ..
    and rm -r ./advcpmv/
end
