
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local win = DiscordLib:Window("discord library")
local serv = win:Server("TestHub", "")
local drops = serv:Channel("Main")
drops:Toggle("Auto Farm Chest OP",false,function(v)
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
        local sldrs = serv:Channel("Walk Speed")   
local spd = nil
    local sldr = sldrs:Slider("Speeds", 0, 1000, 0, function(v)    
_G.speed = v
local function SPDs()
if _G.speed then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v    
end)
end
end
spd = game:GetService('RunService').RenderStepped:Connect(SPDs)
    end)    
    sldrs:Button("Speed 1000", function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 150 or v.WalkSpeed == 70 or v.WalkSpeed == 500 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("1000")    
end
end
end
    end)    
    sldrs:Button("Speed 500", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 150 or v.WalkSpeed == 70 or v.WalkSpeed == 1000 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("500")    
end
end
end
    end)    
sldrs:Button("Speed 150", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 70 or v.WalkSpeed == 500 or v.WalkSpeed == 1000 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("150")    
end
end
end
    end)    
    sldrs:Button("Speed 70", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 30 or v.WalkSpeed == 150 or v.WalkSpeed == 500 or v.WalkSpeed == 1000 then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("70")    
end
end
end
    end)    
    sldrs:Button("Speed 30", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.WalkSpeed == 1000 or v.WalkSpeed == 150 or v.WalkSpeed == 70 or v.WalkSpeed == 500  then
DiscordLib: Notification("Warning","Please Clear Speed","Ok")
else
    sldr:Change("30")    
end
end
end
     end)    
sldrs:Button("Clear Speed", function(v)    
  spd:Disconnect()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
    local jm = nil
    local sldr = sldrs:Slider("JumpPower", 0, 1000, 0, function(v)    
_G.jpm = v
local function JPMs()
if _G.jpm then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = v    
end)
end
end
jm = game:GetService('RunService').RenderStepped:Connect(JPMs)    
end)    
    sldrs:Button("Jump 1000", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 100 or v.JumpPower == 300 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("1000")    
end
end
end
    end)    
    sldrs:Button("Jump 500", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 100 or v.JumpPower == 300 or v.JumpPower == 1000  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("500")    
end
end
end
    end)    
    sldrs:Button("Jump 300", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 100 or v.JumpPower == 1000 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("300")    
end
end
end
    end)    
    sldrs:Button("Jump 100", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 70 or v.JumpPower == 1000 or v.JumpPower == 300 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("100")    
end
end
end
    end)    
    sldrs:Button("Jump 70", function()    
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Humanoid") then
if v.JumpPower == 1000 or v.JumpPower == 100 or v.JumpPower == 300 or v.JumpPower == 500  then
DiscordLib: Notification("Warning","Please Clear Jump","Ok")
else
    sldr:Change("70")    
end
end
end
    end)   
sldrs:Button("Clear Jump", function(v)    
  jm:Disconnect()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 40
end)

  local btns = serv:Channel("More Script") 
 btns:Label("Cre Hub:Grabiel Ynu") 
btns:Textbox("Bug Report", "Type!", true, function(t)
if t then
DiscordLib:Notification("Thông Báo","Tin Nhắn Đã Được Gửi.","Ok")
HttpService = game:GetService("HttpService") 
 Webhook_URL =  "https://discord.com/api/webhooks/1167083350499020841/Iu6pVDxhv8tUDaf-tR4gCt4W8e9YGYfXF46M52uLN4jQHcfvAUJEJIl8bnY4KKu0WTD0" 
 local ok = request or http_request or (http and http.request) or syn.request 
 ok( 
 { 
 Url = Webhook_URL, 
 Method = 'POST', 
 Headers = { 
 ['Content-Type'] = 'application/json' 
 }, 
 Body = HttpService:JSONEncode({ 
 ["content"] = "", 
 ["embeds"] = {{ 
 ["author"] = { 
 ["name"] = "", 
 ["icon"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=100&height=100&format=png" 
 }, 
 ["title"] = "🐛"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, 
 ["description"] = "{ ["..game.Players.LocalPlayer.DisplayName.."] | "..game.Players.LocalPlayer.Name.." } Vừa Báo Lỗi", 
 ["type"] = "rich", 
 ["color"] = tonumber(0xffffff), 
 ["fields"] = { 
 { 
 ["name"] = "Script Join:", 
 ["value"] = "game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,'"..game.JobId.."')", 
 ["inline"] = true }, 
 { 
 ["name"] = "Người Dùng ID:", 
 ["value"] = game:GetService("Players").LocalPlayer.UserId, 
 ["inline"] = true }, 
 { 
["name"] = "Nội Dung:", 
 ["value"] = t, 
 ["inline"] = true },
 {
 ["name"] = "Số tuổi của Account:", 
 ["value"] = game:GetService("Players").LocalPlayer.AccountAge, 
 ["inline"] = true } 
 } 
 }} 
 }) 
 })
else
DiscordLib:Notification("Thông Báo","Tin Nhắn Chưa Được Gửi Hãy Thử Lại...","Ok..")
end
end)
  btns:Seperator()  
btns:Button("Hub ESP",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ginchao/ESP-COPY/main/TY%20FOR%20METHOD"))()
end)
    btns:Button("Infinite Yield", function()  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()  
    end)  
  btns:Button("Anti Afk", function()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ginchao/Anti-AFK/main/NO%20KICK" ,true))()  
  end)  
  btns:Button("Keyboard", function()  

                         loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()  
      end)           
  btns:Button("FlyV3", function()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))() 
         end)  

  btns:Button("Shift Lock", function()  

          loadstring(game:HttpGet("https://raw.githubusercontent.com/MiniNoobie/ShiftLockx/main/Shiftlock-MiniNoobie",true))()  
  end) 

  btns:Button("DEX PC", function()  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()  
  end)  
  btns:Button("DEXv4 PC", function()  
  loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()  
  end)  
  btns:Button("Remote Spy", function()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/Forked/M%3ASimpleSpy%20V3" ,true))()  
  end)  
  btns:Button("CCTV Camera", function()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/CCTV%20Camera"))();  
  end)  
  btns:Button("Invisible X Teleport", function()  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe./dbb6ce6f6cee4f7a5c9e20d7b88e83db2a93bf25/Invisible%20GUI'))()  
  end) 























