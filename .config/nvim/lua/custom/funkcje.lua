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
vim.api.nvim_exec(
  [[
    function! FileInfo()
	let filename=resolve(expand("%:p"))
	let msg=""
	let msg=msg."Mod: ".strftime("%F %T",getftime(filename))." ".filename
	echom msg
    endfunction
]],
  false
)

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
