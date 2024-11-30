function __autols_hook --description "Auto ls including hidden files" --on-event fish_prompt
  if test "$NO_AUTO_LS" = 1             # Test if auto_ls is turned off
    return
  end

  if test "$__autols_last" = (pwd)      # Test if directory changed
    return
  end

  if test "$AUTO_LS_ALL" = 1            # test if auto_ls -all flag is set
    ls -a
  else
    ls
  end

  set -g __autols_last (pwd)            # set new directory in variable

end
