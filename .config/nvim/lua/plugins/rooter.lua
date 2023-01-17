-- rooter
return {
    "airblade/vim-rooter",
    config = function(plugin)
        local cl_status_ok, configs = pcall(require, "rooter")
        if not cl_status_ok then
            return
        end
        vim.g.rooter_manual_only = 1
    end
}
