# Komendy

<!-- vim-markdown-toc Marked -->

* [Kolory](#kolory)
* [GP](#gp)
* [RevBackground](#revbackground)
* [Maps](#maps)
* [PS](#ps)
* [Docs](#docs)
* [FFC](#ffc)
* [CD](#cd)

<!-- vim-markdown-toc -->

## Kolory

Komenda uruchamia polecenie `Telescope colorscheme`

## GP

Uruchamia funkcję `GP` wywołującą skrypt `~/bin/gp.sh`

Funkcja `GP`

```lua
-- Przechodzi do katalogu edytowanego pliku i uruchamia skrypt ~/bin/gp.sh
vim.api.nvim_exec(
  [[
    function! GP()
        silent execute ':!$HOME/bin/gp.sh %:p'
        redraw!
    endfunction
]],
  false
)
```

Skrypt `~/bin/gp.sh`

```bash
#!/usr/bin/env bash

# data w formacie 2023-01-05-00:30:20
DATA=$(date +%F-%T)

if [ $# != 0 ]; then
    cd "$(dirname $(readlink -m $1))"
fi

if [ "$(basename $0)" == "gps.sh" ]; then
    git add -A && git commit -S -m $DATA && git push
else
    git add -A && git commit -m $DATA && git push
fi
```

## RevBackground

Komenda wywołuje funkcję o tej samej nazwie, służy do odwrócenia kolorów z "dark" na "light" i na odwrót.

```lua
vim.api.nvim_exec(
  [[
    function! RevBackground()
        if &background=="light"
            set background=dark
        else
            set background=light
        endif
    endfunction
]],
  false
)
```

## Maps

Uruchamia przeglądarkę skrótów klawiszowych `:Telescope keymaps`

## PS

Aktualizacja wtyczek `:Lazy update`

## Docs

Przeglądanie plików dokumentacji `$HOME/.config/nvim/docs`

## FFC

Przeszukuje katalog `$HOME/.config`

## CD

Wywołuje funkcję `CD`
Poruszanie się po katalogach.
