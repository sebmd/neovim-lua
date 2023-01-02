-- kommentary
local cl_status_ok, configs = pcall(require, "kommentary.config")
if not cl_status_ok then
  return
end

vim.g.kommentary_create_default_mappings = false
