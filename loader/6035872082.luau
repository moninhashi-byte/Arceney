getupvalues = getupvalues or debug.getupvalues;
getconstants = getconstants or debug.getconstants;
getrawmetatable = getrawmetatable or debug.getrawmetatable;

if not getgc or not getrawmetatable or not hookfunction or not newcclosure or not checkcaller or not getconstants or not getupvalues then
    return game:GetService("Players").LocalPlayer:Kick("UNSUPPORTED EXECUTOR\nhttps://whatexpsare.online");
end;

if not script_key then
    setclipboard("https://discord.gg/wPaQZwhMHy")
    return game:GetService("Players").LocalPlayer:Kick("JOIN DISCORD TO GET KEY\nhttps://discord.gg/wPaQZwhMHy");
end;

--_G.MAX_SECURITY = false;

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/193a44402c272c03566192865fd844ef.lua"))()
