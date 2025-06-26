return {
	{ "tpope/vim-fugitive", name = 'fugitive',
    init = function()
        vim.keymap.set('ca', 'git', 'Git')
        vim.keymap.set('ca', 'g', 'Git')
    end }
}
