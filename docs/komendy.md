# Komendy

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

DATA=$(date +%F-%T)

cd "$(dirname $(readlink -m $1))"

if [ "$(basename $0)" == "gps" ]; then
    git add -A && git commit -S -m $DATA && git push
else
    git add -A && git commit -m $DATA && git push
fi
```
