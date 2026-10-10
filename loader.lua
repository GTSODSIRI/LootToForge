-- loader.lua
local SCRIPT_URL = "https://raw.githubusercontent.com/GTSODSIRI/LootToForge/main/main.lua"

local success, result = pcall(function()
    local source = game:HttpGet(SCRIPT_URL)
    local fn, err = loadstring(source)

    if not fn then
        error(err)
    end

    return fn()
end)

if not success then
    warn("[LootToForge Loader] " .. tostring(result))
end