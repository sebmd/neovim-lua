-- Komendy
vim.cmd("command! GP call GP()")
vim.cmd("command! Kolory Telescope colorscheme")
vim.cmd("command! Maps Telescope keymaps")
vim.cmd("command! RevBackground call RevBackground()")
vim.cmd("command! VimTips call ToggleVimTips()")
vim.cmd("command! PS Lazy update")
vim.cmd("command! Docs lua Docs()")
vim.cmd("command! FFC :lua FindFilesDir('$HOME/.config/')<cr>")
vim.cmd("command! CD call CD()")
vim.cmd("command! CopyFileName call CopyFileName()")
