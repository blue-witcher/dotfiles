local colors = {
  bg       = "#0a0a10",
  fg       = "#DBDBDB",
  comment  = "#7c7f93",
  purple   = "#8e44ad",
  lilac    = "#AE81FF",
  pink     = "#FF79D6",
  green    = "#67FF80",
  red      = "#f44747",
  blue     = "#4B98FA",
  darkgray = "#1a1a24",
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.darkgray },
    c = { fg = colors.fg, bg = colors.bg },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.darkgray },
    c = { fg = colors.fg, bg = colors.bg },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.pink, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.darkgray },
    c = { fg = colors.fg, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.red, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.darkgray },
    c = { fg = colors.fg, bg = colors.bg },
  },
  command = {
    a = { fg = colors.bg, bg = colors.purple, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.darkgray },
    c = { fg = colors.fg, bg = colors.bg },
  },
  inactive = {
    a = { fg = colors.comment, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.comment, bg = colors.bg },
    c = { fg = colors.comment, bg = colors.bg },
  },
}
