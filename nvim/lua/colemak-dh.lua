-- cursor
vim.keymap.set('', 'n', 'h')
vim.keymap.set('', 'N', 'H')
vim.keymap.set('', 'e', 'j')
vim.keymap.set('', 'E', 'J')
vim.keymap.set('', 'i', 'k')
vim.keymap.set('', 'I', 'K')
vim.keymap.set('', 'o', 'l')
vim.keymap.set('', 'O', 'L')
vim.keymap.set('', 'j', 'n')
vim.keymap.set('', 'J', 'N')
vim.keymap.set('', 'h', 'e')
vim.keymap.set('', 'H', 'E')
vim.keymap.set('', 'l', 'i')
vim.keymap.set('', 'L', 'I')
vim.keymap.set('', 'k', 'o')
vim.keymap.set('', 'K', 'O')

-- other stuff
vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set({'n', 'v'}, '<C-/>', 'gcc', { remap = true })

-- move window focus
vim.keymap.set('n', '<C-n>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-o>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-e>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-i>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
