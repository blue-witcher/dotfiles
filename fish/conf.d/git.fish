if status is-interactive
    if command -q git
        abbr -a gits                'git status'
        abbr -a gitf                'git fetch'
        abbr -a gitfs               'git fetch ; echo ;  git status'
        abbr -a gitl                'git log'
        abbr -a gitlr               'git log HEAD origin/HEAD'
        abbr -a gitc --set-cursor   'git commit -m"%"'
        abbr -a gitcp --set-cursor  'git commit -p -m"%"'
        abbr -a gitco               'git commit'
        abbr -a gitcop              'git commit -p'
        abbr -a gitca               'git commit --amend'
        abbr -a gitr                'git restore'
        abbr -a gitrp               'git restore -p'
        abbr -a gitrs               'git restore --staged'
        abbr -a gitrsp              'git restore --staged -p'
        abbr -a gitd                'git diff'
        abbr -a gitds               'git diff --staged'
        abbr -a gita                'git add'
        abbr -a gitap               'git add -p'
        abbr -a gitsh               'git show'
    end
end
