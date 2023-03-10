-- lualine
-- Color table for highlights
local colors = {
    bg = "#202328",
    fg = "#bbc2cf",
    yellow = "#ECBE7B",
    cyan = "#008080",
    darkblue = "#081633",
    green = "#98be65",
    orange = "#FF8800",
    violet = "#a9a1e1",
    magenta = "#c678dd",
    blue = "#51afef",
    red = "#ec5f67",
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

local conditions = {
    buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
    end,
    hide_in_width = function()
        return vim.fn.winwidth(0) > 80
    end,
    check_git_workspace = function()
        local filepath = vim.fn.expand("%:p:h")
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end,
}

-- Config
local config = {
    options = {
        -- Disable sections and component separators
        component_separators = "",
        section_separators = "",
        globalstatus = true,
        icons_enabled = true,
        theme = {
        -- We are going to use lualine_c an lualine_x as left and
        -- right section. Both are highlighted by c theme .  So we
        -- are just setting default looks o statusline
            normal = { c = { fg = colors.fg, bg = colors.bg } },
            inactive = { c = { fg = colors.fg, bg = colors.bg } },
        },
        -- theme = "gruvbox_dark",
        -- disabled_filetypes = { "CHADTree", "NvimTree", "toggleterm", "dashboard" },
        disabled_filetypes = { "CHADTree", "toggleterm", "dashboard", "alpha" },
    },
    sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        -- These will be filled later
        lualine_c = {},
        lualine_x = {},
    },
    inactive_sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_v = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
}

local ins_left = function(component)
    table.insert(config.sections.lualine_c, component)
end

local ins_right = function(component)
    table.insert(config.sections.lualine_x, component)
end

-- local user = function()
    -- return vim.modules.utils.stl_escape(vim.loop.os_gethostname())
-- end

local diff_source = function()
    local gitsigns = vim.b.gitsigns_status_dict
    if gitsigns then
        return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed,
        }
    end
end

require("lualine").setup({

    ins_left({
        -- mode component
        function()
            -- auto change color according to neovims mode
            local mode_color = {
                n = colors.red,
                i = colors.green,
                v = colors.blue,
                [""] = colors.blue,
                V = colors.blue,
                c = colors.violet,
                no = colors.red,
                s = colors.orange,
                S = colors.orange,
                [""] = colors.orange,
                ic = colors.yellow,
                R = colors.violet,
                Rv = colors.violet,
                cv = colors.red,
                ce = colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ["r?"] = colors.cyan,
                ["!"] = colors.red,
                t = colors.red,
            }
            vim.api.nvim_command("hi! LualineMode guifg=" .. mode_color[vim.fn.mode()] .. " guibg=" .. colors.bg)
            return "▊"
        end,
        color = "LualineMode",
        padding = { left = 0 },
    }),

    ins_left({
        -- filesize component
        function()
            local function format_file_size(file)
                local size = vim.fn.getfsize(file)
                if size <= 0 then
                    return ""
                end
                local sufixes = { "b", "k", "m", "g" }
                local i = 1
                while size > 1024 do
                    size = size / 1024
                    i = i + 1
                end
                return string.format("%.1f%s", size, sufixes[i])
            end
            local file = vim.fn.expand("%:p")
            if string.len(file) == 0 then
                return ""
            end
            return format_file_size(file)
        end,
        condition = conditions.buffer_not_empty,
    }),

    ins_left({ "location" }),

    ins_left({ "progress", color = { fg = colors.fg } }),

    ins_left({
        function()
            local current_line = vim.fn.line(".")
            local total_lines = vim.fn.line("$")
            local chars = { "_", "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█" }
            local line_ratio = current_line / total_lines
            local index = math.ceil(line_ratio * #chars)
            return chars[index]
        end,
        padding = { left = 0, right = 0 },
        color = { fg = colors.green, bg = colors.bg },
        cond = nil,
    }),

    ins_left({ "diagnostics" }),

    -- Insert mid section. You can make any number of sections in neovim :)
    -- for lualine it's any number greater then 2
    ins_left({
        function()
            return "%="
        end,
    }),

    -- nazwa pliku
    ins_left({
        "filename",
        condition = conditions.buffer_not_empty,
        color = { fg = colors.blue },
    }),

    -- Add components to right sections
    ins_right({
        "o:encoding",
        fmt = string.upper,
        condition = conditions.hide_in_width,
        color = { fg = colors.green },
    }),

    ins_right({
        "fileformat",
        icons_enabled = true,
        color = { fg = colors.green },
    }),

    -- funkcja pokazuje czy w konfiguracji mamt ustawione spacje czy taby
    ins_right({
        function()
            if not vim.api.nvim_buf_get_option(0, "expandtab") then
                return "T" .. vim.api.nvim_buf_get_option(0, "tabstop") .. " "
            end
            local size = vim.api.nvim_buf_get_option(0, "shiftwidth")
            if size == 0 then
                size = vim.api.nvim_buf_get_option(0, "tabstop")
            end
            return "S" .. size
        end,
        cond = conditions.hide_in_width,
        color = { fg = colors.green },
    }),

    ins_right({
        "filetype",
        cond = conditions.hide_in_width,
        color = {},
    }),

    ins_right({
        "branch",
        icon = "",
        condition = conditions.check_git_workspace,
        color = { fg = colors.blue, gui = "bold" },
    }),

    ins_right({
        "diff",
        source = diff_source,
        symbols = { added = " ", modified = " ", removed = " " },
        color_added = colors.green,
        color_modified = colors.orange,
        color_removed = colors.red,
        condition = conditions.hide_in_width,
    }),

    ins_right({
        function()
            local user = vim.fn.getenv('USER')
            local hostname = vim.loop.os_gethostname()
            return user .. "@" .. hostname
        end,
        color = { fg = colors.blue },
    }),

    ins_right({
        function()
            return "▊"
        end,
        color = { fg = colors.blue },
        padding = { right = 0 },
    }),

    -- Now don't forget to initialize lualine
    require("lualine").setup(config)
})
