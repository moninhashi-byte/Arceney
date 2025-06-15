-- Example [Day/Night] --

local API = getgenv().ArceneyAPI;

if getgenv().DayNightLoaded then
    API.Notification:Notify({
        Title = "Notification",
        Content = "Already load day/night script",
        Duration = 3,
        Icon = "info",
    });
    return;
end;

getgenv().DayNightLoaded = true;

--[[
    UI Document: "https://cat-sus.gitbook.io/fatality/document#installation"
]]

local Night = false;

local Element = API:CreateElement("DAY/NIGHT",'center');

Element:AddToggle({
	Name = "Night Mode",
	Default = Night,
	Callback = function(value)
        Night = value;
	end,
});

task.spawn(function()
    while true do task.wait()
        if Night then
            game:GetService('Lighting').ClockTime = 0;
        else
            game:GetService('Lighting').ClockTime = 12;
        end;
    end;
end);

--[[
    Save your lua extension to folder
    
    API:SaveLuaCode("Name.luau","SOURCE CODE");
]]
