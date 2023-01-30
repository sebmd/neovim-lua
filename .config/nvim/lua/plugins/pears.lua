-- pears
local pears_status_ok, configs = pcall(require, "pears")
if not pears_status_ok then
    return
end

configs.setup(function(conf)
    conf.pair("{", "}")
    conf.expand_on_enter(false)
end)
