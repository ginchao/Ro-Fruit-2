
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local win = DiscordLib:Window("discord library")
local serv = win:Server("Preview", "")
local drops = serv:Channel("Players")
drops:Toggle("Farm Chest",false,function(v)
getgenv().chest = v
while chest do wait()
pcall(function()
for i, v in pairs(game:GetService("Workspace").Chest.Chest1:GetChildren()) do
if v.Name == "Head" then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame*CFrame.new(0,7,0)
wait(.1)
fireproximityprompt(v.ProximityPrompt)
else
end
for i, c in pairs(game:GetService("Workspace").Chest:GetChildren()) do
if c:IsA("Model") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = c.Body.CFrame*CFrame.new(0,7,0)
wait(.1)
fireproximityprompt(c.Head.ProximityPrompt)
else
end
for i, f in pairs(game:GetService("Workspace").Chest:GetChildren()) do
if f:IsA("Model") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = f.Body.CFrame*CFrame.new(0,7,0)
wait(.1)
fireproximityprompt(f.Head.ProximityPrompt)
end
end
end
end
end)
end
end)
























