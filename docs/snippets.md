# Snippets

Za pomocą "skrawków", można szybko uzupełnić edytowany plik o skrawek tekstu lub dodać automatyzację.

Używając słowa `fname` i wciskając klawisz enter otrzymamy nazwę edytowanego pliku. Konfiguracja skrawków
znajduje się w katalogu `~/.config/nvim/snippets`.

Wcześniej użyty skrawek `fname` wygląda tak:

```json
  "filename": {
    "prefix": ["fname"],
    "body": "$TM_FILENAME_BASE"
  },
```

Skrawki są obsługiwane przez plugin [vim-vsnip](https://github.com/hrsh7th/vim-vsnip/)

Zmienne używane przy tworzeniu skrawków można znaleźć w pliku [variable.vim](https://github.com/hrsh7th/vim-vsnip/blob/master/autoload/vsnip/variable.vim)
