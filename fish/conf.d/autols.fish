function __autols_hook --description "Auto ls including hidden files" --on-event fish_prompt
  if test "$NO_AUTO_LS" != ""
    return
  end

  if test "$__autols_last" != (pwd)
    echo; ls -a
  end
  set  -g __autols_last (pwd)
end
