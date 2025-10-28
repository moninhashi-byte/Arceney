--[[
    Counter-Blox - Loader (Rewrite)
]]

local LuarmorLoader = "https://api.luarmor.net/files/v3/loaders/fa807cf60ed10c3e0e43f0acd8e7b6d5.lua";
local Loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/interface/loader.luau"))();
local LoaderWindow = Loader.new("ARCENEY.CC","LOADER");
local LicenseKeyCache = "Arceney.license";

task.wait(0.4);

LoaderWindow:AddLabel("Loading Counter-Blox Script ...","Success");

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
local RegionMod = game:GetService("ReplicatedStorage").RegionMod;
local Test = pcall(require , RegionMod);

LoaderWindow:AddLabel(string.format("Executor: %s",tostring(identifyexecutor())),"Success");

task.wait(0.2);

if Test then -- Internal
    LoaderWindow:AddLabel("Internal Executor","Success");
else -- External
    LoaderWindow:AddLabel("External Executor","error");

    task.wait(0.4);

    LoaderWindow:AddLabel("Failed to Load","error");

    task.wait(0.4);

    LoaderWindow:AddLabel("Unsupported Executor","error");

    task.delay(3,LoaderWindow.Close);

    return;
end;

task.wait(0.4);

local __script = string.sub(LuarmorLoader,42);
local ScriptId = string.sub(__script , 0 , #__script - 4);
local sdk_api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))();

sdk_api.script_id = ScriptId;

-- Key system removed: bypassing license checks
-- Previously this section implemented an interactive/license-check flow.
-- Now we simply ensure `script_key` exists (empty string) and continue loading.
getgenv().script_key = getgenv().script_key or ""
script_key = script_key or getgenv().script_key

task.wait(0.5);

LoaderWindow:AddLabel("Loading Script ...","Success");

task.delay(1.5,LoaderWindow.Close);

loadstring(game:HttpGet(LuarmorLoader))({
    script_key = getgenv().script_key
});
