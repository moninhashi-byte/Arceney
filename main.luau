-- ARCENEY SECURE LOADER --
local a=string.format("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/loader/%s.luau",tostring(game.GameId))pcall(function()local b=getfenv()getrenv=getrenv or function()return b end;getrenv()._G=getrenv()._G or{}end)local c=pcall(function()return loadstring(game:HttpGet(a))()end)
