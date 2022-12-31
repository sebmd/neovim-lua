-- mapowanie klawiszy keys.lua
vim.g.mapleader = " "

vim.keymap.set("x", "<leader>;", ":", { silent = false })
vim.keymap.set("n", "<c-_>", "<Plug>kommentary_line_default", {})
vim.keymap.set("n", "<c-n>", '<cmd>lua require"gitsigns.actions".next_hunk()<CR>zv')
vim.keymap.set("n", "<c-p>", '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>zv')
vim.keymap.set("n", "<esc>", "<cmd>nohl<cr><esc>", { silent = true })
vim.keymap.set("n", "<leader>,", "<cmd>bp<cr>")
vim.keymap.set("n", "<leader>.", "<cmd>bn<cr>")
vim.keymap.set("n", "<leader>;", ":", { silent = false })
vim.keymap.set("n", "<leader>B", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>C", "<cmd>enew<cr>")
vim.keymap.set("n", "<leader>b", "<cmd>BufferPick<cr>")
vim.keymap.set("n", "<leader>c", "<cmd>close<cr>")
vim.keymap.set("n", "<leader>d", "<cmd>bd<cr>")
vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>l", "<cmd>call FileInfo()<cr>")
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>o", "<cmd>only<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>r", "<cmd>Telescope registers<cr>")
vim.keymap.set("n", "<leader>so", '<cmd>luafile %<cr><cmd>echo "Plik przeładowany ..."<cr>')
vim.keymap.set("n", "<leader>sp", "<cmd>sp<cr>")
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>")
vim.keymap.set("n", "<leader>vs", "<cmd>vs<cr>")
vim.keymap.set("n", "<leader>w", "<cmd>lua Write()<cr>")
vim.keymap.set("n", "<leader>x", "<cmd>lua Write()<cr><cmd>q<cr>")
vim.keymap.set("n", "<leader>z", "<cmd>q!<cr>")
vim.keymap.set("n", "<tab>", "<cmd>e #<cr>")
vim.keymap.set("n", "dh", "xd0")
vim.keymap.set("n", "dl", "d$")
vim.keymap.set("n", "gf", "<cmd>edit <cfile><cr>")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("n", "gj", '<cmd>lua require"gitsigns.actions".next_hunk()<CR>zv')
vim.keymap.set("n", "gk", '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>zv')
-- Poruszanie się w długiej zawiniętej linii
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "qq", "<cmd>q<cr>")
vim.keymap.set("n", "zm", "zn")
vim.keymap.set("n", "zn", "zm")
vim.keymap.set("x", "<c-_>", "<Plug>kommentary_visual_default", {})
vim.keymap.set("x", "<leader>;", ":", { silent = false })
vim.keymap.set("x", "gh", "0")
vim.keymap.set("x", "gl", "$")
-- Mapowanie znaczników (undo) w trybie INSERT po wprowadzeniu jednego ze znaków , . ! ? ; :
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", "!", "!<c-g>u")
vim.keymap.set("i", "?", "?<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")
vim.keymap.set("i", ":", ":<c-g>u")
-- Wyjście z trybu INSERT
vim.keymap.set("i", "kj", "<esc>")
-- Poruszanie się pomiędzy zmianami w pliku
vim.keymap.set("n", "g;", "g;zvzz")
vim.keymap.set("n", "g,", "g,zvzz")
-- Poruszanie się pomiędzy paragrafami
vim.keymap.set("n", "}", "}zvzz")
vim.keymap.set("n", "{", "{zvzz")
-- TAB w trybie VISUAL pozostaje w trybie VISUAL
vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")
-- Poruszanie się w trybie INSERT za pomocą skrótów <c-h,j,k,l>
vim.keymap.set("i", "<c-h>", "<left>")
vim.keymap.set("i", "<c-j>", "<down>")
vim.keymap.set("i", "<c-k>", "<up>")
vim.keymap.set("i", "<c-l>", "<right>")
-- Zmiana wielkości okna
vim.keymap.set("n", "<m-h>", "<cmd>vertical resize -2<cr>")
vim.keymap.set("n", "<m-j>", "<cmd>resize +2<cr>")
vim.keymap.set("n", "<m-k>", "<cmd>resize -2<cr>")
vim.keymap.set("n", "<m-l>", "<cmd>vertical resize +2<cr>")
-- `mm` - tworzy znacznik; `mM` - wraca na miejsce znacznika
vim.keymap.set("n", "mm", "mm") -- tego oczywiście nie trzeba dodatkowo mapować
vim.keymap.set("n", "mM", "`m")
-- Project
vim.keymap.set("n", "<leader>p", ":Telescope project<cr>")
-- Historia komend :
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "q:", ":Telescope command_history<cr>")
vim.keymap.set("n", "q;", ":Telescope command_history<cr>")
vim.keymap.set("n", "<leader>hc", ":Telescope command_history<cr>")
-- Uruchamia tryb ZenMode
vim.keymap.set("n", "<leader>ze", "<cmd>ZenMode<cr>")
-- Git Status
vim.keymap.set(
  "n",
  "<leader>i",
  '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_dropdown({}))<cr>'
)
-- Poruszanie się pomiędzy oknami za pomocą <c-h,j,k,l>
vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")
vim.keymap.set("t", "<c-r>p", '<c-r>"')
-- Przechodzi do kolejnej / poprzedniej szukanej pozycji, dodatkowo wyśrodkowuje ekran i otwiera zagnieżdżenia
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Przechodzi ekran w dół / górę jednocześnie wyśrodkowując stronę i otwierając zagnieżdżenia
vim.keymap.set("n", "<c-d>", "<c-d>zzzv")
vim.keymap.set("n", "<c-u>", "<c-u>zzzv")
-- Łączy linie pozostawiając kursor w obecnej pozycji
vim.keymap.set("n", "J", "mzJ`z")
-- Kopiuje cały plik
vim.keymap.set("n", "ya", "mzggVGy`z")
-- Łatwiejsza inkrementacja i dekremenatacja liczb
vim.keymap.set("n", "+", "<C-a>", { silent = true })
vim.keymap.set("x", "+", "<C-a>", { silent = true })
vim.keymap.set("n", "-", "<C-x>", { silent = true })
vim.keymap.set("x", "-", "<C-x>", { silent = true })
-- Wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długośc 'textwidth' znaków 'gqap'
vim.keymap.set("n", "<leader>a", "=ip gqap")
-- zaznacza wyraz pod kursorem i przechodzi do modyfikacji wszystkich znalezionych wyrazów
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- w trybie VISUAL ('v') należy zacząć zaznaczanie od słowa, które chcemy zamienić
vim.keymap.set("x", "<leader>s", ":s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Poruszanie się w trybie COMMAND
vim.keymap.set("c", "<c-j>", "<down>")
vim.keymap.set("c", "<c-k>", "<up>")
vim.keymap.set("c", "<c-h>", "<left>")
vim.keymap.set("c", "<c-l>", "<right>")
-- Mapowanie dla terminala
vim.keymap.set("t", "<c-h>", "<c-\\><c-n><c-w>h")
vim.keymap.set("t", "<c-j>", "<c-\\><c-n><c-w>j")
vim.keymap.set("t", "<c-k>", "<c-\\><c-n><c-w>k")
vim.keymap.set("t", "<c-l>", "<c-\\><c-n><c-w>l")
-- Lista zmapowanych klawiszy
vim.keymap.set("n", "<leader>m", ":Telescope keymaps<cr>")
-- Usuwa zaznaczony tekst a następnie wkleja tekst ze schowka bez podmiany rejestru
-- vim.keymap.set("x", "<leader>p", '"_dP')
-- Wkleja ostatnio skopiowany tekst, NIE usunięty, ustawiony jako ,p i ,P
-- vim.keymap.set("n", ",p", '"0p')
-- vim.keymap.set("n", ",P", '"0P')
-- Usuwa obiekt tekstowy nie kopiując go do standardowego rejestru
-- vim.keymap.set("n", "<leader>d", '"-d')
-- Edcja konfiguracji
vim.keymap.set("n", "<leader>v", "<cmd>lua NvimConfig()<cr>")