vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set('n', '<C-/>', 'gcc', { remap = true, desc = 'toggle line comment' })
vim.keymap.set('v', '<C-/>', 'gc', { remap = true, desc = 'toggle line comment' })

-- move window focus
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
