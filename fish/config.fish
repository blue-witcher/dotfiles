if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x EDITOR micro
    set -x MICRO_TRUECOLOR 1 # settings micro_truecolor to 0 is also cool, makes catppuccin mocha a "true" dark theme
    set -g fish_greeting '                ⠀⠀⠀⢠⠏⡆⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣀⡀
      ⠀⠀⠀⠀⠀⡟⢦⡀ ⠀⠀⣀⠞⠀⠀⠘⡀⢀⡠⠚⣉⠤⠂⠀⠀⠀⠈⠙⢦⡀
⠀⠀  ⠀⠀    ⠀⡇⠀⠉⠒⠊⠁⠀⠀⠀⠀⠀⠘⢧⠔⣉⠤⠒⠒⠉⠉⠀⠀⠀⠀⠹⣆
⠀  meow :3⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⣤⠶⠶⢶⡄⠀⠀⠀⠀⢹⡆
      ⠀⣀⠤⠒⠒⢺⠒⠀⠀⠀⠀⠀⠀⠀⠀⠤⠊⠀⢸⠀⡿⠀⡀⠀⣀⡟⠀⠀⠀⠀⢸⡇
      ⠈⠀⠀⣠⠴⠚⢯⡀⠐⠒⠚⠉⠀⢶⠂⠀⣀⠜⠀⢿⡀⠉⠚⠉⠀⠀⠀⠀⣠⠟
      ⠀⠠⠊⠀⠀⠀⠀⠙⠂⣴⠒⠒⣲⢔⠉⠉⣹⣞⣉⣈⠿⢦⣀⣀⣀⣠⡴⠟'
    zoxide init fish | source
# Navigation
    abbr -a .. 'cd ../'
    abbr -a ... 'cd ../../'
    abbr -a .... 'cd ../../../'
    abbr -a ..... 'cd ../../../../'
# print full file path
    abbr -a loc 'realpath -zs' # doesn't resolve symlinks
    abbr -a name 'realpath -z' # resolves symlinks
# grep case insensitive
    abbr -a se 'grep -i'
# file size command
    abbr -a du 'du -hs'
# clear screen and scrollback
    abbr -a clears 'printf "\e[H\e[3J"'
end
