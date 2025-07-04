-- colors
if vim.fn.has("termguicolors") then
    vim.opt.termguicolors = true
end

-- enable features
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true -- be case sensitive when upper case in somewhere in the search
vim.opt.cursorline = true
vim.opt.mouse = '' -- disable live
vim.opt.showtabline = 1
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 0 -- 0 means using the value from tabstop
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.confirm = true -- ask whether to save when trying to quit
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = 'split' -- preview substitutions live
vim.opt.undofile = true -- Save undo history across sessions
vim.opt.breakindent = true -- Enable break indent

--- enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- layout specific (re)maps
require 'kb_layout'
vim.keymap.set('ca', 'cdh', 'lua require \'colemak-dh\'')
vim.keymap.set('ca', 'qwtz', 'lua require \'qwertz\'')
vim.keymap.set('ca', 'qwty', 'lua require \'qwerty\'')

--other mappings
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { desc = "Yank into system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y', { desc = "Yank rest of line into system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', { desc = "Paste from system clipboard (before cursor)" })
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', { desc = "Cut into system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>X', '"+X', { desc = "Cut into system clipboard (left of cursor)" })
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', { desc = "Cut into system clipboard" })
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D', { desc = "Cut rest of line into system clipboard" })
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
