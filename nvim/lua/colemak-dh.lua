-- cursor
vim.keymap.set('', 'n', 'h')
vim.keymap.set('', 'N', 'H')
vim.keymap.set('', 'e', 'j')
vim.keymap.set('', 'E', 'J')
vim.keymap.set('', 'i', 'k')
vim.keymap.set('', 'I', 'K')
vim.keymap.set('', 'o', 'l')
vim.keymap.set('', 'O', 'L')
vim.keymap.set('', 'j', 'e')
vim.keymap.set('', 'J', 'E')
vim.keymap.set('', 'h', 'n')
vim.keymap.set('', 'H', 'N')
vim.keymap.set('', 'l', 'o')
vim.keymap.set('', 'L', 'O')
vim.keymap.set('', 'k', 'i')
vim.keymap.set('', 'K', 'I')

-- other stuff
vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set('n', '<C-/>', 'gcc', { remap = true, desc = 'toggle line comment' })
vim.keymap.set('v', '<C-/>', 'gc', { remap = true, desc = 'toggle line comment' })

-- move window focus
vim.keymap.set('n', '<C-n>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-o>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-e>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-i>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
