if status is-interactive
    if command -q git
        abbr -a gits 'git status'
        abbr -a gitf 'git fetch'
        abbr -a gitfs 'git fetch ; git status'
        abbr -a gitl 'git log HEAD origin/HEAD'
		abbr -a gitc --set-cursor 'git commit -m"%"'
		abbr -a gitr 'git restore'
		abbr -a gitd 'git diff'
		abbr -a gita 'git add'
    end
end
