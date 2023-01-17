-- indent-blankline
return {
    "lukas-reineke/indent-blankline.nvim",
    config = function(plugin)
        require("indent_blankline").setup({
            char_list = { "|", "¦", "┆", "┊" },
            space_char_blankline = " ",
            buftype_exclude = { "terminal", "nofile" },
            filetype_exclude = { "help", "packer", "dashboard" },
            char_highlight = "LineNr",
            show_trailing_blankline_indent = false,
            -- char_highlight_list = { "Normal", "Function", "Error" },
        })
    end
}
