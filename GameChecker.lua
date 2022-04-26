local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

if game.PlaceId == 4779613061 then
    OrionLib:MakeNotification({
        Name = "Hoods Killer",
        Content = "Game : South London 2",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenChuChe/HoodsKiller/main/SL2Main.lua"))()
elseif game.PlaceId == 1923555882 then
    OrionLib:MakeNotification({
        Name = "Hoods Killer",
        Content = "Game : East Brickton",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenChuChe/HoodsKiller/main/EB.lua"))()
end
