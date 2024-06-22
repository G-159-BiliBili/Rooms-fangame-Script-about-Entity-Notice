local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

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
local Tab = Window:CreateTab("Rooms Low Detailed", 4483362458)


local Toggle = Tab:CreateToggle({
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

local Toggle = Tab:CreateToggle({
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