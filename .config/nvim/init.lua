-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- mapowanie klawisza leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- pluginy
require("lazy").setup('plugins')

-- Ustawienia
require("config") -- ~/.config/nvim/lua/config.lua
require("skroty") -- ~/.config/nvim/lua/skroty.lua
require("funkcje") -- ~/.config/nvim/lua/funkcje.lua
require("komendy") -- ~/.config/nvim/lua/komendy.lua
require("autocmd") -- ~/.config/nvim/lua/autocmd.lua
