-- mapowanie klawiszy mappings.lua
-- mapowanie klawisza leader w pliku ~/.config/nvim/init.lua
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>5", "<cmd>!./%<cr>", { desc = "Uruchom skrypt" })
vim.keymap.set("n", "<leader>7", "<cmd>setlocal spell! spell? spelllang=pl<cr>", { desc = "Włącz sprawdzanie pisowni" })
vim.keymap.set("n", "<c-n>", '<cmd>lua require"gitsigns.actions".next_hunk()<cr>zv')
vim.keymap.set("n", "<c-p>", '<cmd>lua require"gitsigns.actions".prev_hunk()<cr>zv')
vim.keymap.set("n", "gj", '<cmd>lua require"gitsigns.actions".next_hunk()<cr>zv', { desc = "Następna zmiana w pliku - Git" })
vim.keymap.set("n", "gk", '<cmd>lua require"gitsigns.actions".prev_hunk()<cr>zv', { silent = true }, { desc = "Poprzednia zmiana w pliku - git" })
vim.keymap.set("n", "<esc>", "<cmd>nohl<cr>", { silent = true })
-- bufory
vim.keymap.set("n", "<leader>,", "<cmd>bp<cr>", { desc = "Poprzedni bufor" })
vim.keymap.set("n", "<leader>.", "<cmd>bn<cr>", { desc = "Następny bufor" })
vim.keymap.set("n", "<tab>", "<cmd>e #<cr>")
vim.keymap.set("n", "<leader>B", "<cmd>Telescope buffers<cr>", { desc = "Przechodzi do wybranego bufora - Telescope" })
vim.keymap.set("n", "<leader>Bs", "<cmd>BufferOrderByBufferNumber<cr>")
vim.keymap.set("n", "<leader>Bd", "<cmd>BufferPickDelete<cr>", { desc = "Zamknięcie bufora" })
vim.keymap.set("n", "<leader>Bc", "<cmd>BufferCloseAllButCurrent<cr>")
vim.keymap.set("n", "<leader>b", "<cmd>BufferPick<cr>", { desc = "Przechodzi do wybranego bufora" })
vim.keymap.set("n", "<leader>d", "<cmd>bd<cr>", { desc = "Zamknięcie bufora" })
-- okna
vim.keymap.set("n", "<leader>o", "<cmd>only<cr>", { desc = "Zamyka wszystkie okna poza aktywnym" })
vim.keymap.set("n", "<leader>c", "<cmd>close<cr>", { desc = "Zamyka aktywne okno" })
-- Poruszanie się pomiędzy oknami za pomocą <c-h,j,k,l>
vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")
-- dzielenie okien
vim.keymap.set("n", "<leader>sp", "<cmd>sp<cr>")
vim.keymap.set("n", "<leader>vs", "<cmd>vs<cr>")
-- Zmiana wielkości okna
vim.keymap.set("n", "<m-h>", "<cmd>vertical resize -2<cr>")
vim.keymap.set("n", "<m-j>", "<cmd>resize +2<cr>")
vim.keymap.set("n", "<m-k>", "<cmd>resize -2<cr>")
vim.keymap.set("n", "<m-l>", "<cmd>vertical resize +2<cr>")
--
vim.keymap.set("n", "<leader>;", ":", { desc = "Wchodzi do trybu COMMAND" }, { silent = false })
vim.keymap.set("x", "<leader>;", ":", { desc = "Wchodzi do trybu COMMAND" }, { silent = false })
vim.keymap.set("n", "<leader>C", "<cmd>enew<cr>", { desc = "Tworzy nowy plik" })
-- vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>")
vim.keymap.set(
  "n",
  "<leader>f",
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '--follow', '-g', '!.git' }})<cr>",
  { desc = "Wyszukuje pliki" }
)
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>l", "<cmd>lua FileInfo()<cr>", { desc = "Wyświetla informacje o pliku" })
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<cr>", { desc = "Menadżer plików NvimTree" })
vim.keymap.set("n", "<leader>N", "<cmd>NeoTreeShowToggle<cr>", { desc = "Menadżer plików NeoTree" })
vim.keymap.set("n", "<leader>r", "<cmd>Telescope registers<cr>", { desc = "Przeszukiwanie rejestrów" })
vim.keymap.set("n", "<leader>so", '<cmd>luafile %<cr><cmd>echo "Plik przeładowany ..."<cr>')
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Uruchamia terminal ToggleTerm" })
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Rejestr zmian Undotree" })
vim.keymap.set("n", "<leader>w", "<cmd>lua Write()<cr>", { desc = "Zapisuje zmiany" })
vim.keymap.set("n", "<leader>x", "<cmd>lua Write()<cr><cmd>q<cr>", { desc = "Zapisuje zmiany i wychodzi" })
vim.keymap.set("n", "<leader>z", "<cmd>q!<cr>", { desc = "Kończy pracę :q!" })
vim.keymap.set("n", "<leader>q", "<cmd>qa<cr>", { desc = "Kończy pracę :qa" })
vim.keymap.set("n", "qq", "<cmd>q<cr>")
vim.keymap.set("n", "<c-_>", "<Plug>kommentary_line_default", {})
vim.keymap.set("x", "<c-_>", "<Plug>kommentary_visual_default", {})
vim.keymap.set("n", "dh", "xd0", { desc = "Usuwa od znaku do początku linii" })
vim.keymap.set("n", "dl", "d$", { desc = "Usuwa od znaku do końca linii" })
vim.keymap.set("n", "gf", "<cmd>edit <cfile><cr>")
-- Uruchamia przeglądarkę na linku pod kursorem używając przeglądarki zdefiniowanej w zmiennej $BROWSER
vim.keymap.set("n", "gx", "<cmd>silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<cr>")
vim.keymap.set({"n", "x" }, "gh", "0", { desc = "Początek linii" })
vim.keymap.set({"n", "x" }, "gl", "$", { desc = "Koniec linii" })
vim.keymap.set({"n", "x" }, "$", "g_")  -- przechodzi do ostatniego drukowalnego znaku w linii
-- vim.keymap.set("n", "H", "0")
-- vim.keymap.set("n", "M", "gM")
-- vim.keymap.set("n", "L", "$")
-- Poruszanie się w długiej zawiniętej linii
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "zm", "zn")
vim.keymap.set("n", "zn", "zm")
-- Mapowanie znaczników (undo) w trybie INSERT po wprowadzeniu jednego ze znaków , . ! ? ; :
local undo_ch = { ",", ".", "!", "?", ";", ":" }
for _, ch in ipairs(undo_ch) do
  vim.keymap.set("i", ch, ch .. "<c-g>u")
