# Funkcje

## Funkcja GP

```lua
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

## Funkcja RevBackground

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

## Funkcja DateHeader

Wstawia: # 2022-12-11 03:31:01

```lua
DateHeader = function()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. "# " .. os.date("%Y-%m-%d %H:%M:%S") .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
  vim.api.nvim_feedkeys("o", "n", true)
end
```

## Funkcja NvimConfig

Wyszukiwanie plików konfiguracyjnych Neovim w katalogu $HOME/.config/nvim

```lua
NvimConfig = function()
  require("telescope.builtin").find_files({
    prompt_title = "< NVIM >",
    cwd = "$HOME/.config/nvim/",
    find_command = { "rg", "--files", "--follow" },
    file_ignore_patterns = { "spell/", "plugin/packer_compiled.lua", ".md" },
  })
end
```

## Funkcja FindFiles

```lua
FindFiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Wyszukiwanie >",
    find_command = { "rg", "--files", "--hidden", "--follow", "-g", "!.git" },
  })
end
```

## Funkcja FindNotesDir

Wyszukiwanie telescope w katalogu $NOTES_DIR

```lua
FindNotesDir = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end
```

## Funkcja GrepNotesDir

Przeszukiwanie telescope w katalogu `$NOTES_DIR`

```lua
GrepNotesDir = function()
  require("telescope.builtin").live_grep({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end
```

## FeedKeys

- Źródło: https://www.youtube.com/@yukiuthman8358/videos

```lua
FeedKeys = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
```

Przykład wykorzystania funkcji

```lua
vim.keymap.set('n', 'zf', function()
  FeedKeys("gg", "n")
  FeedKeys("^", "n")
  FeedKeys("iWstawiam tekst", "n")
  FeedKeys("<cr>", "n")
  FeedKeys("<esc>", "n")
  FeedKeys("<c-o>", "n")
end)
```

## Write

Zapisuje lub aktualizuje plik

```lua
Write = function()
  if vim.fn.filereadable(vim.fn.expand("%")) == 1 then
    for _, v in ipairs(vim.fn.getbufinfo("%")) do
      if v.changed == 1 then
        vim.cmd("silent update")
        print("Zapisałem" .. " " .. vim.fn.expand("%:p"))
      else
        print("Brak zmian w pliku" .. " " .. vim.fn.expand("%:p"))
      end
    end
  else
    MkDir()
    vim.cmd("silent write")
    print("Utworzyłem" .. " " .. vim.fn.expand("%:p"))
  end
end
```

## FileInfo

Wyświetla informacje o pliku

```lua
FileInfo = function()
  filename=vim.fn.resolve(vim.fn.expand("%:p"))
  msg=""
  msg=msg .. "Mod: " .. vim.fn.strftime("%F %T",vim.fn.getftime(filename)) .. " " .. filename
  print(msg)
end
```
