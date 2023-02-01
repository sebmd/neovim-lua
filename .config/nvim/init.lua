--
-- INFO: SebMD/neovim-lua
--

-- ustawienie klawisza leader
vim.g.mapleader = " "
-- ustawienie klawisza localeader
vim.g.maplocalleader = " "

-- Pluginy
require("plugins.lazy") -- ~/.config/nvim/lua/plugins/lazy.lua

-- Ustawienia
require("mappings") -- ~/.config/nvim/lua/mappings.lua
require("options") -- ~/.config/nvim/lua/options.lua
require("functions") -- ~/.config/nvim/lua/functions.lua
require("commands") -- ~/.config/nvim/lua/commands.lua
require("autocommands") -- ~/.config/nvim/lua/autocommands.lua
require("plugins.alpha") -- ~/.config/nvim/lua/plugins/alpha.lua
require("plugins.barbar") -- ~/.config/nvim/lua/plugins/barbar.lua
require("plugins.fzf-lua") -- ~/.config/nvim/lua/plugins/fzf-lua.lua
require("plugins.gitsigns") -- ~/.config/nvim/lua/plugins/gitsigns.lua
require("plugins.indent-blankline") -- ~/.config/nvim/lua/plugins/indent-blankline.lua
require("plugins.kommentary") -- ~/.config/nvim/lua/plugins/kommentary.lua
require("plugins.leap") -- ~/.config/nvim/lua/plugins/leap.lua
require("plugins.lsp-zero") -- ~/.config/nvim/lua/plugins/lsp-zero.lua
require("plugins.lualine") -- ~/.config/nvim/lua/plugins/lualine.lua
require("plugins.modes-nvim") -- ~/.config/nvim/lua/plugins/modes-nvim.lua
require("plugins.neoterm") -- ~/.config/nvim/lua/plugins/neoterm.lua
require("plugins.nvim-cmp") -- ~/.config/nvim/lua/plugins/nvim-cmp.lua
require("plugins.nvim-cursorline-conf") -- ~/.config/nvim/lua/plugins/nvim-cursorline.lua
require("plugins.nvim-tree") -- ~/.config/nvim/lua/plugins/nvim-tree.lua
require("plugins.pears") -- ~/.config/nvim/lua/plugins/pears.lua
require("plugins.rooter") -- ~/.config/nvim/lua/plugins/rooter.lua
require("plugins.smoothcursor") -- ~/.config/nvim/lua/plugins/smoothcursor.lua
require("plugins.telescope") -- ~/.config/nvim/lua/plugins/telescope.lua
require("plugins.todo-comments") -- ~/.config/nvim/lua/plugins/todo-comments.lua
require("plugins.toggleterm") -- ~/.config/nvim/lua/plugins/toggleterm.lua
require("plugins.treesitter") -- ~/.config/nvim/lua/plugins/treesitter.lua
require("plugins.vimwiki") -- ~/.config/nvim/lua/plugins/vimwiki.lua
require("plugins.which-key") -- ~/.config/nvim/lua/plugins/which-key.lua
require("plugins.zenmode") -- ~/.config/nvim/lua/plugins/zenmode.lua

-- Ustawienia użytkownika
local status_ok, _ = pcall(require, "user-settings") -- ~/.config/nvim/lua/user-settings.lua
if not status_ok then
  return
end
