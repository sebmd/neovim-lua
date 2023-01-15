vim.api.nvim_create_augroup("AutoUpdatePlugins", { clear = true })
vim.api.nvim_create_autocmd(
  "BufWritePost",
  { pattern = "pluginy.lua", command = "source <afile> | PackerSync", group = "AutoUpdatePlugins" }
)

-- po instalacji można usunąć ten paragraf
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
  use({ "rose-pine/neovim", disable = false })
  use({ "RRethy/nvim-base16", disable = false })
  use({ "rebelot/kanagawa.nvim", disable = false })
  use({ "ayu-theme/ayu-vim", disable = false })
  use({ "gruvbox-community/gruvbox", disable = false })
  use({ "kristijanhusak/vim-hybrid-material", disable = false })
  use({ "lighthaus-theme/vim-lighthaus", disable = false })
  use({ "sainnhe/everforest", disable = false })
  use({ "sainnhe/gruvbox-material", disable = false })
  use({ "srcery-colors/srcery-vim", disable = false })
  use({ "zekzekus/menguless", disable = false })
  use({ "EdenEast/nightfox.nvim", disable = false })
  use({ "folke/twilight.nvim", disable = false })
  use({ "yamatsum/nvim-cursorline", disable = true })
  use({ "kyazdani42/nvim-web-devicons", disable = false })
  use({ "lukas-reineke/indent-blankline.nvim", disable = false })
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    disable = false
  })
  use({ "Jorengarenar/fauxClip", disable = true }) -- obsługa schowka systemowego
  use({ "ojroques/vim-oscyank", disable = true }) -- obsługa schowka przez ssh
  use({ "b3nj5m1n/kommentary", disable = fale }) -- komentarze
  use({ "jamessan/vim-gnupg", disable = false }) -- szyfrowanie
  use({ "akinsho/toggleterm.nvim" })
  use({ "tpope/vim-eunuch", disable = false })
  use({ "tpope/vim-repeat", disable = false })
  use({ "tpope/vim-surround", disable = false })
  use({ "wellle/targets.vim", disable = false })
  use({
    "nvim-telescope/telescope.nvim",
    -- 'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
    disable = false
  })
  use({ "ibhagwan/fzf-lua", disable = true })
  use({ "hrsh7th/cmp-buffer", disable = false })
  use({ "hrsh7th/cmp-path", disable = false })
  use({ "hrsh7th/cmp-cmdline", disable = false })
  use({ "hrsh7th/nvim-cmp", disable = false })
  use({ "hrsh7th/cmp-vsnip", disable = false })
  use({ "hrsh7th/vim-vsnip", disable = false })
  use({ "folke/zen-mode.nvim", disable = false })
  use({ "dhruvasagar/vim-table-mode", disable = false })
  use({ "vimwiki/vimwiki", disable = true })
  use({ "junegunn/vim-markdown-toc", disable = true })
  use({ "instant-markdown/vim-instant-markdown", disable = true })
  use({ "oberblastmeister/neuron.nvim", disable = true })
  use({ "dhruvasagar/vim-dotoo", disable = true })
  use({ "folke/todo-comments.nvim", disable = true })
  use({ "folke/trouble.nvim", disable = true })
  use({ "ggandor/leap.nvim", disable = false })
  use({ "mbbill/undotree", disable = false })
  use({ "nvim-tree/nvim-tree.lua", disable = false })
  use({ "nvim-treesitter/nvim-treesitter", disable = true })
  use({ "tpope/vim-fugitive", disable = false})
  use({ "lewis6991/gitsigns.nvim", disable = false })
  use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons", disable = false })
  use({ "steelsojka/pears.nvim", disable = false })
  use({ "airblade/vim-rooter", disable = false })
  use({ "folke/which-key.nvim", disable = false })
  use({ "mvllow/modes.nvim", disable = false })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
