-- cursor
vim.keymap.set({'n', 'v'}, 'n', '<left>')
vim.keymap.set({'n', 'v'}, 'N', 'H')
vim.keymap.set({'n', 'v'}, 'e', '<down>')
vim.keymap.set({'n', 'v'}, 'E', 'J')
vim.keymap.set({'n', 'v'}, 'i', '<up>')
vim.keymap.set({'n', 'v'}, 'I', 'K')
vim.keymap.set({'n', 'v'}, 'o', '<right>')
vim.keymap.set({'n', 'v'}, 'O', 'L')
vim.keymap.set({'n', 'v'}, 'j', 'n')
vim.keymap.set({'n', 'v'}, 'J', 'N')
vim.keymap.set({'n', 'v'}, 'h', 'e')
vim.keymap.set({'n', 'v'}, 'H', 'E')
vim.keymap.set({'n', 'v'}, 'l', 'i')
vim.keymap.set({'n', 'v'}, 'L', 'I')
vim.keymap.set({'n', 'v'}, 'k', 'o')
vim.keymap.set({'n', 'v'}, 'K', 'O')

-- other stuff
vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set({'n', 'v'}, '<C-/>', 'gcc', { remap = true })

-- move window focus
vim.keymap.set('n', '<C-n>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-o>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-e>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-i>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
