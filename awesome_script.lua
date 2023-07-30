local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Slap battles hub that exists",
   LoadingTitle = "Slap battles hub that exists",
   LoadingSubtitle = "by balls",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "https://discord.gg/rJWwxQgYmS", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Slap battles hub that exists",
      Subtitle = "Key System",
      Note = "key: guy",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"awesome"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Notification",
   Content = "Script loaded!",
   Duration = 5,
   Image = 443362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Ok",
         Callback = function()
         print("elude code spawned")
      end
   },
},
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "Clear kick error",
   Callback = function()
   game:GetService("GuiService"):ClearError()
   end,
})
local Button2 = Tab:CreateButton({
   Name = "View testing place / server (For good glove leaks)",
   Callback = function()
   game:GetService("TeleportService"):Teleport(9020359053)
   game:GetService("RunService").RenderStepped:Connect(function()
     game:GetService("GuiService"):ClearError()
   end)
   end,
})
local Button3 = Tab:CreateButton({
   Name = "Testing server Freecam",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/SB%20Freecam"))()
   end,
})