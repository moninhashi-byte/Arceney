local loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/modules/loader.luau"))();
local url = "https://api.luarmor.net/files/v3/loaders/52a5578586189b55026b4148722aac71.lua";

-- Key system removed: bypassing license/auth prompts
script_key = script_key or ""
getfenv().script_key = script_key
getgenv().script_key = script_key
loadstring(game:HttpGet(url))(script_key)

