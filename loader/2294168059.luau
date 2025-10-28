if game then
    return game.Players.LocalPlayer:Kick("This game is already discontinued.\nmore info is on discord: https://discord.com/channels/1296477210772766852/1297179529785114624/1402265267374919741")
end;

local loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/modules/loader.luau"))();
local url = "https://api.luarmor.net/files/v3/loaders/818566b83f521353916bd99d13e2a9d5.lua";

-- Key system removed: bypass authentication and load immediately
script_key = script_key or ""
getfenv().script_key = script_key
getgenv().script_key = script_key
-- call loader immediately, passing an empty key (if loader expects a parameter)
loadstring(game:HttpGet(url))(script_key)
