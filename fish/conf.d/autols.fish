function __autols_hook --description "Auto ls including hidden files" --on-event fish_prompt
  if test "$NO_AUTO_LS" = 1
    return
  end

  if test "$__autols_last" != (pwd)
    if test "$AUTO_LS_ALL" = 1
      echo; ls -a
    else
      echo; ls
    end
    set -g __autols_last (pwd)
  end

end
