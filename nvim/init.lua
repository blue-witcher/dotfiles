# package manager
require("config.lazy")

--enable features
local set = vim.opt
set.hlsearch = true
set.ignorecase = true
set.cursorline = true
set.mouse = ''

--- enable line numbers
set.tabstop = 4
set.shiftwidth = 4
set.number = true
set.relativenumber = true

-- cursor remappings
vim.keymap.set({'n', 'v'}, 'n', '<left>')
vim.keymap.set({'n', 'v'}, 'e', '<down>')
vim.keymap.set({'n', 'v'}, 'i', '<up>')
vim.keymap.set({'n', 'v'}, 'o', '<right>')
vim.keymap.set({'n', 'v'}, 'k', '<insert>')
vim.keymap.set('n', 'K', 'I')

