-- config.lua ustawienia
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.laststatus = 3
vim.opt.showtabline = 1 -- górna belka: 0 nie pokazuje; 1 pokazuje jeśli są karty (tab), 2 zasze pokazuje
vim.opt.background = "dark"
vim.wo.conceallevel = 0
vim.bo.textwidth = 100
vim.wo.colorcolumn = "+1"
vim.wo.cursorline = true
vim.bo.fileencoding = "utf-8"
vim.bo.fileformat = "unix"
vim.opt.encoding = "utf-8"
vim.wo.foldcolumn = "1"
vim.wo.foldmethod = "marker"
vim.opt.title = true
vim.opt.titlestring = "%<%F%=%l/%L - NVim"
vim.opt.pumheight = 10
vim.opt.autoread = true
vim.opt.autochdir = true
vim.opt.cmdheight = 2
vim.wo.spell = false
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menone", "noselect" }
vim.opt.backup = false
vim.opt.signcolumn = "yes:1"
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.whichwrap:append("<,>,h,l")
