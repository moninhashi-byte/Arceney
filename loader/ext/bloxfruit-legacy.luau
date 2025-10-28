getupvalues = getupvalues or debug.getupvalues
getconstants = getconstants or debug.getconstants
getrawmetatable = getrawmetatable or debug.getrawmetatable

local a = "https://api.luarmor.net/files/v3/loaders/4af3140e536e9af460d157d2f5edba9a.lua"

local b = function(c)
    if not c or not c:byte() then
        return false
    end

    local d = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
    d.script_id = "4af3140e536e9af460d157d2f5edba9a"
    local e = d.check_key(c)

    if e then
        if e.code == "KEY_VALID" then
            return true
        end
    end
end

-- Key system removed: bypass the interactive UI and set script_key
script_key = script_key or ""
getgenv().script_key = script_key
getfenv().script_key = script_key
-- Load the remote loader immediately
loadstring(game:HttpGet(a))()
