-- ARCENEY SECURE LOADER (local) --
-- This script has been modified to load local files from the 'loader' directory, bypassing the remote fetch and potential key systems.
getupvalues=getupvalues or debug.getupvalues;
getconstants=getconstants or debug.getconstants;
local a=string.format("loader/%s.luau",tostring(game.GameId))
pcall(function()
    local b=getfenv()
    getrenv=getrenv or function()return b end;
    getrenv()._G=getrenv()._G or{}
end)
local success, result = pcall(function()
    return loadfile(a)()
end)

if not success then
    print("Arceney script failed to load: " .. tostring(result))
end
