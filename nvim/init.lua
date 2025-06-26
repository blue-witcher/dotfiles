-- colors
vim.cmd.colorscheme 'myTheme4'
require 'diffColors'
require 'myColors'

-- package manager
require("manager.lazy")

--enable features
local set = vim.opt
set.hlsearch = true
set.ignorecase = true
set.cursorline = true
set.mouse = ''
vim.o.showtabline = 2

--- enable line numbers
set.tabstop = 4
set.shiftwidth = 0 -- 0 means using the value from tabstop
set.expandtab = true
set.number = true
set.relativenumber = true

-- cursor remappings
require 'colemak'

--other remaps
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { desc = "Yank into system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', { desc = "Cut into system clipboard" })
vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set('i', '<s-tab>', '<bs>')

-- reset cursor on exit
-- not needed in kitty, but in other terminals
if os.getenv('TERM') ~= 'xterm-kitty' then
    require('cursor')
end

-- colors
if vim.fn.has("termguicolors") then
  vim.opt.termguicolors = true
end
