-- options.lua ustawienia
vim.opt.number = true -- wyświetlanie numerów linii
vim.opt.relativenumber = true -- wyświetlanie relatywnych numerów linii
vim.opt.numberwidth = 5 -- ustawia szerokość kolumny numerowania linii
vim.opt.laststatus = 3
-- vim.opt.showtabline = 1 -- górna belka: 0 nie pokazuje; 1 pokazuje jeśli są karty (tab), 2 zasze pokazuje
vim.opt.background = "dark"
vim.wo.conceallevel = 0 -- sprawia, że znaki `` są widzialne w plikach Markdown
vim.bo.textwidth = 100 -- szerokość linii
vim.wo.colorcolumn = "+1"
vim.wo.cursorline = true
-- vim.bo.fileencoding = "utf-8"
-- vim.bo.fileformat = "unix"
vim.opt.encoding = "utf-8"
vim.wo.foldcolumn = "1"
vim.wo.foldmethod = "marker"
vim.opt.iskeyword:append("-,_") -- nie traktuje `-` jako seperatora słowa np: wyraz-jeden uznawane jest za całe słowo
vim.opt.title = true
vim.opt.titlestring = "%<%F%=%l/%L - NVim"
vim.opt.pumheight = 10
vim.opt.autoread = true
vim.opt.autochdir = true
vim.opt.cmdheight = 2
vim.wo.spell = false
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.clipboard = "unnamedplus" -- dostęp do schowka systemowego
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
-- vim.opt.wildmode = "list:longest,full"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true -- enable persistent undo
vim.opt.undolevels = 1000
vim.opt.swapfile = false -- tworzenie pliku swap
vim.opt.signcolumn = "yes:1"
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500 -- czas w milisekundach na wprowadzenie skrótu klawiszowego, ma znaczenie przy sekwencjach np. <leader>sW
vim.opt.whichwrap:append("<,>,h,l")
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.bo.smartindent = true
vim.opt.inccommand = "split"
vim.opt.joinspaces = false
-- vim.opt.formatoptions:remove("c", "r", "o")
vim.wo.linebreak = true
vim.opt.list = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.showmode = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.bo.spelllang = "pl"
vim.opt.termguicolors = true
vim.opt.lazyredraw = true -- szybciej wykonuje makra
vim.wo.wrap = false -- zawijanie linii
vim.opt.path:remove("/usr/include")
vim.opt.path:append("**")
vim.opt.tags:append("./tags,./../tags,./../../tags,./../../../tags,tags")
vim.opt.wildignore = "*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*/node_modules/*"
vim.opt.listchars = "nbsp:⦸,tab:▸ ,eol:¬,extends:»,precedes:«,trail:•" -- eol ↲
vim.opt.showbreak = "↪"
vim.opt.fillchars:append({ eob = " " }) -- usuwa znak ~ na końcu bufora
vim.opt.complete:append("kspell") -- Ctrl+p w trybie INSERT podpowiedzi ze słownika wymaga włączenia trybu spell
vim.opt.mouse = "a"
vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,resize,winpos,terminal"
-- vim.opt.shortmess:append "sI"  -- nie wyświetla ekranu startowego :intro
vim.cmd("silent! colorscheme rose-pine")
