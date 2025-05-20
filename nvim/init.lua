-- enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- cursor remappings
vim.keymap.set({'n', 'v'}, 'n', '<left>')
vim.keymap.set({'n', 'v'}, 'e', '<down>')
vim.keymap.set({'n', 'v'}, 'i', '<up>')
vim.keymap.set({'n', 'v'}, 'o', '<right>')
vim.keymap.set({'n', 'v'}, 'k', '<insert>')
vim.keymap.set('n', 'K', 'I')

