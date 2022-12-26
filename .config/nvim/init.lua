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

  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  })

  use("kyazdani42/nvim-web-devicons")

  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })

  use("b3nj5m1n/kommentary") -- komentarze

  use({
    "nvim-telescope/telescope.nvim",
    -- 'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use("ggandor/leap.nvim")

  use("mbbill/undotree")

  use("nvim-tree/nvim-tree.lua")

  use("lewis6991/gitsigns.nvim")

  use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })

  use("steelsojka/pears.nvim")

  if packer_bootstrap then
    require("packer").sync()
  end

  -- dalsza konfiguracja
  require("custom") -- ~/.config/nvim/lua/custom/init.lua
end)
