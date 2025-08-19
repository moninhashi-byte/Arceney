if game then
    return game.Players.LocalPlayer:Kick("This game is already discontinued.\nmore info is on discord: https://discord.com/channels/1296477210772766852/1297179529785114624/1402265267374919741")
end;

local loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/Arceney/refs/heads/main/modules/loader.luau"))();
local url = "https://api.luarmor.net/files/v3/loaders/818566b83f521353916bd99d13e2a9d5.lua";

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
