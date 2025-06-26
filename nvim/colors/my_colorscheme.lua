-- MY_COLORSCHEME
-- created on https://nvimcolors.com

-- Clear existing highlights and reset syntax
vim.cmd('highlight clear')
vim.cmd('syntax reset')

-- Basic UI elements
vim.cmd('highlight Normal guibg=#0a0a10 guifg=#dbdbdb')
vim.cmd('highlight NonText guibg=#0a0a10 guifg=#0a0a10')
vim.cmd('highlight CursorLine guibg=#0e1e22')
vim.cmd('highlight LineNr guifg=#45475a')
vim.cmd('highlight CursorLineNr guifg=#ae81ff')
vim.cmd('highlight SignColumn guibg=#0a0a10')
vim.cmd('highlight StatusLine gui=bold guibg=#181825 guifg=#cdd6f4')
vim.cmd('highlight StatusLineNC gui=bold guibg=#181825 guifg=#73778d')
vim.cmd('highlight Directory guifg=#ea76cb')
vim.cmd('highlight Visual guibg=#dbdbdb')
vim.cmd('highlight Search guibg=#737376 guifg=#dbdbdb')
vim.cmd('highlight CurSearch guibg=#dbdbdb guifg=#0a0a10')
vim.cmd('highlight IncSearch gui=None guibg=#dbdbdb guifg=#0a0a10')
vim.cmd('highlight MatchParen guibg=#737376 guifg=#dbdbdb')
vim.cmd('highlight Pmenu guibg=#3b3b40 guifg=#dbdbdb')
vim.cmd('highlight PmenuSel guibg=#6b6b6f guifg=#dbdbdb')
vim.cmd('highlight PmenuSbar guibg=#6b6b6f guifg=#dbdbdb')
vim.cmd('highlight VertSplit guifg=#181825')
vim.cmd('highlight MoreMsg guifg=#e64553')
vim.cmd('highlight Question guifg=#e64553')
vim.cmd('highlight Title guifg=#ea76cb')

-- Syntax highlighting
vim.cmd('highlight Comment guifg=#7c7f93 gui=italic')
vim.cmd('highlight Constant guifg=#ae81ff')
vim.cmd('highlight Identifier guifg=#ea76cb')
vim.cmd('highlight Statement guifg=#e64553')
vim.cmd('highlight PreProc guifg=#e64553')
vim.cmd('highlight Type guifg=#4b98fa gui=None')
vim.cmd('highlight Special guifg=#e64553')

-- Refined syntax highlighting
vim.cmd('highlight String guifg=#67ff80')
vim.cmd('highlight Number guifg=#ae81ff')
vim.cmd('highlight Boolean guifg=#ae81ff')
vim.cmd('highlight Function guifg=#ea76cb')
vim.cmd('highlight Keyword guifg=#e64553 gui=italic')

-- Html syntax highlighting
vim.cmd('highlight Tag guifg=#ea76cb')
vim.cmd('highlight @tag.delimiter guifg=#bde6ad')
vim.cmd('highlight @tag.attribute guifg=#ea76cb')

-- Messages
vim.cmd('highlight ErrorMsg guifg=#d20f39')
vim.cmd('highlight Error guifg=#d20f39')
vim.cmd('highlight DiagnosticError guifg=#d20f39')
vim.cmd('highlight DiagnosticVirtualTextError guibg=#1e0b14 guifg=#d20f39')
vim.cmd('highlight WarningMsg guifg=#df8e1d')
vim.cmd('highlight DiagnosticWarn guifg=#df8e1d')
vim.cmd('highlight DiagnosticVirtualTextWarn guibg=#1f1711 guifg=#df8e1d')
vim.cmd('highlight DiagnosticInfo guifg=#00ccff')
vim.cmd('highlight DiagnosticVirtualTextInfo guibg=#091d28 guifg=#00ccff')
vim.cmd('highlight DiagnosticHint guifg=#813d9c')
vim.cmd('highlight DiagnosticVirtualTextHint guibg=#160f1e guifg=#813d9c')
vim.cmd('highlight DiagnosticOk guifg=#40a02b')
