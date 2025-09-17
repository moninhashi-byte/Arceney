--[[
    Blox Fruits - Loader (Rewrite)
]]

local loader_cache = "ARCENEY_LOADER_CACHE";

local LuarmorLoader = "https://api.luarmor.net/files/v3/loaders/a2b4136acfe7328bf71a79e09208f9c5.lua";
local Loader = (isfile(loader_cache) and loadstring(readfile(loader_cache))());

if not isfile(loader_cache) or not Loader then
    local src = game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/interface/loader.luau");

    writefile(loader_cache , src);

    Loader = loadstring(src)();
end;

local LoaderWindow = Loader.new("ARCENEY.CC","LOADER");
local LicenseKeyCache = "Arceney.license";

task.wait(0.4);

LoaderWindow:AddLabel("Loading Blox Fruits Script ...","Success");

task.wait(0.5);

LoaderWindow:AddLabel("Checking Files","Success");

if not isfolder("Arceney.cc") then
    makefolder("Arceney.cc");

    LoaderWindow:AddLabel("Created Directory \"Arceney.cc\"","Success");
end;

task.wait(0.4);

if not isfolder("Arceney-bin") then
    makefolder("Arceney-bin");

    LoaderWindow:AddLabel("Created Directory \"Arceney-bin\"","Success");
end;

task.wait(0.4);

if not isfolder("Arceney-Cache") then
    makefolder("Arceney-Cache");

    LoaderWindow:AddLabel("Created Directory \"Arceney-Cache\"","Success");
end;

-- Fix Lua Enviromment --
getupvalues = getupvalues or debug.getupvalues
getconstants = getconstants or debug.getconstants
getrawmetatable = getrawmetatable or debug.getrawmetatable

-- Check Executor Type External/Internal --
local PlayerModule = game:GetService("ReplicatedStorage").Util.CameraShaker;
local Test , ms = pcall(require , PlayerModule);

LoaderWindow:AddLabel(string.format("Executor: %s",tostring(identifyexecutor())) , "Success");

task.wait(0.2);

if Test == true and ms and typeof(ms) == 'table' then -- Internal
    LoaderWindow:AddLabel("Internal Executor","Success");
else -- External
    LoaderWindow:AddLabel("External Executor","Warning");

    task.wait(0.4);

    LuarmorLoader = "https://api.luarmor.net/files/v3/loaders/4af3140e536e9af460d157d2f5edba9a.lua";

    LoaderWindow:AddLabel("Switch to Legacy Version","Warning");
end;

task.wait(0.4);

local __script = string.sub(LuarmorLoader,42);
local ScriptId = string.sub(__script , 0 , #__script - 4);
local sdk_api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))();

sdk_api.script_id = ScriptId;

local CheckKey = function(LicenseKey)
    if not LicenseKey:byte() then
        task.wait()

        return false;
    end;

    local test , message = pcall(sdk_api.check_key , tostring(LicenseKey));

    if test and message.code == "KEY_VALID" then
        return true;
    end;

    return false;
end;

local LoadKeySystem = function()
    local RateLimit = false;

    LoaderWindow:AddLabel("Key System","Success");

    LoaderWindow:Whitelist({
        {
            Text = "Get Key",
            Callback = function()
                (setclipboard or toclipboard)("https://ads.luarmor.net/get_key?for=KNClinkvertise-NyZRHgKYOfty")
            end,
        },
        {
            Text = "Log-In",
            Callback = function(LicenseKey)
                if RateLimit then
                    return;
                end;

                RateLimit = true;

                if CheckKey(tostring(LicenseKey)) then
                    getgenv().script_key = tostring(LicenseKey);
                    getfenv().script_key = tostring(LicenseKey);

                    script_key = LicenseKey;

                    writefile(LicenseKeyCache , LicenseKey);

                    LoaderWindow:WLWarning("Success","Loading Script ...");

                    task.wait(0.5);

                    return LoaderWindow:CloseWhitelist();
                else
                    LoaderWindow:WLWarning("Error","Invalid License Key");
                end;

                RateLimit = false;

                return false;
            end,
        }
    });

    task.wait(0.1);
end;

if not script_key then
    if isfile(LicenseKeyCache) then
        local Key = readfile(LicenseKeyCache);

        LoaderWindow:AddLabel("Checking Key ...","Success");

        if CheckKey(tostring(Key)) then
            getgenv().script_key = tostring(Key);
            getfenv().script_key = tostring(Key);

            LoaderWindow:AddLabel("Whitelist!","Success");
        else
            LoadKeySystem();
        end;
    else
        LoadKeySystem();
    end;
else
    LoaderWindow:AddLabel("Checking Key ...","Success");

    task.wait(0.1);

    if not CheckKey(tostring(script_key)) then
        LoaderWindow:AddLabel("Invalid Key","Error");

        LoadKeySystem();
    else
        LoaderWindow:AddLabel("Whitelist!","Success");
    end;
end;

task.wait(0.5);

LoaderWindow:AddLabel("Loading Script ...","Success");

task.delay(1.5,LoaderWindow.Close);

loadstring(game:HttpGet(LuarmorLoader))({
    script_key = getgenv().script_key
});
