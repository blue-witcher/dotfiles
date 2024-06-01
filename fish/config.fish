if status is-interactive
    # Commands to run in interactive sessions can go here
    export EDITOR=nano
    zoxide init fish | source
end
