function fish_prompt --description 'Write out the prompt'
    set -l last_status $status
    set -l normal (set_color normal)
    set -l status_color (set_color brgreen)
    set -l cwd_color (set_color $fish_color_cwd)
    set -l vcs_color (set_color brpurple)
    set -l prompt_status ""
    set -l duration_color (set_color $fish_color_option)

    # Since we display the prompt on a new line allow the directory names to be longer.
    set -q fish_prompt_pwd_dir_length
    or set -lx fish_prompt_pwd_dir_length 0

    # Color the prompt differently when we're root
    set -l suffix '❯'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set cwd_color (set_color $fish_color_cwd_root)
        end
        set suffix '#'
    end

    # Color the prompt in red on error
    if test $last_status -ne 0
        set status_color (set_color $fish_color_error)
        set prompt_status $status_color "[" $last_status "]" ' ' $normal
    end

    # Format $CMD_DURATION
    if test $CMD_DURATION -ge 2000; and test "$cmd_dur_off" != 1
        if test $CMD_DURATION -ge 3600000
            set cmd_dur_hours (math floor $CMD_DURATION / 3600000)'h'
        end
        if test (math $CMD_DURATION % 3600000) -ge 60000
            set cmd_dur_mins (math floor (math $CMD_DURATION % 3600000) / 60000)'m'
        end
        if test (math $CMD_DURATION % 60000) -ge 1000 -a (math $CMD_DURATION % 60000) -lt 59500
            set cmd_dur_secs (math round (math $CMD_DURATION % 60000) / 1000)'s '
        else if test (math $CMD_DURATION % 60000) -ge 59500
            set cmd_dur_secs (math floor (math $CMD_DURATION % 60000) / 1000)'s '
        end
    end
    

    echo -s (prompt_login) ' ' $cwd_color (prompt_pwd) $vcs_color (fish_vcs_prompt) $normal ' ' $prompt_status $duration_color $cmd_dur_hours $cmd_dur_mins $cmd_dur_secs
    echo -n -s $status_color $suffix ' ' $normal
end
