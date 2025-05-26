-- package manager
require("manager.lazy")

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
require 'colemak'

--other remaps
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x')
vim.keymap.set({'n', 'v'}, ';', ':')

-- reset cursor on exit
-- not needed in kitty, but in other terminals
require 'cursor'

