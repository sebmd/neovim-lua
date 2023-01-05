vim.api.nvim_create_augroup("AutoUpdatePlugins", { clear = true })
vim.api.nvim_create_autocmd(
  "BufWritePost",
  { pattern = "pluginy.lua", command = "source <afile> | PackerSync", group = "AutoUpdatePlugins" }
)

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- pluginy
return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("rose-pine/neovim")
  use("RRethy/nvim-base16")
  use("rebelot/kanagawa.nvim")
  use("ayu-theme/ayu-vim")
  use("gruvbox-community/gruvbox")
  use("kristijanhusak/vim-hybrid-material")
  use("lighthaus-theme/vim-lighthaus")
  use("sainnhe/everforest")
  use("sainnhe/gruvbox-material")
  use("srcery-colors/srcery-vim")
  use("zekzekus/menguless")
  use({ "yamatsum/nvim-cursorline", disable = true })
  use("kyazdani42/nvim-web-devicons")
  use("lukas-reineke/indent-blankline.nvim")
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })
  use({ "Jorengarenar/fauxClip", disable = true }) -- obsługa schowka systemowego
  use({ "ojroques/vim-oscyank", disable = true }) -- obsługa schowka przez ssh
  use("b3nj5m1n/kommentary") -- komentarze
  use({ "jamessan/vim-gnupg", disable = false }) -- szyfrowanie
  use("akinsho/toggleterm.nvim")
  use("tpope/vim-eunuch")
  use("tpope/vim-repeat")
  use("tpope/vim-surround")
  use("wellle/targets.vim")
  use({
    "nvim-telescope/telescope.nvim",
    -- 'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("vim-scripts/AutoComplPop")
  use({ "folke/zen-mode.nvim", disable = false })
  use("folke/twilight.nvim")
  use({ "dhruvasagar/vim-table-mode", disable = false })
  use({ "vimwiki/vimwiki", disable = true })
  use({ "junegunn/vim-markdown-toc", disable = true })
  use({ "instant-markdown/vim-instant-markdown", disable = true })
  use({ "oberblastmeister/neuron.nvim", disable = true })
  use({ "dhruvasagar/vim-dotoo", disable = true })
  use({ "folke/todo-comments.nvim", disable = true })
  use({ "folke/trouble.nvim", disable = true })
  use("ggandor/leap.nvim")
  use("mbbill/undotree")
  use("nvim-tree/nvim-tree.lua")
  use({ "nvim-treesitter/nvim-treesitter", disable = true })
  use("lewis6991/gitsigns.nvim")
  use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })
  use("steelsojka/pears.nvim")
  use("airblade/vim-rooter")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
