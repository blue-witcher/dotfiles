-- package manager
require("config.lazy")

-- pretty colors
vim.cmd.colorscheme "catppuccin"

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
vim.keymap.set({'n', 'v'}, 'N', 'H')
vim.keymap.set({'n', 'v'}, 'e', '<down>')
vim.keymap.set({'n', 'v'}, 'E', 'J')
vim.keymap.set({'n', 'v'}, 'i', '<up>')
vim.keymap.set({'n', 'v'}, 'I', 'K')
vim.keymap.set({'n', 'v'}, 'o', '<right>')
vim.keymap.set({'n', 'v'}, 'O', 'L')
vim.keymap.set({'n', 'v'}, 'h', 'n')
vim.keymap.set({'n', 'v'}, 'H', 'N')
vim.keymap.set({'n', 'v'}, 'h', 'e')
vim.keymap.set({'n', 'v'}, 'H', 'E')
vim.keymap.set({'n', 'v'}, 'l', 'i')
vim.keymap.set({'n', 'v'}, 'L', 'I')
vim.keymap.set({'n', 'v'}, 'k', 'o')
vim.keymap.set({'n', 'v'}, 'K', 'O')
