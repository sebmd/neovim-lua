-- dotoo.lua

vim.api.nvim_exec(
[[
    let g:dotoo#agenda#files = ['~/Documents/dotoo-files/*.dotoo']
    let g:dotoo#capture#refile = expand('~/Documents/dotoo-files/refile.dotoo')
]],
    false
)
