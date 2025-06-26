-- ~/.config/nvim/lua/colors/mytheme.lua

local theme = {}

-- Define the palette
theme.palette = {
  bg         = "#0a0a10",
  fg         = "#DBDBDB",
  comment    = "#7c7f93",
  purple     = "#8e44ad",
  lilac      = "#AE81FF",
  pink       = "#FF79D6",
  green      = "#67FF80",
  red        = "#f44747",
  blue       = "#4B98FA",
  none       = "NONE"
}

-- Apply highlight groups
local function highlight(group, color)
  vim.api.nvim_set_hl(0, group, color)
end

local c = theme.palette

-- General UI
highlight("Normal",       { fg = c.fg, bg = c.bg })
highlight("NormalNC",     { fg = c.fg, bg = c.bg })
highlight("CursorLine",   { bg = "#1a1a24" })
highlight("Visual",       { bg = "#2a2a3a" })
highlight("LineNr",       { fg = "#3a3a50" })
highlight("CursorLineNr", { fg = c.blue })
highlight("StatusLine",   { fg = c.fg, bg = "#1e1e2e" })
highlight("VertSplit",    { fg = "#2a2a3a" })

-- Syntax
highlight("Comment",      { fg = c.comment, italic = true })
highlight("Constant",     { fg = c.lilac })
highlight("String",       { fg = c.green })
highlight("Character",    { fg = c.green })
highlight("Number",       { fg = c.lilac })
highlight("Boolean",      { fg = c.purple })
highlight("Float",        { fg = c.lilac })

highlight("Identifier",   { fg = c.pink })
highlight("Function",     { fg = c.blue })

highlight("Statement",    { fg = c.purple })
highlight("Conditional",  { fg = c.purple })
highlight("Repeat",       { fg = c.purple })
highlight("Label",        { fg = c.pink })
highlight("Operator",     { fg = c.fg })
highlight("Keyword",      { fg = c.red })

highlight("PreProc",      { fg = c.pink })
highlight("Include",      { fg = c.pink })
highlight("Define",       { fg = c.pink })

highlight("Type",         { fg = c.green })
highlight("StorageClass", { fg = c.green })
highlight("Structure",    { fg = c.green })
highlight("Typedef",      { fg = c.green })

highlight("Special",      { fg = c.blue })
highlight("SpecialComment", { fg = c.comment, italic = true })

highlight("Todo",         { fg = c.bg, bg = c.pink, bold = true })

-- Treesitter highlights
highlight("@comment",        { fg = c.comment, italic = true })
highlight("@constant",       { fg = c.lilac })
highlight("@string",         { fg = c.green })
highlight("@character",      { fg = c.green })
highlight("@number",         { fg = c.lilac })
highlight("@boolean",        { fg = c.purple })
highlight("@float",          { fg = c.lilac })

highlight("@function",       { fg = c.blue })
highlight("@method",         { fg = c.blue })
highlight("@constructor",    { fg = c.pink })

highlight("@parameter",      { fg = c.fg })
highlight("@variable",       { fg = c.fg })
highlight("@field",          { fg = c.pink })
highlight("@property",       { fg = c.fg })

highlight("@conditional",    { fg = c.purple })
highlight("@repeat",         { fg = c.purple })
highlight("@label",          { fg = c.pink })
highlight("@operator",       { fg = c.fg })
highlight("@keyword",        { fg = c.red })
highlight("@exception",      { fg = c.red })

highlight("@type",           { fg = c.green })
highlight("@type.builtin",   { fg = c.green })
highlight("@namespace",      { fg = c.lilac })

highlight("@punctuation.delimiter", { fg = c.fg })
highlight("@punctuation.bracket",   { fg = c.fg })
highlight("@punctuation.special",   { fg = c.pink })

highlight("@tag",            { fg = c.red })
highlight("@attribute",      { fg = c.green })
highlight("@markup.heading", { fg = c.purple, bold = true })

-- Diagnostic
highlight("DiagnosticError", { fg = c.red })
highlight("DiagnosticWarn",  { fg = "#e0af68" })
highlight("DiagnosticInfo",  { fg = c.blue })
highlight("DiagnosticHint",  { fg = c.green })

highlight("DiffAdd",    { fg = "NONE", bg = "#2fa84a" })
highlight("DiffChange", { fg = "NONE", bg = "#2b2a1b" })
highlight("DiffDelete", { fg = "NONE", bg = "#2b1b1b" })

highlight("GitSignsAdd",    { fg = "#2fa84a" })
highlight("GitSignsChange", { fg = "#e0af68" })
highlight("GitSignsDelete", { fg = "#f44747" })

highlight("@diff.plus",     { fg = "#2fa84a" })
highlight("@diff.minus",    { fg = "#f44747" })
highlight("@diff.delta",    { fg = "#e0af68" })


-- Return the theme to be used externally if desired
return theme
