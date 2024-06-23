local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()

--Window
local Window = Rayfield:CreateWindow({
   Name = "Rooms-Fangames Hub",
   LoadingTitle = "A Rooms-Fangames Script",
   LoadingSubtitle = "by G-159-BiliBili",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Rooms Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})

--Welcome Notification
Rayfield:Notify({
   Title = "Rooms-Fangames Script",
   Content = "Successfully loaded! This script is uncomplete, so expect bugs.",
   Duration = 5,
   Image = 4483362458,
})



--Tabs
local IR = Window:CreateTab("Interminable Rooms", 4483362458)
local RLD = Window:CreateTab("Rooms:Low Detailed", 4483362458)
local RFF = Window:CreateTab("Rooms:Found Footage", 4483362458)
local LR = Window:CreateTab("Liminal Rooms", 4483362458)
local IRC = Window:CreateTab("Indefinite Rooms Classic", 4483362458)



local Section = IR:CreateSection("Interminable Rooms")
local Section = IR:CreateSection("if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error")
local Toggle = IR:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Workspace:WaitForChild("Entities").ChildAdded:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has spawned.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})

local Toggle = IR:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection = Workspace:WaitForChild("Entities").ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has deleted.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})
local Section = RLD:CreateSection("Rooms Low Detailed")
local Section = RLD:CreateSection("if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error")
local Toggle = RLD:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.SpawnedEnitites.ChildAdded:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has spawned.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})

local Toggle = RLD:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.SpawnedEnitites.ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has deleted.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})
local Section = RFF:CreateSection("Rooms:Found Footage")
local Section = RFF:CreateSection("if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error")
local Toggle = RFF:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.SpawnedEntities.ChildAdded:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has spawned.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})

local Toggle = RFF:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.SpawnedEntities.ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has deleted.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})

local Button = RFF:CreateButton({
    Name = "No footsteps sound",
    Callback = function()
    game.Players.LocalPlayer.PlayerScripts.RbxCharacterSounds.Disable = true
    end,
 })
 local Button = RFF:CreateButton({
    Name = "Not Wear NVCS-3000",
    Callback = function()
        game.Players.LocalPlayer.PlayerGui.GameOverlay.Enabled = false
        game.Players.LocalPlayer.PlayerGui.GameOverlay.OverlayMainScript.Idle.Playing = false
        game.Players.LocalPlayer.PlayerGui.GameOverlay.OverlayMainScript.Disable.Playing = true
    end,
 })
 local Button = RFF:CreateButton({
    Name = "Wear NVCS-3000",
    Callback = function()
        game.Players.LocalPlayer.PlayerGui.GameOverlay.Enabled = true
        game.Players.LocalPlayer.PlayerGui.GameOverlay.OverlayMainScript.Idle.Playing = true
        game.Players.LocalPlayer.PlayerGui.GameOverlay.OverlayMainScript.Use.Playing = true
    end,
 })
 local Section = LR:CreateSection("Liminal Rooms")
local Section = LR:CreateSection("if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error")
local Toggle = LR:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.ActiveEnemies.ChildAdded:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has spawned.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})

local Toggle = LR:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.ActiveEnemies.ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                   Title = entity.Name,
                   Content = "Has deleted.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})
local Toggle = LR:CreateToggle({
    Name = "Notify Minions Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.ActiveMinions.ChildAdded:Connect(function(minions)
                Rayfield:Notify({
                   Title = minions.Name,
                   Content = "Has spawned.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})

local Toggle = LR:CreateToggle({
    Name = "Notify Minions Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.ActiveMinions.ChildRemoved:Connect(function(minions)
                Rayfield:Notify({
                   Title = minions.Name,
                   Content = "Has deleted.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end)
        else
            connection:Disconnect()
        end
    end,
})
local Button = LR:CreateButton({
    Name = "Teleport to A Section",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13415267785
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
 })
 local Button = LR:CreateButton({
    Name = "Teleport to B Section",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13740983392
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
 })
local Button = LR:CreateButton({
    Name = "Teleport to C Section",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13850926454
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
 })
local Button = LR:CreateButton({
    Name = "Teleport to U Section",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13651436803
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
})
local Section = IRC:CreateSection("Indefinite Rooms Classic")
local Section = IRC:CreateSection("if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error")
local Toggle = IRC:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.ChildAdded:Connect(function(AddedThing)
                pcall(function()
                if AddedThing.HumanoidRootPart == PrimaryPart and AddedThing.ClassicName == "'Model" and string.find(AddedThing.Name, "-")
                   Rayfield:Notify({
                   Title = AddedThing.Name,
                   Content = "Has spawned.",
                   Duration = 5,
                   Image = 4483362458,
                   })
                end
                )
            end)
        else
            connection:Disconnect()
        end
    end,
})

local Toggle = IRC:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection = Game.Workspace.ChildRemoved:Connect(function(DeletedThing)
            pcall(function()
            if DeletedThing.HumanoidRootPart == PrimaryPart and AddedThing.ClassicName == "'Model" and string.find(AddedThing.Name, "-")
                Rayfield:Notify({
                   Title = DeletedThing.Name,
                   Content = "Has deleted.",
                   Duration = 5,
                   Image = 4483362458,
                })
            end
            )
            end)
        else
            connection:Disconnect()
        end
    end,
})