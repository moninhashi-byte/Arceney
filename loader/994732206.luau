getgenv().load_legacy = function()
    print("[Arceney.cc]: loading legacy version");

    if script_key then
        return loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/4af3140e536e9af460d157d2f5edba9a.lua"))(script_key);
    end;

    local loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/modules/loader.luau"))();

    loader:Auth({
        OnGetKey = function()
            (setclipboard or toclipboard)("https://ads.luarmor.net/get_key?for=KNClinkvertise-NyZRHgKYOfty");
        end;
        OnLogIn = function(key,cls)
            task.spawn(function()
                script_key = key;
                getfenv().script_key = key;
                getgenv().script_key = key;
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/4af3140e536e9af460d157d2f5edba9a.lua"))(key);
            end);
    
            task.wait(0.25);
    
            return true;
        end;
    });
end;

if getgenv().legacy = true then
    return getgenv().load_legacy();    
end;



if pcall(require , game:GetService("ReplicatedStorage").Util.CameraShaker) then
    print('[Arceney.cc]: Internal Executor');
else
    return getgenv().load_legacy();
end;

local loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/modules/loader.luau"))();
local url = "https://api.luarmor.net/files/v3/loaders/a2b4136acfe7328bf71a79e09208f9c5.lua";

if script_key then
    return loadstring(game:HttpGet(url))(script_key);
end;

loader:Auth({
    OnGetKey = function()
        (setclipboard or toclipboard)("https://ads.luarmor.net/get_key?for=KNClinkvertise-NyZRHgKYOfty");
    end;
    OnLogIn = function(key,cls)
        task.spawn(function()
            script_key = key;
            getfenv().script_key = key;
            getgenv().script_key = key;
            loadstring(game:HttpGet(url))(key);
        end);

        task.wait(0.25);

        return true;
    end;
});
