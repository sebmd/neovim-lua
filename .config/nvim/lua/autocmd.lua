-- AutoCMD
-- Ustawia kursor tam gdzie go zostawiliśmy
vim.cmd([[au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
-- Uruchamia sprawdzanie pisowni dla wybranych typów plików
vim.cmd([[
    let spellable = ['markdown', 'gitcommit', 'txt']
    augroup spellcheck
        au BufEnter * if index(spellable, &ft) < 0 | set nospell | else | setlocal spell! spell? spelllang=pl | endif
    augroup END
]])
-- Otwiera okno pomocy w podziale pionowym
vim.cmd([[au FileType help wincmd L]])
-- Automatically update changed file in Vim
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  command = [[silent! if mode() != 'c' && !bufexists("[Command Line]") | checktime | endif]],
})
-- Notification after file change
vim.api.nvim_create_autocmd("FileChangedShellPost", {
  command = [[echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None]],
})
