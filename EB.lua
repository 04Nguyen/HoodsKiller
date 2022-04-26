local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hoods Killer | EB"})

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

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
	if State == Enum.TeleportState.Started then
		syn.queue_on_teleport("sex")
	end
end)

OrionLib:Init()

