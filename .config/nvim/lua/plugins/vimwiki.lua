-- vimwiki
return {
    "vimwiki/vimwiki",
    config = function(plugin)
        vim.api.nvim_exec(
        [[
            " let g:vimwiki_key_mappings = { 'all_maps': 0, }
            " let g:vimwiki_global_ext = 0
            let g:vimwiki_ext2syntax = {'.wiki': 'markdown', '.media': 'media'}
            let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
        ]],
            false
        )
    end
}
