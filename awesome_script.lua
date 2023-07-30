local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Poor gloves hub",
   LoadingTitle = "Poor gloves hub",
   LoadingSubtitle = "by balls",
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
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Poor gloves hub",
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
   Name = "Freecam",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/SB%20Freecam"))()
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Rhythm explosion spam (Works with all gloves)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.RhythmSpam = Value
while _G.RhythmSpam do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
   end,
})
local Toggle2 = Tab:CreateToggle({
   Name = "Rojo spam (Works with all gloves)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Person == nil then
Person = game.Players.LocalPlayer.Name
end
_G.RojoSpam = Value
while _G.RojoSpam do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
task.wait(2)
end
   end,
})
local Toggle3 = Tab:CreateToggle({
   Name = "Anti void",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Workspace.dedBarrier.CanCollide = Value
   game.Workspace.TAntiVoid.CanCollide = Value
   end,
})
local Toggle4 = Tab:CreateToggle({
   Name = "Anti brazil portal",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Workspace.Lobby.brazil.portal.CanTouch = Value
   end,
})
local Button4 = Tab:CreateButton({
   Name = "Inf yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})
local Toggle5 = Tab:CreateToggle({
   Name = "Brick spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.BrickSpam = Value
   while _G.BrickSpam do
      game:GetService("ReplicatedStorage").lbrick:FireServer()
      wait(1.1)
   end
   end,
})
local Toggle5 = Tab:CreateToggle({
   Name = "Slow Brick spam (Use if high ping)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.BrickSpam = Value
   while _G.BrickSpam do
      game:GetService("ReplicatedStorage").lbrick:FireServer()
      wait(5.5)
   end
   end,
})
