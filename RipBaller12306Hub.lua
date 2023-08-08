local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "rip_baller12306's hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionGlovesHub"})
OrionLib:MakeNotification({
	Name = "rip_baller12306",
	Content = "thanks for executing my script",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Main"
})
Tab:AddButton({
	Name = "Make the glove black (Works only with default)",
	Callback = function()
      		game.Players.LocalPlayer.Character.Default.Glove.Color = Color3.fromRGB(000, 000, 000)
  	end    
})
Tab:AddButton({
	Name = "Turn glove into a block (Works only with default)",
	Callback = function()
      		game.Players.LocalPlayer.Character.Default.Glove.Mesh:Destroy()
  	end    
})
Tab:AddToggle({
	Name = "Auto slap (For default)",
	Default = false,
	Callback = function(Value)
		_G.SlapAura = Value
		while _G.SlapAura do
		   game.Players.LocalPlayer.Character.Default:Activate()
		   wait(0.3)
		end
	end    
})
Tab:AddToggle({
	Name = "Auto slap (For God's hand)",
	Default = false,
	Callback = function(Value)
		_G.SlapAura = Value
		while _G.SlapAura do
		   game.Players.LocalPlayer.Character["God's hand"]:Activate()
		   wait(0.1)
		end
	end    
})
Tab:AddToggle({
	Name = "Auto slap (For OVERKILL)",
	Default = false,
	Callback = function(Value)
		_G.SlapAura = Value
		while _G.SlapAura do
		   game.Players.LocalPlayer.Character.OVERKILL:Activate()
		   wait(0.1)
		end
	end    
})
Tab:AddButton({
	Name = "Turn on anti void",
	Default = false,
	Callback = function()
      		game.Workspace.dedBarrier.CanCollide = true
            game.Workspace.TAntiVoid.CanCollide = true
  	end    
})
Tab:AddButton({
	Name = "Turn off anti void",
	Default = false,
	Callback = function()
      		game.Workspace.dedBarrier.CanCollide = false
            game.Workspace.TAntiVoid.CanCollide = false
  	end    
})
Tab:AddToggle({
	Name = "Rhythm explosion spam (Works with any glove)",
	Default = false,
	Callback = function(Value)
		_G.RhythmSpam = Value
		while _G.RhythmSpam do
		   game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",3)
           task.wait()
		end
	end    
})
Tab:AddToggle({
	Name = "Brick spam",
	Default = false,
	Callback = function(Value)
		_G.BrickSpam = Value
		while _G.BrickSpam do
		   game:GetService("ReplicatedStorage").lbrick:FireServer()
		   task.wait(1.1)
		end
	end    
})
Tab:AddToggle({
	Name = "Slow Brick spam (Use if high ping)",
	Default = false,
	Callback = function(Value)
		_G.SlowBrickSpam = Value
		while _G.SlowBrickSpam do
		   game:GetService("ReplicatedStorage").lbrick:FireServer()
		   task.wait(5.1)
		end
	end    
})
Tab:AddToggle({
	Name = "Rojo spam (Works with any glove)",
	Default = false,
	Callback = function(Value)
		if Person == nil then
Person = game.Players.LocalPlayer.Name
end
_G.RojoSpam = Value
while _G.RojoSpam do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.White_Moon27TR.Character.HumanoidRootPart.CFrame})
task.wait(0.5)
end
	end    
})
Tab:AddButton({
	Name = "Equip default",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.Default.ClickDetector)
  	end    
})
Tab:AddButton({
	Name = "Equip brick",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.Brick.ClickDetector)
  	end    
})
Tab:AddButton({
	Name = "Overkill prompt",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.OVERKILL.ClickDetector)
  	end    
})
Tab:AddButton({
	Name = "Equip error",
	Callback = function()
      		fireclickdetector(game.Workspace.Lobby.Error.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Give reaper 20 kills (Use after reaper slap you)",
	Callback = function()
for i = 1, 20 do
        game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(x,false)
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name == "DeathMark" then
                    game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end 
                end
                    end    
                })
Tab:AddToggle({
	Name = "Error death sound spam (Works with any glove)",
	Default = false,
	Callback = function(Value)
		_G.ErrorDeathSpam = Value
		while _G.ErrorDeathSpam do
		   game:GetService("ReplicatedStorage").ErrorDeath:FireServer()
		   wait(0.8)
		end
	end    
})
Tab:AddToggle({
	Name = "Get tycoon (Turn off when u got)",
	Default = false,
	Callback = function(Value)
		_G.GetTycoon = Value
		while _G.GetTycoon do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame
			wait(0.5)
		end
	end    
})
Tab:AddButton({
	Name = "Destroy GUI",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})
Tab:AddButton({
	Name = "Teleport to plate",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame
  	end    
})
Tab:AddButton({
	Name = "Join arena",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
  	end    
})
Tab:AddDropdown({
    Name = "Godmode (Use in lobby)",
	Default = "None",
	Options = {"Off", "On", "None"},
	Callback = function(Value)
		if Value == "Off" then
           game.Players.LocalPlayer.Character.Humanoid.Health = 0
           game.Workspace.dedBarrier.CanCollide = false
           game.Workspace.TAntiVoid.CanCollide = false
		   game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
		end
		if Value == "On" then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Rock.CFrame
		   game.Workspace.dedBarrier.CanCollide = true
           game.Workspace.TAntiVoid.CanCollide = true
		   game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
		end
	end
})
Tab:AddSlider({
	Name = "Walkspeed",
	Min = 20,
	Max = 50,
	Default = 20,
	Color = Color3.fromRGB(32,178,170),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
