# Skróty klawiszowe

| Skróty       | Opis                                                                 |
| ------------ | -------------------------------------------------------------------- |
| `<spacja>`   | Klawisz **LEADER**                                                   |
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
| `<leader>D`  | Wyszukuje plików dokumentacji w `$HOME/.config/nvim/docs/`           |
| `<leader>f`  | Wyszukiwarka plików `Telescope find_files`                           |
| `<leader>g`  | Przeszukiwanie plików `Telescope live_grep`                          |
| `<leader>l`  | Wyświetla informacje o pliku                                         |
| `<leader>m`  | Wyświetla listę zmapowanych klawiszy `Telescope keymaps`             |
| `<leader>n`  | Menadżer plików `NvimTree`                                           |
| `<leader>o`  | Zamyka wszystkie okna poza bieżącym                                  |
| `<leader>p`  | Lista projektów `Telescope project`                                  |
| `<leader>q`  | Kończy pracę `:q`                                                    |
| `<leader>r`  | Wyświetla zawartość rejestrów `Telescope registers`                  |
| `<leader>so` | Wczytuje źródło otwartego pliku konfiguracyjnego `%.lua`             |
| `<leader>sp` | Dzieli ekran poziomo                                                 |
| `<leader>t`  | Uruchamia terminal `ToggleTerm`                                      |
| `<leader>u`  | Uruchamia rejestr zmian `UndotreeToggle`                             |
| `<leader>v`  | Edycja plików konfiguracyjnych Neovim                                |
| `<leader>vs` | Dzieli ekran pionowo                                                 |
| `<leader>w`  | Zapisuje zmiany w pliku jeśli takie miały miejsce                    |
| `<leader>x`  | Zapisuje zmiany i kończy pracę                                       |
| `<leader>z`  | Wychodzi bez zapisania                                               |
| `<leader>5`  | Uruchamia skrypt, SHELL, Python, itp.  za pomocą komendy `:!./%`     |
| `<leader>7`  | Uruchamia sprawdzanie pisowni                                        |
| `<tab>`      | Przechodzi pomiędzy dwoma ostatnio używanymi buforami                |
| `:q`         | Historia komend `Telescope command_history`                          |
| `dh`         | Usuwa od kursora do początku linii `xd0`                             |
| `dl`         | Usuwa od kursora do końca linii `d$`                                 |
| `gf`         | Otwiera / tworzy plik pod kursorem                                   |
| `gh`         | Przechodzi na początek linii `0`                                     |
| `gj`         | Przechodzi do następnej zmiany (Gitsigns)                            |
| `gk`         | Przechodzi do poprzedniej zmiany (Gitsigns)                          |
| `gl`         | Przechodzi na koniec linii `$`                                       |
| `gs`         | Podpowiedzi sprawdzania pisowni                                      |
| `qq`         | Kończy pracę `:q`                                                    |
| `zm`         | Zamyka zagnieżdżony tekst `zn`                                       |
| `zn`         | Otwiera zagnieżdżony tekst`zm`                                       |
| `s`          | Przechodzi do linii niżej, zawierającej wskazany znak (Leap)         |
| `S`          | Przechodzi do linii wyżej, zawierającej wskazany znak (Leap)         |
| `<ctrl-/>`   | Wstawia znak komentarza na początku linii (kommentary)               |
| `j`          | Zamienia na `gj` - poruszanie się po zawijanych liniach              |
| `k`          | Zamienia na `gk` - poruszanie się po zawijanych liniach              |
| `kj`         | W trybie **INSERT** zastępuje klawisz **ESC**                        |
| `<ctrl-h>`   | W trybie **INSERT** oraz **COMMAND** przechodzi o znak w lewo        |
| `<ctrl-j>`   | W trybie **INSERT** oraz **COMMAND** przechodzi o linię w dół        |
| `<ctrl-k>`   | W trybie **INSERT** oraz **COMMAND** przechodzi o linię w górę       |
| `<ctrl-h>`   | W trybie **INSERT** oraz **COMMAND** przechodzi o znak w prawo       |

## Poruszanie się po notatkach

Ważne, żeby dodać zmienną systemową `$NOTES_DIR` dla powłoki BASH dodajemy do pliku `$HOME/.bashrc`:

```bash
export NOTES_DIR=$HOME/Notes
```

| Skróty       | Opis                                                                 |
| ------------ | -------------------------------------------------------------------- |
| `<leader>ci` | Kopiuje bieżącą linię do pliku `$NOTES_DIR/INBOX.md`                 |
| `<leader>ci` | Kopiuje zaznaczone linie do pliku `$NOTES_DIR/INBOX.md`              |
| `<leader>si` | Przenosi bieżącą linię do pliku `$NOTES_DIR/INBOX.md`                |
| `<leader>si` | Przenosi zaznaczone linie do pliku `$NOTES_DIR/INBOX.md`             |
| `<leader>ei` | Edycja pliku `$NOTES_DIR/INBOX.md`                                   |
| `<leader>ee` | Wyszukiwanie plików w katalogu `$NOTES_DIR`                          |
| `<leader>er` | Przeszukiwanie plików w katalogu `$NOTES_DIR`                        |

```lua
-- Kopiuje bieżącą linię do pliku $NOTES_DIR/INBOX.md
vim.keymap.set("n", "<leader>ci", '<cmd>lua CopyLineToFile(os.getenv("NOTES_DIR") .. "/INBOX.md")<cr>')
-- Kopiuje zaznaczone linie do pliku $NOTES_DIR/INBOX.md
vim.keymap.set(
  "x",
  "<leader>ci",
  ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'INBOX.md', 'a')<cr>:cd %:p:h<cr>"
)
-- Przenosi bieżącą linię do $NOTES_DIR/INBOX.md
vim.keymap.set(
  "n",
  "<leader>si",
  '<cmd>lua SendLineToFile(os.getenv("NOTES_DIR") .. "/INBOX.md")<cr>'
)
-- Przenosi zaznaczone linie do pliku $NOTES_DIR/INBOX.md
vim.keymap.set(
  "x",
  "<leader>si",
  ":'<,'>d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'INBOX.md', 'a')<cr>:cd %:p:h<cr>"
)
-- Edycja pliku $NOTES_DIR/INBOX.md
vim.keymap.set("n", "<leader>ei", ":e $NOTES_DIR/INBOX.md<cr>")
-- Wyszukiwanie plików w katalogu $NOTES_DIR
vim.keymap.set("n", "<leader>ee", "<cmd>lua FindNotesDir()<cr>")
-- Przeszukiwanie plików w katalogu $NOTES_DIR
vim.keymap.set("n", "<leader>er", "<cmd>lua GrepNotesDir()<cr>")
```
