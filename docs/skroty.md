# Skróty klawiszowe

vim.g.mapleader = " "

| Skróty       | Opis                                                                 |
| ------------ | -------------------------------------------------------------------- |
| `<ctrl-n>`   | Przechodzi do następnej zmiany (Gitsigns)                            |
| `<ctrl-p>`   | Przechodzi do poprzedniej zmiany (Gitsigns)                          |
| `<esc>`      | Wyłącza podświetlanie szukanego tekstu, dodatkowo działa jak **ESC** |
| `<leader>,`  | Przechodzi do poprzedniego bufora                                    |
| `<leader>.`  | Przechodzi do następnego bufora                                      |
| `<leader>;`  | Wchodzi do trybu **COMMAND**                                         |
| `<leader>B`  | Wyszukiwarka buforów `Telescobe buffers`                             |
| `<leader>C`  | Otwiera pusty bufor                                                  |
| `<leader>b`  | Szybkie przejście pomiędzy buforami `BufferPick`                     |
| `<leader>c`  | Zamyka bieżące okno                                                  |
| `<leader>d`  | Usuwa bufor                                                          |
| `<leader>f`  | Wyszukiwarka plików `Telescope find_files`                           |
| `<leader>g`  | Przeszukiwanie plików `Telescope live_grep`                          |
| `<leader>l`  | Wyświetla informacje o pliku                                         |
| `<leader>n`  | Menadżer plików `NvimTree`                                           |
| `<leader>o`  | <cmd>only<cr>                                                        |
| `<leader>q`  | Kończy pracę `:q`                                                    |
| `<leader>r`  | <cmd>Telescope registers<cr>                                         |
| `<leader>so` | <cmd>luafile %<cr><cmd>echo "Plik przeładowany ..."<cr>              |
| `<leader>sp` | <cmd>sp<cr>                                                          |
| `<leader>u`  | Uruchamia rejestr zmian `UndotreeToggle`                             |
| `<leader>vs` | <cmd>vs<cr>                                                          |
| `<leader>w`  | Zapisuje zmiany w pliku jeśli takie miały miejsce                    |
| `<leader>x`  | Zapisuje zmiany i kończy pracę                                       |
| `<leader>z`  | Wychodzi bez zapisania                                               |
| `<tab>`      | Przechodzi pomiędzy dwoma ostatnio używanymi buforami                |
| `dh`         | Usuwa od kursora do początku linii `xd0`                             |
| `dl`         | Usuwa od kursora do końca linii `d$`                                 |
| `gf`         | <cmd>edit <cfile><cr>                                                |
| `gh`         | Przechodzi na początek linii `0`                                     |
| `gj`         | <cmd>lua require"gitsigns.actions".next_hunk()<CR>zv                 |
| `gk`         | <cmd>lua require"gitsigns.actions".prev_hunk()<CR>zv                 |
| `gl`         | Przechodzi na koniec linii `$`                                       |
| `qq`         | Kończy pracę `:q`                                                    |
| `zm`         | Zamyka zagnieżdżony tekst `zn`                                       |
| `zn`         | Otwiera zagnieżdżony tekst`zm`                                       |
