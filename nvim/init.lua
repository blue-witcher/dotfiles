local set = vim.opt
-- colors
if vim.fn.has("termguicolors") then
    set.termguicolors = true
end

-- enable features
set.hlsearch = true
set.ignorecase = true
set.smartcase = true -- be case sensitive when upper case in somewhere in the search
set.cursorline = true
set.mouse = '' -- disable live
set.showtabline = 2
set.showmode = false -- Don't show the mode, since it's already in the status line
set.list = true
set.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
set.tabstop = 4
set.expandtab = true
set.shiftwidth = 0 -- 0 means using the value from tabstop
set.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
set.confirm = true -- ask whether to save when trying to quit
set.splitright = true
set.splitbelow = true
set.inccommand = 'split' -- preview substitutions live
set.undofile = true -- Save undo history across sessions
set.breakindent = true -- Enable break indent

--- enable line numbers
set.number = true
set.relativenumber = true

-- layout specific (re)maps
require 'kb_layout'
vim.keymap.set('ca', 'cdh', 'lua require \'colemak-dh\'')
vim.keymap.set('ca', 'qwtz', 'lua require \'qwertz\'')
vim.keymap.set('ca', 'qwty', 'lua require \'qwerty\'')

--other mappings
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { desc = "Yank into system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', { desc = "Cut into system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', { desc = "Cut into system clipboard" })
vim.keymap.set('i', '<S-Tab>', '<Del>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<S-Up>', '<C-U>') -- Move half a page up
vim.keymap.set('n', '<S-Down>', '<C-D>') -- Move half a page down

-- highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- reset cursor on exit
-- not needed in kitty, but in other terminals
if os.getenv('TERM') ~= 'xterm-kitty' then
    require('cursor')
end


-- package manager -- source last so (good) plugins see my config and can base their binds on mine maybe?
require("manager.lazy")

-- colorscheme
vim.cmd.colorscheme 'dracula'
require 'myColors'
require 'diffColors'
