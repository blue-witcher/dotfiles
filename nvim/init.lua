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
set.shiftwidth = 0 -- 0 means using the value from tabstop
set.expandtab = true
set.number = true
set.relativenumber = true

-- cursor remappings
require 'colemak'

--other remaps
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x')
vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set('i', '<s-tab>', '<bs>')

-- reset cursor on exit
-- not needed in kitty, but in other terminals
if os.getenv('TERM') ~= 'xterm-kitty' then
    require('cursor')
end
