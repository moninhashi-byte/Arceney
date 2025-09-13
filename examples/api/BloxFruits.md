# Blox Fruits API

## Using API
```lua
repeat task.wait() until _G.ArceneyAPI
local ArceneyAPI = _G.ArceneyAPI;
```

## Get Item Count
Get item count in your inventory
```lua
ArceneyAPI:GetItemCount(Name : string) -> number
```

## Get Weapon Cooldowns
get cooldowns of current weapon
```lua
ArceneyAPI:GetWeaponCooldowns(Name : string) -> table : {
 Z -> boolean
 X -> boolean
 C -> boolean
 V -> boolean
}
```

## Equip Tool
```lua
ArceneyAPI:EquipWeapon(Name : string)
```

## Fast Attack
```lua
ArceneyAPI:SetAttack(Value : boolean)
```

## Get Quest
get current quest
```lua
ArceneyAPI:GetQuest() -> table : {
  LevelRequired : number,
  LevelId : number,
  Name : string,
  QuestName : string,
  QuestLevel : number
}
```

## Get Level
get current level
```lua
ArceneyAPI:GetLevel() -> number
```

## Teleport
```lua
ArceneyAPI:Teleport(Target : CFrame || Vector3) -> thread
```

## Stop Teleport
```lua
ArceneyAPI:StopTeleport()
```

## Get Inventory
get all items in inventory
```lua
ArceneyAPI:GetInventory() -> table
```

## Key Press
```lua
ArceneyAPI:KeyPress(Key : Enum.KeyCode) 
```

## Plugin Interface
get plugin tab interface
```lua
ArceneyAPI:GetPluginInterface() -> Tab API
-- Document: https://cat-sus.gitbook.io/compkiller/documents/interface#creating-section
```

## Progress Manager
### Set Progress
```lua
ArceneyAPI:SetProgress(Name : string , Value : boolean)
```

### Is Ready
```lua
ArceneyAPI:IsProgressReady(Name : string) -> boolean
```

### End Progresses
```lua
ArceneyAPI:EndProgresses()
```
