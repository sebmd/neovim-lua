-- telescope
local actions = require("telescope.actions")
return {
    "nvim-telescope/telescope.nvim",
    config = function(plugin)
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        -- ["<esc>"] = actions.close,
        		["<C-e>"] = actions.close,
                    },
                },
            }
        })
    end
}
