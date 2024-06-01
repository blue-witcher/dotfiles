function yeet --wraps='sudo zypper rm --clean-deps' --description 'alias yeet=sudo zypper rm --clean-deps'
  sudo zypper rm --clean-deps $argv
        
end