end
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
-- Przemieszczanie zaznaczonych linii
vim.keymap.set("x", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("x", "K", ":m '<-2<cr>gv=gv")
-- Poruszanie się w trybie INSERT za pomocą skrótów <c-h,j,k,l>
vim.keymap.set("i", "<c-h>", "<left>")
vim.keymap.set("i", "<c-j>", "<down>")
vim.keymap.set("i", "<c-k>", "<up>")
vim.keymap.set("i", "<c-l>", "<right>")
-- `mm` - tworzy znacznik; `mM` - wraca na miejsce znacznika
-- vim.keymap.set("n", "mm", "mm") -- tego oczywiście nie trzeba dodatkowo mapować
-- vim.keymap.set("n", "mM", "`mzvzz")
vim.keymap.set("n", "mm", "<cmd>BookmarkToggle<cr>")
vim.keymap.set("n", "ma", "<cmd>BookmarkAnnotate<cr>")
-- vim.keymap.set("n", "mA", "<cmd>BookmarkShowAll<cr>")
vim.keymap.set("n", "mn", "<cmd>BookmarkNext<cr>")
vim.keymap.set("n", "mp", "<cmd>BookmarkPrev<cr>")
vim.keymap.set("n", "mc", "<cmd>BookmarkClearAll<cr>")
vim.keymap.set("n", "ml", "<cmd>BookmarkMoveToLine<cr>")
-- Uruchomienie panelu bocznego Vista
vim.keymap.set("n", "<leader>V", "<cmd>Vista<cr>")
-- Historia komend :
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "q:", ":Telescope command_history<cr>")
vim.keymap.set("n", "q;", ":Telescope command_history<cr>")
vim.keymap.set("n", "<leader>hc", ":Telescope command_history<cr>")
-- Pokazuje / ukrwa relatywne numerowanie linii
vim.keymap.set("n", "<leader>hr", "<cmd>set relativenumber!<cr>")
-- Uruchamia tryb ZenMode
vim.keymap.set("n", "<leader>ze", "<cmd>ZenMode<cr>")
-- Git Status
vim.keymap.set(
  "n",
  "<leader>i",
  '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_dropdown({}))<cr>',
  { desc = "Pokazuje zmiany w repozytorium Git" }
)
-- Przechodzi do kolejnej / poprzedniej szukanej pozycji, dodatkowo wyśrodkowuje ekran i otwiera zagnieżdżenia
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Przechodzi ekran w dół / górę jednocześnie wyśrodkowując stronę i otwierając zagnieżdżenia
vim.keymap.set("n", "<c-d>", "<c-d>zzzv")
vim.keymap.set("n", "<c-u>", "<c-u>zzzv")
-- Łączy linie pozostawiając kursor w obecnej pozycji
vim.keymap.set("n", "J", "mzJ`z")
-- Kopiuje cały plik
vim.keymap.set("n", "ya", "<cmd>%yank<cr>")
-- Łatwiejsza inkrementacja i dekremenatacja liczb
vim.keymap.set("n", "+", "<C-a>", { silent = true })
vim.keymap.set("x", "+", "<C-a>", { silent = true })
vim.keymap.set("n", "-", "<C-x>", { silent = true })
vim.keymap.set("x", "-", "<C-x>", { silent = true })
-- Wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długośc 'textwidth' znaków 'gqap'
vim.keymap.set("n", "<leader>a", "=ip gqap", { desc = "Wyrównanie paragrafu" })
-- zaznacza wyraz pod kursorem i przechodzi do modyfikacji wszystkich znalezionych wyrazów
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Znajdź i zamień, wyraz pod kursorem" })
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
-- Wklejanie w linii komend
vim.keymap.set("c", "<c-r>p", '<c-r>"')
-- Lista zmapowanych klawiszy
-- vim.keymap.set("n", "<leader>m", ":Telescope keymaps<cr>")
-- Kopiuje linię bez znaku końca linii
vim.keymap.set("n", "<leader>y", "0v$hy", { desc = "Kopiuje linię bez znaku końca linii" })
-- wkleja za lub przed bieżącą linią
vim.keymap.set("n", "<leader>p", "m`o<ESC>p``", { desc = "Wkleja poniżej bieżącej linii" })
vim.keymap.set("n", "<leader>P", "m`O<ESC>p``", { desc = "Wkleja powyżej bieżącej linii" })
-- kopiuje do schowka systemowego np: <leader>yp - kopiuje paragraf do schowka systemowego
-- vim.keymap.set("n", "<leader>y", "\"+y")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")
-- vim.keymap.set("x", "<leader>y", "\"+y")
-- Usuwa zaznaczony tekst a następnie wkleja tekst ze schowka bez podmiany rejestru
-- vim.keymap.set("x", "<leader>p", "\"_dP")
-- Wkleja ostatnio skopiowany tekst, NIE ten wycięty/usunięty, ustawiony jako ,p i ,P
-- vim.keymap.set("n", ",p", '"0p')
-- vim.keymap.set("n", ",P", '"0P')
vim.keymap.set("x", "p", '"_c<Esc>p')  -- wkleja, nie podmieniając rejestru w trybie VISUAL
-- Usuwa obiekt tekstowy nie kopiując go do standardowego rejestru
-- vim.keymap.set("n", "<leader>d", "\"_d")
-- vim.keymap.set("x", "<leader>d", "\"_d")
-- Edcja konfiguracji
vim.keymap.set("n", "<leader>v", "<cmd>lua NvimConfig()<cr>")
-- Przeszukiwanie dokuentacji
vim.keymap.set("n", "<leader>D", "<cmd>lua Docs()<cr>", { desc = "Przeszukiwanie lokalnej dokumentacji" })
-- Obsługa pluginu vim-surround
-- <leader>sw czeka na wprowadzenie znaku, którym otoczy wyraz
-- <leader>sW czeka na wprowadzenie znaku, którym otoczy WYRAZ
-- <leader>sp czeka na wprowadzenie znaku, który otoczy paragraf
-- <leader>ss czeka na wprowadzenie znaku, którym otoczy linię
-- <leader>sd czeka na wprowadzenie znaku, którym zostanie usunięty
vim.keymap.set("n", "<leader>sw", ":norm ysiw")
vim.keymap.set("n", "<leader>sW", ":norm ysiW")
vim.keymap.set("n", "<leader>ssp", ":norm ysip")
vim.keymap.set("n", "<leader>ss", ":norm yss")
vim.keymap.set("n", "<leader>sdd", ":norm ds")
-- Telescope recent files, bookmarks
vim.keymap.set("n", "<leader>m", require('telescope').extensions.vim_bookmarks.all, { desc = "Wyszukiwarka znaczników" }, {})
vim.keymap.set("n", "<leader>M", require('telescope').extensions.vim_bookmarks.current_file, { desc = "Wyszukiwarka lokalnych znaczników" }, {})
-- Sugestie sprawdzania pisowni
vim.keymap.set("n", "gs", "<cmd>lua require('telescope.builtin').spell_suggest()<CR>")
-- Kopiuje bieżącą linię do pliku $NOTES_DIR/INBOX.md
-- vim.keymap.set("n", "<leader>ci", '<cmd>lua CopyLineToFile(os.getenv("NOTES_DIR") .. "/INBOX.md")<cr>')
-- Kopiuje zaznaczone linie do pliku $NOTES_DIR/INBOX.md
--[[ vim.keymap.set(
  "x",
  "<leader>ci",
  ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'INBOX.md', 'a')<cr>:cd %:p:h<cr>"
) ]]
-- Przenosi bieżącą linię do $NOTES_DIR/INBOX.md
--[[ vim.keymap.set(
  "n",
  "<leader>si",
  '<cmd>lua SendLineToFile(os.getenv("NOTES_DIR") .. "/INBOX.md")<cr>'
) ]]
-- Przenosi zaznaczone linie do pliku $NOTES_DIR/INBOX.md
--[[ vim.keymap.set(
  "x",
  "<leader>si",
  ":'<,'>d<cr>:cd $notes_dir<cr>:call writefile(getreg('@', 1, 1), 'inbox.md', 'a')<cr>:cd %:p:h<cr>"
) ]]
-- edycja pliku $notes_dir/inbox.md
-- vim.keymap.set("n", "<leader>ei", ":e $notes_dir/inbox.md<cr>")
-- Wyszukiwanie plików w katalogu $NOTES_DIR
-- vim.keymap.set("n", "<leader>ee", "<cmd>lua FindNotesDir()<cr>")
-- Przeszukiwanie plików w katalogu $NOTES_DIR
-- vim.keymap.set("n", "<leader>er", "<cmd>lua GrepNotesDir()<cr>")
-- Ustawienia skrótów klawiszowych dla plików pomocy
-- vim.api.nvim_create_augroup("HelpMap", { clear = true })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = {
--     "help",
--   },
--   callback = function()
--     vim.api.nvim_command([[ nnoremap <c-n> :cnext<cr> ]])
--     vim.api.nvim_command([[ nnoremap <c-p> :cprevious<cr> ]])
--     vim.api.nvim_command([[ nnoremap <leader>l <c-]> ]])
--     vim.api.nvim_command([[ nnoremap <leader>h <c-t> ]])
--     vim.api.nvim_command([[ nnoremap q :quit<cr> ]])
--   end,
--   group = "HelpMap",
-- })
-- Dublowanie linii
-- vim.keymap.set("n", "tt", ":t.<cr>")
-- Klonuje cały paragraf
-- map("n", "<leader>cp", "yap<s-}>p")

-- Telescope
-- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
-- vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
-- vim.keymap.set("n", "<leader>ft", "<cmd>Telescope tags<cr>")
-- vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
-- vim.keymap.set("n", "<leader>fc", "<cmd>Telescope command_history<cr>")
--
-- Klawisz `K` w plikach lua wywołuje pomoc dla wyrazu pod kursorem
-- vim.api.nvim_create_autocmd("FileType", {
  -- pattern = { "lua" },
  -- command = [[nnoremap K viwy:help <c-r>"<cr>]],
-- })
-- Klawisz `K` w plikach lua wywołuje pomoc dla wyrazu pod kursorem
-- vim.api.nvim_create_autocmd("FileType", {
  -- pattern = { "sh" },
  -- command = [[nnoremap K viwy:Man <c-r>"<cr>]],
-- })
