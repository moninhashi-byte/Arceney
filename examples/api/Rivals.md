# Lua API for Rivals
Arceney.cc lua api for rivals.

## Use API
```lua
getgenv().ArceneyAPI
```

## Shooting a gun
```lua
getgenv().ArceneyAPI:LegitFire();
```
### Slient Aim
```lua
getgenv().ArceneyAPI:SlientFire(<Hitbox Instance> , <Spread CFrame>);
```

## Is Shooting
```lua
getgenv().ArceneyAPI:IsShooting() -> boolean;
```

## Get Lua Scripts Interface
```lua
getgenv().ArceneyAPI:GetInterface() -> Section API;
-- Document: https://cat-sus.gitbook.io/compkiller/documents/interface#creating-section
```

## Get Ragebot Target
```lua
getgenv().ArceneyAPI:GetRagebotTarget() -> Character : Model , Position : Vector3
```

## Get Legitbot Target
```lua
getgenv().ArceneyAPI:GetLegitbotTarget() -> Character : Model , Position : Vector3
```

## Aimbot
```lua
getgenv().ArceneyAPI:Aim(<Target : Vector3>)
```

## Notification
```lua
getgenv().ArceneyAPI:Notify(Title : string , Content : string , Duration : Number) -> Notification API
```

## Get Config
```lua
getgenv().ArceneyAPI:GetConfig();
```
### Example
```lua
local DefaultConfig = {
    Rage = {
        Weapon = {
            Hitboxes = {
                Head = true
            },
        },
        AntiAim = {
            Enabled = false,
            Pitch = "Center",
            Yaw = "Backwards",
            YawOffset = 1,
            Spinbot = false,
            selection = "Client",
            Fakepitch = false,
            Fakelag = false,
            FakePitchYawJitter = false,
        },
        Resolver = {
            Enabled = false,
            Katana = false,
        },
        General = {
            autofire = false,
            MaximumFov = 90,
            DrawFov = false,
            ignoreWalls = false,
            doubletap = false,
            Autoscope = false,
            Nospread = false,
            Forcetrack = false,
            Fakeping = false,
            Hitchance = 125,
            knifebot = false,
            Slientaim = false,
            autofire_settings = {
                spread_offset = 0.5,
                delayshoot = 0.1,
                shootingRage = false,
            }
        },
        Misc = {
            AutoStrafe = false,
        }
    },
    Legit = {
        Aimbot = {
            Enabled = false,
            Smooth = 1,
            Hitbox = "Head",
            MaximumFov = 70,
            DrawFov = false,
            VisibleCheck = true,
            Keybind = "MouseLeft",
            AlwayOn = false,
        },
        TriggerBot = {
            Enabled = false,
            Delay = 0.1,
            Keybind = "F",
            AlwayOn = false
        }
    },
    Visual = {
        Thirdperson = {
            Enabled = false,
            Distance = 10,
            Keybind = "T",
        },
        ESP = {
            Enabled = true,
            ESP_Box = {
                Enabled = false,
                Color = Color3.fromRGB(255, 255, 255),
                Health = false,
                Weapon = false,
                Transparency = 0,
            },
            ESP_GlowModel = {
                Enabled = false,
                Normal = {
                    FillColor = Color3.fromRGB(0, 255, 149),
                    OutlineColor = Color3.fromRGB(255, 255, 255),
                    FillTransparency = 0.5,
                    OutlineTransparency = 0,
                },
                Walls = {
                    FillColor = Color3.fromRGB(255, 143, 121),
                    OutlineColor = Color3.fromRGB(255, 255, 255),
                    FillTransparency = 0.5,
                    OutlineTransparency = 0,
                }
            },
        },
        MatchResult = {
            Enabled = false,
            MatchResult = "Valve Anti-Cheat",
        },
        Model = {
            Glow = {
                Enabled = false,
                Color = Color3.fromRGB(28, 255, 228),
                Transparency = 0,
            }
        },
        BackTrack = {
            Enabled = false,
            Color = Color3.fromRGB(255, 255, 255)
        },
        ForceTrack = {
            Enabled = false,
            Color = Color3.fromRGB(255, 82, 82),
            Transparency = 0,
        },
        BulletTracker = {
            Enabled = false,
            Color = Color3.fromRGB(21, 255, 247),
            Transparency = 0,
            Duration = 1,
        },
        Fov = {
            Color = Color3.fromRGB(255,255,255),
            Transparency = 0,
        },
        Sounds = {
            Enabled = false,
            Volume = 1,
            Hitsound = "agpa1.mp3", -- "{WORKSPACE}/Arceney.cc/sound-assets"
            Killsound = "agpa2.mp3", -- "{WORKSPACE}/Arceney.cc/sound-assets"
        },
        Removals = {
            Smoke = false,
            Flashbang = false,
        },
        DamageLog = false,
    },
    Theme = {
        Theme = "Neon Blue",
        AlwayShowTab = false,
    },
    Version = "3.5",
};
```
