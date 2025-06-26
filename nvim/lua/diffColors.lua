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

local function highlight(group, color)
  vim.api.nvim_set_hl(0, group, color)
end

local c = theme.palette

highlight("DiagnosticError", { fg = c.red })
highlight("DiagnosticWarn",  { fg = "#e0af68" })
highlight("DiagnosticInfo",  { fg = c.blue })
highlight("DiagnosticHint",  { fg = c.green })

highlight("DiffAdd",    { fg = "NONE", bg = "#2fa84a" })
highlight("DiffChange", { fg = "NONE", bg = "#df8e1d" })
highlight("DiffDelete", { fg = "NONE", bg = "#2b1b1b" })

highlight("GitSignsAdd",    { fg = "#2fa84a" })
highlight("GitSignsChange", { fg = "#df8e1d" })
highlight("GitSignsDelete", { fg = "#f44747" })

highlight("@diff.plus",     { fg = "#2fa84a" })
highlight("@diff.minus",    { fg = "#f44747" })
highlight("@diff.delta",    { fg = "#e0af68" })
