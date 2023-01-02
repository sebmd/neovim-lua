-- leap
local leap_status_ok, configs = pcall(require, "leap")
if not leap_status_ok then
  return
end

configs.add_default_mappings()
