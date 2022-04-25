local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hoods Killer"})

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Players = Window:MakeTab({
	Name = "Players",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Misc = Window:MakeTab({
	Name = "Miscellaneous",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

getgenv().TStamina = false
getgenv().THunger = false

Players:AddParagraph("Please read!","There is nothing to read you got trolled lolxd!")

Players:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 100,
	Default = 5,
	Increment = 1,
	ValueName = "WalkSex!",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Misc:AddToggle({
	Name = "Inf Staminas",
	Default = false,
	Callback = function(Value)
		TStamina = Value
		while TStamina do
			task.wait()
			game:GetService("Players").NguyenChuChe.Valuestats.Stamina.Value = 100
		end
	end    
})




Misc:AddToggle({
	Name = "Inf Hungers",
	Default = false,
	Callback = function(Value)
		THunger = Value
		while THunger do
			task.wait()
			game:GetService("Players").NguyenChuChe.Valuestats.Hunger.Value = 100
		end
	end    
})
