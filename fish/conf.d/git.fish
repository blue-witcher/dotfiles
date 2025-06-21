if status is-interactive
    if command -q git
        abbr -a gits                'git status'
        abbr -a gitf                'git fetch'
        abbr -a gitfs               'git fetch ; echo ;  git status'
        abbr -a gitl                'git log HEAD origin/HEAD'
        abbr -a gitc --set-cursor   'git commit -m"%"'
        abbr -a gitco               'git commit'
        abbr -a gitr                'git restore'
        abbr -a gitrs               'git restore --staged'
        abbr -a gitd                'git diff'
        abbr -a gitds               'git diff --staged'
        abbr -a gita                'git add'
    end
end
