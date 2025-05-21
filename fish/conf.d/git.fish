if status is-interactive
    if type -q git
        abbr -a gits 'git status'
        abbr -a gitf 'git fetch'
        abbr -a gitfs 'git fetch ; git status'
        abbr -a gitl 'git log HEAD origin/HEAD'
		abbr -a gitc --set-cursor 'git commit -m\'%'
    end
end
