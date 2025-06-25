# Environment variables
set -x MICRO_TRUECOLOR 1 # settings micro_truecolor to 0 is also cool, makes catppuccin mocha a "true" dark theme
set -x GIT_ASKPASS '/usr/bin/ksshaskpass'
# set -x SSH_ASKPASS '/usr/bin/ksshaskpass'
# set -x SSH_ASKPASS_REQUIRE 'prefer'

if status is-interactive
# Commands to run in interactive sessions can go here
# Environment variable for use only in interactive shell or processes called from interactive shell
    fish_add_path ~/.local/bin
    set -x EDITOR nvim
    set -g fish_greeting \
'              ⠀⠀⠀⢠⠏⡆⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣀⡀
    ⠀⠀⠀⠀⠀⡟⢦⡀ ⠀⠀⣀⠞⠀⠀⠘⡀⢀⡠⠚⣉⠤⠂⠀⠀⠀⠈⠙⢦⡀
  ⠀⠀    ⠀⡇⠀⠉⠒⠊⠁⠀⠀⠀⠀⠀⠘⢧⠔⣉⠤⠒⠒⠉⠉⠀⠀⠀⠀⠹⣆
meow :3⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⣤⠶⠶⢶⡄⠀⠀⠀⠀⢹⡆
   ⠀⣀⠤⠒⠒⢺⠒⠀⠀⠀⠀⠀⠀⠀⠀⠤⠊⠀⢸⠀⡿⠀⡀⠀⣀⡟⠀⠀⠀⠀⢸⡇
   ⠈⠀⠀⣠⠴⠚⢯⡀⠐⠒⠚⠉⠀⢶⠂⠀⣀⠜⠀⢿⡀⠉⠚⠉⠀⠀⠀⠀⣠⠟
   ⠀⠠⠊⠀⠀⠀⠀⠙⠂⣴⠒⠒⣲⢔⠉⠉⣹⣞⣉⣈⠿⢦⣀⣀⣀⣠⡴⠟'
   set fish_cursor_insert underscore
# edit files
	abbr -a e "$EDITOR"
# Navigation
    abbr -a ... 'cd ../../'
    abbr -a .... 'cd ../../../'
    abbr -a ..... 'cd ../../../../'
# print full file path
    abbr -a loc 'realpath' # resolves symlinks
    abbr -a lame 'realpath -s' # resolves previous symlinks but not file if file is a symlink
    abbr -a name 'print_name' # doesn't resolve symlinks
# clear screen and scrollback
    abbr -a clears 'printf "\e[H\e[3J"'

end
