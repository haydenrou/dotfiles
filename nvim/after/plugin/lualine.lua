local rose_palette = require('rose-pine.palette')

local transparent_rose = {
  normal = {
    a = { bg = nil, fg = rose_palette.rose, gui = 'bold' },
    b = { bg = nil, fg = rose_palette.text },
    c = { bg = nil, fg = rose_palette.subtle, gui = 'italic' },
  },
  insert = {
    a = { bg = rose_palette.surface, fg = rose_palette.foam, gui = 'bold' },
  },
  visual = {
    a = { bg = rose_palette.surface, fg = rose_palette.iris, gui = 'bold' },
  },
  replace = {
    a = { bg = rose_palette.surface, fg = rose_palette.pine, gui = 'bold' },
  },
  command = {
    a = { bg = rose_palette.surface, fg = rose_palette.love, gui = 'bold' },
  },
  inactive = {
    a = { bg = nil, fg = rose_palette.subtle, gui = 'bold' },
    b = { bg = nil, fg = rose_palette.subtle },
    c = { bg = nil, fg = rose_palette.subtle, gui = 'italic' },
  },
}

require("lualine").setup({ options = { theme = transparent_rose } })
