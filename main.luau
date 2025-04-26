local Endpoint = string.format("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/loader/%s.luau",tostring(game.GameId));
getrenv = getrenv or function() return {} end;
getrenv()._G = getrenv()._G or {};

local status = pcall(function()
    return loadstring(game:HttpGet(Endpoint))();
end);
