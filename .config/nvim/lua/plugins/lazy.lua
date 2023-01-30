local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--single-branch",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end

vim.opt.runtimepath:prepend(lazypath)

local ok, lazy = pcall(require, "lazy")
if not ok then return end

lazy.setup({
    { "rose-pine/neovim", enabled = true },
    { "rebelot/kanagawa.nvim", enabled = true },
    { "sainnhe/everforest", enabled = true },
    { "EdenEast/nightfox.nvim", enabled = true },
    { "LunarVim/horizon.nvim", enabled = true },
    { "srcery-colors/srcery-vim", enabled = true },
    { "ayu-theme/ayu-vim", enabled = true },
    { "RRethy/nvim-base16", enabled = false },
    { "catppuccin/nvim", enabled = false },
    { "cocopon/iceberg.vim", enabled = false },
    { "folke/tokyonight.nvim", enabled = false },
    { "gruvbox-community/gruvbox", enabled = false },
    { "kristijanhusak/vim-hybrid-material", enabled = false },
    { "lighthaus-theme/vim-lighthaus", enabled = false },
    { "sainnhe/gruvbox-material", enabled = false },
    { "savq/melange-nvim", enabled = false },
    { "zekzekus/menguless", enabled = false },
    { "yamatsum/nvim-cursorline", enabled = false },
    { "nvim-tree/nvim-web-devicons", enabled = true },
    { "lukas-reineke/indent-blankline.nvim", enabled = true },
    { "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons", enabled = true },
    { "Jorengarenar/fauxClip", enabled = true },
    { "ojroques/vim-oscyank", enabled = true },
    { "MattesGroeger/vim-bookmarks", enabled = true },
    { "tom-anders/telescope-vim-bookmarks.nvim", enabled = true },
    { "nfnty/vim-nftables", enabled = false },
    { "b3nj5m1n/kommentary", enabled = true },
    { "jamessan/vim-gnupg", enabled = true },
    { "goolord/alpha-nvim", enabled = true },
    { "akinsho/toggleterm.nvim", enabled = true },
    { "nyngwang/NeoTerm.lua", enabled = true },
    { "tpope/vim-eunuch", enabled = true },
    { "tpope/vim-repeat", enabled = true },
    { "tpope/vim-surround", enabled = true },
    { "wellle/targets.vim", enabled = true },
    { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim", enabled = true },
    { "ibhagwan/fzf-lua", enabled = false },
    { "hrsh7th/cmp-buffer", enabled = true },
    { "hrsh7th/cmp-path", enabled = true },
    { "hrsh7th/cmp-cmdline", enabled = true },
    { "hrsh7th/nvim-cmp", enabled = true },
    { "hrsh7th/cmp-vsnip", enabled = true },
    { "hrsh7th/vim-vsnip", enabled = true },
    { "folke/zen-mode.nvim", enabled = true },
    { "folke/twilight.nvim", enabled = true },
    { "liuchengxu/vista.vim", enabled = true },
    { "dhruvasagar/vim-table-mode", enabled = true },
    { "vimwiki/vimwiki", enabled = false },
    { "junegunn/vim-markdown-toc", enabled = true },
    { "instant-markdown/vim-instant-markdown", enabled = false },
    { "oberblastmeister/neuron.nvim", enabled = false },
    { "dhruvasagar/vim-dotoo", enabled = false },
    { "folke/todo-comments.nvim", enabled = true },
    { "folke/trouble.nvim", enabled = false },
    { "ggandor/leap.nvim", enabled = true },
    { "mbbill/undotree", enabled = true },
    { "nvim-tree/nvim-tree.lua", enabled = true },
    { "nvim-neo-tree/neo-tree.nvim", dependencies = "MunifTanjim/nui.nvim", enable = true },
    { "nvim-treesitter/nvim-treesitter", enabled = false },
    { "tpope/vim-fugitive", enabled = true },
    { "lewis6991/gitsigns.nvim", enabled = true },
    { "romgrk/barbar.nvim", dependencies = "nvim-tree/nvim-web-devicons", enabled = true },
    { "steelsojka/pears.nvim", enabled = true },
    { "airblade/vim-rooter", enabled = false },
    { "folke/which-key.nvim", enabled = true },
    { "mvllow/modes.nvim", enabled = false },
    {
        'VonHeikemen/lsp-zero.nvim', enabled = true, branch = 'v1.x', dependencies = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {"onsails/lspkind.nvim"},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
})