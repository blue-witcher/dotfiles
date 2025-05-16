#!/usr/bin/sh

# zoxide ask
printf "Zoxide: "
read ans
result="$(zoxide query --exclude "$PWD" "$ans" | sed 's/\\/\\\\/g;s/"/\\"/g')"
lf -remote "send $id cd \"$result\""
