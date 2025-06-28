-- Halloween cemetery night theme

local M = {}

M.config = function()
    local set = vim.opt
    local cmd = vim.cmd
    set.background = "dark"
    cmd("highlight clear")
    if vim.fn.exists("syntax_on") then cmd("syntax reset") end
    vim.g.colors_name = "halloween"

    local c = {
        -- Gray and dark version
        bg              = "#0d0f13", -- deep night
        fg              = "#abb2bf", -- moonlight
        comment         = "#5c5c5c", -- tombstone grey
        dark_gray       = "#2e3135", -- fog
        orange          = "#d19a66", -- pumpkin
        red             = "#be5046", -- blood
        green           = "#98c379", -- eerie moss
        blue            = "#61afef", -- midnight glow
        purple          = "#c678dd", -- phantom
        yellow          = "#e5c07b", -- candle

        -- blood moon
        bg              = "#0a0a10", -- deep night
        dark_gray       = "#181825", -- tombshade, ui color
        red             = "#d90d0d", -- blood
        poison_green    = "#67FF80", -- potion glow
        dark_purple     = "#8e44ad", -- phantom
        teal            = "#0e1e22", -- cemetery mist
        light_teal      = "#173036", -- visual
        orange          = "#ee892b", -- cooler pumpkin(?)
        blue            = "#1176d4", -- spooky glow
        diff_add        = "#2fa84a",
        diff_change     = "#df8e1d",
        diff_delete     = "#f44747",
        ui              = "#181825",
        cursor          = "#f2f0ec",

    }

    local hi = vim.api.nvim_set_hl

    -- Core
    hi(0, "Normal",                         { fg = c.fg, bg = c.bg })
    hi(0, "CursorColumn",                   { bg = c.ui })
    hi(0, "Visual",                         { bg = c.light_teal})
    hi(0, "LineNr",                         { fg = c.comment, bg = c.bg })
    hi(0, "Cursor",                         { bg = c.cursor })
    hi(0, "CursorLine",                     { bg = c.teal })
    hi(0, "CursorLineNr",                   { fg = c.purple, bg = c.teal })
    hi(0, "Comment",                        { fg = c.comment, italic = true })
    hi(0, "Constant",                       { fg = c.orange })
    hi(0, "String",                         { fg = c.poison_green })
    hi(0, "Character",                      { fg = c.green })
    hi(0, "Number",                         { fg = c.dark_purple })
    hi(0, "Boolean",                        { fg = c.dark_purple })
    hi(0, "Identifier",                     { fg = c.purple })
    hi(0, "Function",                       { fg = c.blue })
    hi(0, "Statement",                      { fg = c.red })
    hi(0, "Conditional",                    { fg = c.red })
    hi(0, "Repeat",                         { fg = c.red })
    hi(0, "Label",                          { fg = c.red })
    hi(0, "Operator",                       { fg = c.fg })
    hi(0, "Keyword",                        { fg = c.purple })
    hi(0, "PreProc",                        { fg = c.purple })
    hi(0, "Type",                           { fg = c.yellow })
    hi(0, "Special",                        { fg = c.purple })
    hi(0, "Underlined",                     { fg = c.blue })
    hi(0, "Todo",                           { fg = c.red, bg = c.ui, bold = true })

    -- Treesitter
    local ts = {
        TSAnnotation                        = { fg = c.purple },
        TSAttribute                         = { fg = c.yellow },
        TSBoolean                           = { fg = c.orange },
        TSCharacter                         = { fg = c.green },
        TSComment                           = { fg = c.comment, italic = true },
        TSConditional                       = { fg = c.red },
        TSConstant                          = { fg = c.orange },
        TSConstructor                       = { fg = c.orange },
        TSException                         = { fg = c.red },
        TSField                             = { fg = c.fg },
        TSFloat                             = { fg = c.orange },
        TSFunction                          = { fg = c.blue },
        TSKeyword                           = { fg = c.purple },
        TSKeywordFunction                   = { fg = c.purple },
        TSLabel                             = { fg = c.red },
        TSMethod                            = { fg = c.blue },
        TSNamespace                         = { fg = c.blue },
        TSNumber                            = { fg = c.orange },
        TSOperator                          = { fg = c.fg },
        TSParameter                         = { fg = c.fg },
        TSParameterReference                = { fg = c.fg },
        TSProperty                          = { fg = c.fg },
        TSPunctDelimiter                    = { fg = c.fg },
        TSPunctBracket                      = { fg = c.fg },
        TSPunctSpecial                      = { fg = c.fg },
        TSRepeat                            = { fg = c.red },
        TSString                            = { fg = c.green },
        TSStringRegex                       = { fg = c.red },
        TSStringEscape                      = { fg = c.red },
        TSSymbol                            = { fg = c.yellow },
        TSType                              = { fg = c.yellow },
        TSTypeBuiltin                       = { fg = c.yellow },
        TSVariable                          = { fg = c.fg },
        TSVariableBuiltin                   = { fg = c.orange },
    }
    for group, opts in pairs(ts) do hi(0, group, opts) end

    -- LSP Diagnostics
    hi(0, "DiagnosticError",                { fg = c.red })
    hi(0, "DiagnosticWarn",                 { fg = c.yellow })
    hi(0, "DiagnosticInfo",                 { fg = c.blue })
    hi(0, "DiagnosticHint",                 { fg = c.green })
    hi(0, "DiagnosticUnderlineError",       { undercurl = true, sp = c.red })
    hi(0, "DiagnosticUnderlineWarn",        { undercurl = true, sp = c.yellow })
    hi(0, "DiagnosticUnderlineInfo",        { undercurl = true, sp = c.blue })
    hi(0, "DiagnosticUnderlineHint",        { undercurl = true, sp = c.green })

    -- Telescope
    hi(0, "TelescopeBorder",                { fg = c.comment })
    hi(0, "TelescopeNormal",                { fg = c.fg, bg = c.bg })
    hi(0, "TelescopePromptBorder",          { fg = c.blue })
    hi(0, "TelescopePromptNormal",          { fg = c.fg, bg = c.ui })
    hi(0, "TelescopePromptPrefix",          { fg = c.orange })
    hi(0, "TelescopeSelection",             { fg = c.orange, bg = c.ui })
    hi(0, "TelescopeResultsBorder",         { fg = c.comment })
    hi(0, "TelescopePreviewBorder",         { fg = c.comment })

    -- nvim-tree
    hi(0, "NvimTreeFolderName",             { fg = c.blue })
    hi(0, "NvimTreeRootFolder",             { fg = c.red, bold = true })
    hi(0, "NvimTreeGitDirty",               { fg = c.yellow })
    hi(0, "NvimTreeGitNew",                 { fg = c.green })
    hi(0, "NvimTreeIndentMarker",           { fg = c.comment })

    -- lualine
    vim.g.lualine_theme = "halloween"

    -- gitsigns
    hi(0, "GitSignsAdd",                    { fg = c.diff_add })
    hi(0, "GitSignsChange",                 { fg = c.diff_change })
    hi(0, "GitSignsDelete",                 { fg = c.diff_delete })

    -- nvim-cmp
    hi(0, "CmpItemAbbrMatch",               { fg = c.orange, bold = true })
    hi(0, "CmpItemAbbrMatchFuzzy",          { fg = c.orange, bold = true })
    hi(0, "CmpItemKindVariable",            { fg = c.purple })
    hi(0, "CmpItemKindFunction",            { fg = c.blue })
    hi(0, "CmpItemKindKeyword",             { fg = c.red })
    hi(0, "CmpItemKindSnippet",             { fg = c.yellow })

    -- bufferline
    hi(0, "BufferLineFill",                 { bg = c.ui })
    hi(0, "BufferLineBackground",           { fg = c.comment, bg = c.ui })
    hi(0, "BufferLineCloseButtonVisible",   { fg = c.comment })
    hi(0, "BufferLineIndicatorSelected",    { fg = c.orange })
    hi(0, "BufferLineModifiedVisible",      { fg = c.green })
    hi(0, "BufferLineBufferVisible",        { fg = c.fg })
    hi(0, "BufferLineSeparatorVisible",     { fg = c.ui })
    hi(0, "BufferLinePickVisible",          { fg = c.red })

    cmd('let g:colors_name = "mytheme"')

    set.guicursor = table.concat({
        -- normal/visual/select modes: block cursor
        'n-v-c:block-Cursor',
        -- insert mode: thin vertical bar using same color
        'i:ver25-Cursor',
        -- replace mode: underline
        'r-cr-o:hor20-Cursor',
    }, ',')

end

M.config()
