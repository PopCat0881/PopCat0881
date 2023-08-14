local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "get rekt noob, u cant use this hub xD",
   LoadingTitle = "get rekt",
   LoadingSubtitle = "by Tencelll",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/rJWwxQgYmS", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false -- Set this to true to use our key system
   KeySettings = {
      Title = "eww",
      Subtitle = "exploting is bad",
      Note = "by tencelll",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"asdasd"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Tencelll",
   Content = "get rekt noob, nothing is here",
   Duration = 99999,
   Image = 443362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "why",
         Callback = function()
         if game.ReplicatedStorage.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") then
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This player used poor gloves hub! Exploting is bad, This player cant use this script.", "All")
            end
      end
   },
},
})

local Tab = Window:CreateTab("noob", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "noob",
   Callback = function()
   if game.ReplicatedStorage.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") then
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This player used poor gloves hub! Exploting is bad, This player cant use this script.", "All")
            end
   end,
})
