local NOREF_NOERR_TRUNC = { noremap = true, silent = true, nowait = true }

return {
    "nyngwang/NeoTerm.lua",
    config = function(plugin)
        require('neo-term').setup {
            -- split_on_top = true,
            -- split_size = 0.5,
            exclude_buftypes = { 'terminal' }, -- these two options will affect `NeoTermOpen`
            exclude_filetypes = { 'neo-tree', 'dashboard' },
        }
        vim.keymap.set('n', '<M-t>', function ()
        if vim.bo.buftype == 'terminal' then
            vim.cmd('NeoTermClose')
        else
            vim.cmd('NeoTermOpen')
        end
        end, NOREF_NOERR_TRUNC)
        vim.keymap.set('t', '<M-t>', function () vim.cmd('NeoTermEnterNormal') end, NOREF_NOERR_TRUNC)
    end
}
