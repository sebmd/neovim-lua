--
-- INFO: SebMD/neovim-lua
--
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

-- ustawienie klawisza leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- pluginy
require("lazy").setup('plugins')

-- Ustawienia
require("options") -- ~/.config/nvim/lua/options.lua
require("mappings") -- ~/.config/nvim/lua/mappings.lua
require("functions") -- ~/.config/nvim/lua/functions.lua
require("commands") -- ~/.config/nvim/lua/commands.lua
require("autocommands") -- ~/.config/nvim/lua/autocommands.lua

-- Ustawienia użytkownika
local status_ok, _ = pcall(require, "user-settings") -- ~/.config/nvim/lua/user-settings.lua
if not status_ok then
  return
end
