local M = {}

local colors = {
  bg       = "#0a0a10",
  fg       = "#DBDBDB",
  comment  = "#7c7f93",
  pink     = "#ea76cb",
  purple   = "#AE81FF",
  green    = "#67FF80",
  red      = "#F92672",
  violet   = "#c678dd",
  cyan     = "#1ebfc8",
  blue     = "#2f6aff",
  orange   = "#FFB86C",
  yellow   = "#FFD700",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "nightburst"

  hi("Normal",        { fg = colors.fg,    bg = colors.bg })
  hi("CursorLine",    { bg = "#14151d" })
  hi("LineNr",        { fg = "#3e3f4d" })
  hi("CursorLineNr",  { fg = colors.yellow, bold = true })
  hi("Visual",        { bg = "#1d1d27" })
  hi("Search",        { fg = colors.bg,    bg = colors.yellow })
  hi("Comment",       { fg = colors.comment, italic = true })
  hi("Pmenu",         { fg = colors.fg,    bg = "#14151d" })
  hi("PmenuSel",      { fg = colors.bg,    bg = colors.blue })
  hi("StatusLine",    { fg = colors.fg,    bg = "#14151d" })
  hi("TabLineSel",    { fg = colors.blue,  bg = colors.bg, bold = true })
  hi("ErrorMsg",      { fg = colors.red,   bold = true })
  hi("WarningMsg",    { fg = colors.orange, bold = true })

  hi("Constant",      { fg = colors.cyan })
  hi("String",        { fg = colors.green })
  hi("Character",     { fg = colors.green })
  hi("Number",        { fg = colors.purple})
  hi("Boolean",       { fg = colors.red })
  hi("Identifier",    { fg = colors.fg })
  hi("Function",      { fg = colors.blue })
  hi("Statement",     { fg = colors.pink })
  hi("Conditional",   { fg = colors.pink })
  hi("Repeat",        { fg = colors.pink })
  hi("Label",         { fg = colors.yellow })
  hi("Operator",      { fg = colors.pink })
  hi("Keyword",       { fg = colors.purple })
  hi("Exception",     { fg = colors.red })
  hi("PreProc",       { fg = colors.purple })
  hi("Include",       { fg = colors.purple })
  hi("Debug",         { fg = colors.red })
  hi("Type",          { fg = colors.yellow })
  hi("Structure",     { fg = colors.yellow })
  hi("Special",       { fg = colors.orange })
  hi("Underlined",    { fg = colors.cyan,  underline = true })
  hi("Error",         { fg = colors.red,   bg = "#2a0b0b", bold = true })

  hi("TSComment",             { fg = colors.comment, italic = true })
  hi("TSConstant",            { fg = colors.cyan })
  hi("TSString",              { fg = colors.green })
  hi("TSNumber",              { fg = colors.violet })
  hi("TSBoolean",             { fg = colors.red })
  hi("TSCharacter",           { fg = colors.green })
  hi("TSFloat",               { fg = colors.violet })
  hi("TSFunction",            { fg = colors.blue })
  hi("TSFuncBuiltin",         { fg = colors.blue })
  hi("TSMethod",              { fg = colors.blue })
  hi("TSConstructor",         { fg = colors.yellow })
  hi("TSParameter",           { fg = colors.orange })
  hi("TSField",               { fg = colors.pink })
  hi("TSProperty",            { fg = colors.cyan })
  hi("TSVariable",            { fg = colors.fg })
  hi("TSVariableBuiltin",     { fg = colors.pink })
  hi("TSKeyword",             { fg = colors.purple })
  hi("TSKeywordFunction",     { fg = colors.purple })
  hi("TSKeywordOperator",     { fg = colors.pink })
  hi("TSKeywordReturn",       { fg = colors.red })
  hi("TSConditional",         { fg = colors.pink })
  hi("TSRepeat",              { fg = colors.pink })
  hi("TSLabel",               { fg = colors.yellow })
  hi("TSOperator",            { fg = colors.pink })
  hi("TSException",           { fg = colors.red })
  hi("TSType",                { fg = colors.purple })
  hi("TSTypeBuiltin",         { fg = colors.violet })
  hi("TSInclude",             { fg = colors.purple })
  hi("TSNamespace",           { fg = colors.blue })
  hi("TSParameterReference",  { fg = colors.fg })

  hi("LspReferenceText",      { bg = "#1d1d27" })
  hi("LspReferenceRead",      { bg = "#1d1d27" })
  hi("LspReferenceWrite",     { bg = "#1d1d27" })
  hi("LspSignatureActiveParameter", { fg = colors.yellow, bold = true })

end

M.setup()
