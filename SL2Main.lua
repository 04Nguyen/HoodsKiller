local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hoods Killer | SL2"})

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
local Combat = Window:MakeTab({
	Name = "Combats",
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
getgenv().Pushall = false

Players:AddParagraph("Please read!","Since AC is harder to be bypass for a retard like me, I don't recommend running too fast with WalkSpeed")

Players:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 50,
	Default = 5,
	Increment = 1,
	ValueName = "WalkSex!",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Combat:AddToggle({
	Name = "Push Aura [Require Fist]",
	Default = false,
	Callback = function(Value)
		Pushall = Value
		while Pushall do
			local GetSeverP = game:GetService("Players"):GetPlayers()
			for _,Players in pairs(GetSeverP) do
				if Players ~= game:GetService("Players").LocalPlayer and game:GetService("GamePassService"):PlayerHasPass(Players, 11650200) then
					game:GetService("Players").LocalPlayer.Character.Fist.LocalScript.p:FireServer(Players)
				else
					OrionLib:MakeNotification({
						Name = "Hoods Killer",
						Content = "[REQUIRE FIST GAMEPASS]",
						Image = "rbxassetid://4483345998",
						Time = 5
					})
					OrionLib.Flags["toggle"].Value = false
				end
			end
			wait()
		end
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


Misc:AddButton({
	Name = "Switch Game",
	Callback = function()
      		print("button pressed")
			  if game.PlaceId == 4779613061 then
				game:GetService("TeleportService"):Teleport(1923555882, game:GetService("Players").LocalPlayer)
			  elseif game.PlaceId == 1923555882 then
				game:GetService("TeleportService"):Teleport(4779613061, game:GetService("Players").LocalPlayer)
			  end
  	end    
})

-- Back end stuff
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
	if State == Enum.TeleportState.Started then
		syn.queue_on_teleport("script to execute after TP")
	end
end)

OrionLib:Init()

