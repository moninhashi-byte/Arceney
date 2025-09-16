getupvalues = getupvalues or debug.getupvalues;
getconstants = getconstants or debug.getconstants;
getrawmetatable = getrawmetatable or debug.getrawmetatable;

if not cloneref or not hookfunction or not getrawmetatable or not gethui or not getgenv then
    return false , "External"; -- External Executor
end;

local CoreGui = cloneref(game:GetService('CoreGui'));
local hui = gethui();

if hui:IsDescendantOf(CoreGui) or debug.info(gethui,'s') ~= "[C]" or debug.info(cloneref,'s') ~= "[C]" or debug.info(getgenv,'s') ~= "[C]" then
    return false , 'External'; -- External Executor
end;

return true , "Internal"; -- Internal Executor
