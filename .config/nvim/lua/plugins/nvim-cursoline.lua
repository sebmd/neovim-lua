-- nvim-cursorline
return {
  "yamatsum/nvim-cursorline",
  config = function(plugin)
    local cl_status_ok, configs = pcall(require, "nvim-cursorline")
    if not cl_status_ok then
      return
    end

    configs.setup({
      cursorline = {
        enable = true,
        timeout = 1000,
        number = false,
      },
      cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
      }
    })
  end
}
