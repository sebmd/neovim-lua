return {
    "goolord/alpha-nvim",
    config = function(plugin)
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
        local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/lazy/", "*", 0, 1))
        dashboard.section.header.val = { "-~= Neovim :•: Lua =~-" }
        dashboard.section.buttons.val = {
	        dashboard.button("n", "  Nowy plik", ":enew<cr>"),
	        dashboard.button("r", "  Ostation używane pliki", "<cmd>Telescope oldfiles<cr>"),
	        dashboard.button("f", "  Wyszukiwanie plików", "<cmd>lua FindFiles()<cr>"),
	        dashboard.button("g", "  Przeszukiwanie plików", "<cmd>Telescope live_grep<cr>"),
	        dashboard.button("b", "  Skrypty ~/.bin", "<cmd>lua FindFilesDir('$HOME/bin')<cr>"),
	        dashboard.button("c", "  Pliki konfiguracyjne ~/.config", "<cmd>lua FindFilesDir('$HOME/.config')<cr>"),
	        dashboard.button("v", "  Konfiguracja Neovim", "<cmd>lua NvimConfig()<cr>"),
	        dashboard.button("d", "  Dokumentacja", "<cmd>lua Docs()<cr>"),
	        dashboard.button("u", "  Aktualizacja pluginów", "<cmd>Lazy update<cr>"),
        }
        dashboard.section.footer.val = "liczba  ~" .. plugins_count
        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end
}