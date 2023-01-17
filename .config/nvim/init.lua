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
-- Pluginy
-- require("pluginy.lualine") -- ~/.config/nvim/lua/pluginy/lualine.lua
-- require("pluginy.leap") -- ~/.config/nvim/lua/pluginy/leap.lua
-- require("pluginy.gitsigns") -- ~/.config/nvim/lua/custom/pluginy/gitsigns.lua
-- require("pluginy.nvim-tree") -- ~/.config/nvim/lua/custom/pluginy/nvim-tree.lua
-- require("pluginy.kommentary") -- ~/.config/nvim/lua/custom/pluginy/kommentary.lua
-- require("pluginy.pears") -- ~/.config/nvim/lua/custom/pluginy/pears.lua
-- require("pluginy.zenmode") -- ~/.config/nvim/lua/custom/pluginy/zenmode.lua
-- require("pluginy.nvim-cursoline") -- ~/.config/nvim/lua/custom/pluginy/nvim-cursoline.lua
-- require("pluginy.indent-blankline") -- ~/.config/nvim/lua/custom/pluginy/indent-blankline.lua
-- require("pluginy.toggleterm") -- ~/.config/nvim/lua/custom/pluginy/toggleterm.lua
-- require("pluginy.tree-sitter") -- ~/.config/nvim/lua/custom/pluginy/tree-sitter.lua
-- require("pluginy.rooter") -- ~/.config/nvim/lua/custom/pluginy/rooter.lua
-- require("pluginy.nvim-cmp")  -- ~/.config/nvim/lua/custom/pluginy/nvim-cmp.lua
-- require("pluginy.which-key") -- ~/.config/nvim/lua/custom/pluginy/which-key.lua
-- require("pluginy.modes-nvim") -- ~/.config/nvim/lua/custom/pluginy/modes-nvim.lua
