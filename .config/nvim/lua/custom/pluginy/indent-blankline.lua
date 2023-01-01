-- indent-blankline
local indent_blankline_status_ok, configs = pcall(require, "indent_blankline")
if not indent_blankline_status_ok then
  return
end

configs.setup({
  -- char = "┊",
  -- char = "|",
  char_list = { "|", "¦", "┆", "┊" },
  space_char_blankline = " ",
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = { "help", "packer", "dashboard" },
  char_highlight = "LineNr",
  show_trailing_blankline_indent = false,
  -- char_highlight_list = { "Normal", "Function", "Error" },
})
