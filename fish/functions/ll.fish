#
# These are very common and useful
#
function ll --wraps ls --description "List contents of directory using long format"
    ls -lha --group-directories-first $argv
end
