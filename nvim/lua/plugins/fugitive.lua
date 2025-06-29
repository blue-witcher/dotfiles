return {
	{ "tpope/vim-fugitive", name = 'fugitive',
    config = function()
        vim.keymap.set('ca', 'git', 'Git')
        vim.keymap.set('ca', 'g', 'Git')
        vim.keymap.set('ca', 'gitr', 'Git restore')
        vim.keymap.set('ca', 'gits', 'Git status')
        vim.keymap.set('ca', 'gitc', 'Git commit')
        vim.keymap.set('ca', 'gitca', 'Git commit --amend')
        vim.keymap.set('ca', 'gitd', 'Git diff')
        vim.keymap.set('ca', 'gitl', 'Git log')
        vim.keymap.set('ca', 'gita', 'Git add')
    end }
}
