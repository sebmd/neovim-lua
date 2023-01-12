-- Zapisuje plik Write()
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

-- Wyświetla informacje o pliku
FileInfo = function()
        filename=vim.fn.resolve(vim.fn.expand("%:p"))
        msg=""
        msg=msg .. "Mod: " .. vim.fn.strftime("%F %T",vim.fn.getftime(filename)) .. " " .. filename
        print(msg)
end

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

-- Odwraca kolor tła
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

-- Funkcja wyświetlająca pomoc
vim.api.nvim_exec(
  [[
    let g:MyVimTips="off"
    function! ToggleVimTips()
        if g:MyVimTips == "on"
            let g:MyVimTips="off"
            pclose
        else
            let g:MyVimTips="on"
            pedit ~/.config/nvim/docs/skroty.md
        endif
    endfunction
]],
  false
)

-- wstawia: # 2022-12-11 03:31:01
DateHeader = function()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. "# " .. os.date("%Y-%m-%d %H:%M:%S") .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
  vim.api.nvim_feedkeys("o", "n", true)
end

-- Funkcja Time() wyświetla bieżącą datę i godzinę w formacie 2021-11-23, wtorek 20:53:27
Time = function()
  local czas = vim.fn.strftime("%F, %A %T")
  print("- Teraz jest: " .. czas .. " -")
end

-- Wyświetla zawartość tablicy Lua np:
-- :lua P(vim.api.nvim_get_keymap("n"))
P = function(v)
  print(vim.inspect(v))
  return v
end

-- Tworzy brakujące katalogi
MkDir = function()
  local dir = vim.fn.expand("%:p:h")

  if vim.fn.isdirectory(dir) == 0 then
    vim.fn.mkdir(dir, "p")
  end
end

-- Wyszukiwanie plików konfiguracyjnych Neovim w katalogu $HOME/.config/nvim
NvimConfig = function()
  require("telescope.builtin").find_files({
    prompt_title = "< NVIM >",
    cwd = "$HOME/.config/nvim/",
    find_command = { "rg", "--files", "--follow" },
    file_ignore_patterns = { "spell/", "plugin/packer_compiled.lua", ".md" },
  })
end

FindFiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Wyszukiwanie >",
    find_command = { "rg", "--files", "--hidden", "--follow", "-g", "!.git" },
  })
end

-- Wyszukiwanie telescope w katalogu $NOTES_DIR
FindNotesDir = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end

-- Przeszukiwanie telescope w katalogu $NOTES_DIR
GrepNotesDir = function()
  require("telescope.builtin").live_grep({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end

-- Przenosi linię do podanego pliku w argumencie
SendLineToFile = function(plik)
  vim.cmd("d")
  -- vim.cmd("cd $NOTES_DIR")
  rejestr = vim.fn.getreg("@", 1, 1)
  vim.fn.writefile(rejestr, plik, "a")
  vim.cmd("cd %:p:h")
end

-- Kopiuje linię do podanego pliku w argumencie
CopyLineToFile = function(plik)
  vim.cmd("y")
  -- vim.cmd("cd $NOTES_DIR")
  vim.fn.writefile(vim.fn.getreg("@", 1, 1), plik, "a")
  vim.cmd("cd %:p:h")
end

-- Kopiuje linię do podanego pliku w argumencie
CopyVLineToFile = function(plik)
  -- vim.cmd("'<,'>y")
  vim.cmd("y")
  -- vim.cmd("cd $NOTES_DIR")
  vim.fn.writefile(vim.fn.getreg("@", 1, 1), plik, "a")
  vim.cmd("cd %:p:h")
end

FeedKeys = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
