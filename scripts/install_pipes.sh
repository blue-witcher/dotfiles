#!/usr/bin/env bash

echo "Downloading pipes.sh version 1.3.0"
echo "sudo wget -P '/usr/local/bin/' 'https://raw.githubusercontent.com/pipeseroni/pipes.sh/65481cb6b6f8bebc11077192c111a419b70625aa/pipes.sh'"
sudo wget -P '/usr/local/bin/' 'https://raw.githubusercontent.com/pipeseroni/pipes.sh/65481cb6b6f8bebc11077192c111a419b70625aa/pipes.sh' && sudo chmod +x '/usr/local/bin/pipes.sh'

echo "Downloading pipes.sh manpage(6) v1.3.0"
echo "sudo wget -P '/usr/local/share/man/man6/' 'https://raw.githubusercontent.com/pipeseroni/pipes.sh/65481cb6b6f8bebc11077192c111a419b70625aa/pipes.sh.6'"
sudo wget -P '/usr/local/share/man/man6/' 'https://raw.githubusercontent.com/pipeseroni/pipes.sh/65481cb6b6f8bebc11077192c111a419b70625aa/pipes.sh.6'
