# Funkcje

## FeedKeys

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
