-- kommentary
return {
    "b3nj5m1n/kommentary",
    config = function(plugin)
        local cl_status_ok, configs = pcall(require, "kommentary.config")
        if not cl_status_ok then
            return
        end
        vim.g.kommentary_create_default_mappings = false
     end
}
