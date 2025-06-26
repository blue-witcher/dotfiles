-- MY_COLORSCHEME2
-- created on https://nvimcolors.com

-- Clear existing highlights and reset syntax
vim.cmd('highlight clear')
vim.cmd('syntax reset')

-- Basic UI elements
vim.cmd('highlight Normal guibg=#0a0a10 guifg=#fcfcfc')
vim.cmd('highlight NonText guibg=#0a0a10 guifg=#0a0a10')
vim.cmd('highlight CursorLine guibg=#0e1e22')
vim.cmd('highlight LineNr guifg=#45475a')
vim.cmd('highlight CursorLineNr guifg=#ae81ff')
vim.cmd('highlight SignColumn guibg=#0a0a10')
vim.cmd('highlight StatusLine gui=bold guibg=#181825 guifg=#cdd6f4')
vim.cmd('highlight StatusLineNC gui=bold guibg=#181825 guifg=#73778d')
vim.cmd('highlight Directory guifg=#2f6aff')
vim.cmd('highlight Visual guibg=#535357')
vim.cmd('highlight Search guibg=#40a02b guifg=#fcfcfc')
vim.cmd('highlight CurSearch guibg=#00b3b3 guifg=#0a0a10')
vim.cmd('highlight IncSearch gui=None guibg=#00b3b3 guifg=#0a0a10')
vim.cmd('highlight MatchParen guibg=#40a02b guifg=#fcfcfc')
vim.cmd('highlight Pmenu guibg=#3b3b40 guifg=#fcfcfc')
vim.cmd('highlight PmenuSel guibg=#757578 guifg=#fcfcfc')
vim.cmd('highlight PmenuSbar guibg=#757578 guifg=#fcfcfc')
vim.cmd('highlight VertSplit guifg=#181825')
vim.cmd('highlight MoreMsg guifg=#f92672')
vim.cmd('highlight Question guifg=#f92672')
vim.cmd('highlight Title guifg=#fdbc4b')

-- Syntax highlighting
vim.cmd('highlight Comment guifg=#7c7f93 gui=italic')
vim.cmd('highlight Constant guifg=#ea76cb')
vim.cmd('highlight Identifier guifg=#fdbc4b')
vim.cmd('highlight Statement guifg=#00b3b3')
vim.cmd('highlight PreProc guifg=#00b3b3')
vim.cmd('highlight Type guifg=#8e44ad gui=None')
vim.cmd('highlight Special guifg=#f92672')

-- Refined syntax highlighting
vim.cmd('highlight String guifg=#67ff80')
vim.cmd('highlight Number guifg=#ae81ff')
vim.cmd('highlight Boolean guifg=#ea76cb')
vim.cmd('highlight Function guifg=#2f6aff')
vim.cmd('highlight Keyword guifg=#d20f39 gui=italic')

-- Html syntax highlighting
vim.cmd('highlight Tag guifg=#bde6ad')
vim.cmd('highlight @tag.delimiter guifg=#f92672')
vim.cmd('highlight @tag.attribute guifg=#2f6aff')

-- Messages
vim.cmd('highlight ErrorMsg guifg=#bf0d0d')
vim.cmd('highlight Error guifg=#bf0d0d')
vim.cmd('highlight DiagnosticError guifg=#bf0d0d')
vim.cmd('highlight DiagnosticVirtualTextError guibg=#1c0a10 guifg=#bf0d0d')
vim.cmd('highlight WarningMsg guifg=#f67400')
vim.cmd('highlight DiagnosticWarn guifg=#f67400')
vim.cmd('highlight DiagnosticVirtualTextWarn guibg=#22150e guifg=#f67400')
vim.cmd('highlight DiagnosticInfo guifg=#4b98fa')
vim.cmd('highlight DiagnosticVirtualTextInfo guibg=#111827 guifg=#4b98fa')
vim.cmd('highlight DiagnosticHint guifg=#17cfcf')
vim.cmd('highlight DiagnosticVirtualTextHint guibg=#0b1e23 guifg=#17cfcf')
vim.cmd('highlight DiagnosticOk guifg=#40a02b')

-- Common plugins
vim.cmd('highlight CopilotSuggestion guifg=#7c7f93') -- Copilot suggestion
vim.cmd('highlight TelescopeSelection guibg=#535357') -- Telescope selection
