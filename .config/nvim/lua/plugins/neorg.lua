-- neorg
local ok, configs = pcall(require, "neorg")
if not ok then
    return
end

configs.load = {
    ["core.defaults"] = {}
}
