for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "LaunchSeringeGUI" then
        return v
    end
end

local LaunchSeringeGUI = Instance.new("ScreenGui")
local LaunchMenu = Instance.new("Frame")
local TfIsByfronText = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local SeringeText = Instance.new("TextLabel")
local PromotionText = Instance.new("TextLabel")
local LifeTimeText = Instance.new("TextLabel")
local InStock = Instance.new("TextLabel")
local HubsText = Instance.new("TextLabel")
local FeScriptstext = Instance.new("TextLabel")
local ExecutorText = Instance.new("TextLabel")
local Creds = Instance.new("TextLabel")
local More = Instance.new("TextLabel")
local AddScriptsText = Instance.new("TextLabel")
local SpringtrapOutline = Instance.new("ImageLabel")
local Springtrap = Instance.new("ImageLabel")
local GoldFreddyOutline = Instance.new("ImageLabel")
local GoldFreddy = Instance.new("ImageLabel")
local LaunchButton = Instance.new("TextButton")
local ExcitementText = Instance.new("TextLabel")
local StatusBar = Instance.new("Frame")
local LaunchBar = Instance.new("Frame")

LaunchSeringeGUI.Name = "LaunchSeringeGUI"
LaunchSeringeGUI.Parent = game.CoreGui
LaunchSeringeGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LaunchMenu.Name = "LaunchMenu"
LaunchMenu.Parent = LaunchSeringeGUI
LaunchMenu.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
LaunchMenu.Position = UDim2.new(0.351608187, 0, 0.209476307, 0)
LaunchMenu.Size = UDim2.new(0, 405, 0, 465)

TfIsByfronText.Name = "TfIsByfronText"
TfIsByfronText.Parent = LaunchMenu
TfIsByfronText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TfIsByfronText.BackgroundTransparency = 1.000
TfIsByfronText.Position = UDim2.new(0.172839507, 0, 0.0666666627, 0)
TfIsByfronText.Size = UDim2.new(0, 266, 0, 113)
TfIsByfronText.Font = Enum.Font.SourceSans
TfIsByfronText.Text = "Tf is Byfron?"
TfIsByfronText.TextColor3 = Color3.fromRGB(68, 68, 68)
TfIsByfronText.TextSize = 12.000

local req = http_request or request or syn.request

local Response = req({
    Url = "https://seringe.weebly.com/",
    Method = "GET"
})

Status.Name = "Status"
Status.Parent = LaunchMenu
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.Position = UDim2.new(0.172839507, 0, 0.126881719, 0)
Status.Size = UDim2.new(0, 266, 0, 113)
Status.Font = Enum.Font.SourceSansBold
Status.TextColor3 = Color3.fromRGB(0, 0, 0)
Status.TextSize = 20.000

if Response.StatusCode == 200 then
    Status.Text = "Status: 🟢"
else
    if Response.StatusCode == 404 then
        Status.Text = "Status: 🔴"
    end
end

SeringeText.Name = "SeringeText"
SeringeText.Parent = LaunchMenu
SeringeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SeringeText.BackgroundTransparency = 1.000
SeringeText.Position = UDim2.new(0.172839507, 0, 0.030107528, 0)
SeringeText.Size = UDim2.new(0, 266, 0, 113)
SeringeText.Font = Enum.Font.SourceSansBold
SeringeText.Text = "SERINGE"
SeringeText.TextColor3 = Color3.fromRGB(255, 255, 255)
SeringeText.TextSize = 20.000

PromotionText.Name = "PromotionText"
PromotionText.Parent = LaunchMenu
PromotionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PromotionText.BackgroundTransparency = 1.000
PromotionText.Position = UDim2.new(0.172839507, 0, -0.0473118275, 0)
PromotionText.Size = UDim2.new(0, 266, 0, 113)
PromotionText.Font = Enum.Font.SourceSans
PromotionText.Text = "Made for THE Exploiting experience."
PromotionText.TextColor3 = Color3.fromRGB(255, 255, 255)
PromotionText.TextSize = 10.000

LifeTimeText.Name = "LifeTimeText"
LifeTimeText.Parent = LaunchMenu
LifeTimeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LifeTimeText.BackgroundTransparency = 1.000
LifeTimeText.Position = UDim2.new(0.306172848, 0, 0.432258099, 0)
LifeTimeText.Size = UDim2.new(0, 155, 0, 50)
LifeTimeText.Font = Enum.Font.SourceSansBold
LifeTimeText.Text = "🟢Life-time purschased"
LifeTimeText.TextColor3 = Color3.fromRGB(249, 249, 249)
LifeTimeText.TextSize = 14.000

InStock.Name = "InStock"
InStock.Parent = LaunchMenu
InStock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InStock.BackgroundTransparency = 1.000
InStock.Position = UDim2.new(0.306172848, 0, 0.249462381, 0)
InStock.Size = UDim2.new(0, 155, 0, 50)
InStock.Font = Enum.Font.SourceSansBold
InStock.Text = "What we have in stock for you:"
InStock.TextColor3 = Color3.fromRGB(249, 249, 249)
InStock.TextSize = 16.000

HubsText.Name = "HubsText"
HubsText.Parent = LaunchMenu
HubsText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HubsText.BackgroundTransparency = 1.000
HubsText.Position = UDim2.new(0.306172848, 0, 0.296774209, 0)
HubsText.Size = UDim2.new(0, 155, 0, 50)
HubsText.Font = Enum.Font.SourceSansBold
HubsText.Text = "🟢Custom made Powerful Hubs"
HubsText.TextColor3 = Color3.fromRGB(249, 249, 249)
HubsText.TextSize = 14.000

FeScriptstext.Name = "FeScriptstext"
FeScriptstext.Parent = LaunchMenu
FeScriptstext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FeScriptstext.BackgroundTransparency = 1.000
FeScriptstext.Position = UDim2.new(0.306172848, 0, 0.389247358, 0)
FeScriptstext.Size = UDim2.new(0, 155, 0, 50)
FeScriptstext.Font = Enum.Font.SourceSansBold
FeScriptstext.Text = "🟢FE custom scripts"
FeScriptstext.TextColor3 = Color3.fromRGB(249, 249, 249)
FeScriptstext.TextSize = 14.000

ExecutorText.Name = "ExecutorText"
ExecutorText.Parent = LaunchMenu
ExecutorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecutorText.BackgroundTransparency = 1.000
ExecutorText.Position = UDim2.new(0.306172848, 0, 0.344086051, 0)
ExecutorText.Size = UDim2.new(0, 155, 0, 50)
ExecutorText.Font = Enum.Font.SourceSansBold
ExecutorText.Text = "🟢Ingame executor"
ExecutorText.TextColor3 = Color3.fromRGB(249, 249, 249)
ExecutorText.TextSize = 14.000

Creds.Name = "Creds"
Creds.Parent = LaunchMenu
Creds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creds.BackgroundTransparency = 1.000
Creds.Position = UDim2.new(0.306172848, 0, 0.612903237, 0)
Creds.Size = UDim2.new(0, 155, 0, 50)
Creds.Font = Enum.Font.SourceSansBold
Creds.Text = "Provided by kungfupanda"
Creds.TextColor3 = Color3.fromRGB(71, 71, 71)
Creds.TextSize = 14.000

More.Name = "More"
More.Parent = LaunchMenu
More.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
More.BackgroundTransparency = 1.000
More.Position = UDim2.new(0.306172848, 0, 0.522580624, 0)
More.Size = UDim2.new(0, 155, 0, 50)
More.Font = Enum.Font.SourceSansBold
More.Text = "And much more.."
More.TextColor3 = Color3.fromRGB(255, 255, 255)
More.TextSize = 14.000

AddScriptsText.Name = "AddScriptsText"
AddScriptsText.Parent = LaunchMenu
AddScriptsText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddScriptsText.BackgroundTransparency = 1.000
AddScriptsText.Position = UDim2.new(0.306172848, 0, 0.479569912, 0)
AddScriptsText.Size = UDim2.new(0, 155, 0, 50)
AddScriptsText.Font = Enum.Font.SourceSansBold
AddScriptsText.Text = "🟢Add any scripts in \"My Scripts\" tab (saves)"
AddScriptsText.TextColor3 = Color3.fromRGB(249, 249, 249)
AddScriptsText.TextSize = 14.000

SpringtrapOutline.Name = "SpringtrapOutline"
SpringtrapOutline.Parent = LaunchMenu
SpringtrapOutline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpringtrapOutline.BackgroundTransparency = 1.000
SpringtrapOutline.Position = UDim2.new(0.0452945642, 0, 0.042079933, 0)
SpringtrapOutline.Rotation = -35.000
SpringtrapOutline.Size = UDim2.new(0, 124, 0, 124)
SpringtrapOutline.Image = "http://www.roblox.com/asset/?id=13708687910"
SpringtrapOutline.ImageColor3 = Color3.fromRGB(0, 0, 0)

Springtrap.Name = "Springtrap"
Springtrap.Parent = SpringtrapOutline
Springtrap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Springtrap.BackgroundTransparency = 1.000
Springtrap.Position = UDim2.new(0.072580643, 0, 0.104838707, 0)
Springtrap.Size = UDim2.new(0, 105, 0, 106)
Springtrap.Image = "http://www.roblox.com/asset/?id=13708687910"

GoldFreddyOutline.Name = "GoldFreddyOutline"
GoldFreddyOutline.Parent = LaunchMenu
GoldFreddyOutline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GoldFreddyOutline.BackgroundTransparency = 1.000
GoldFreddyOutline.Position = UDim2.new(0.673336685, 0, -0.00742620649, 0)
GoldFreddyOutline.Rotation = 60.000
GoldFreddyOutline.Size = UDim2.new(0, 124, 0, 100)
GoldFreddyOutline.Image = "http://www.roblox.com/asset/?id=13708769537"
GoldFreddyOutline.ImageColor3 = Color3.fromRGB(0, 0, 0)

GoldFreddy.Name = "GoldFreddy"
GoldFreddy.Parent = GoldFreddyOutline
GoldFreddy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GoldFreddy.BackgroundTransparency = 1.000
GoldFreddy.Position = UDim2.new(0.0887095258, 0, 0.0645162463, 0)
GoldFreddy.Size = UDim2.new(0, 105, 0, 89)
GoldFreddy.Image = "http://www.roblox.com/asset/?id=13708769537"

LaunchButton.Name = "LaunchButton"
LaunchButton.Parent = LaunchMenu
LaunchButton.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
LaunchButton.BorderColor3 = Color3.fromRGB(54, 54, 54)
LaunchButton.Position = UDim2.new(0.251851857, 0, 0.741935551, 0)
LaunchButton.Size = UDim2.new(0, 200, 0, 50)
LaunchButton.Font = Enum.Font.SourceSansBold
LaunchButton.Text = "Launch"
LaunchButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LaunchButton.TextSize = 14.000

ExcitementText.Name = "ExcitementText"
ExcitementText.Parent = LaunchButton
ExcitementText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExcitementText.BackgroundTransparency = 1.000
ExcitementText.Position = UDim2.new(0, 0, 1.12, 0)
ExcitementText.Size = UDim2.new(0, 200, 0, 38)
ExcitementText.Font = Enum.Font.SourceSansBold
ExcitementText.Text = "Get ready for the script of your life"
ExcitementText.TextColor3 = Color3.fromRGB(191, 0, 255)
ExcitementText.TextSize = 12.000

StatusBar.Name = "StatusBar"
StatusBar.Parent = LaunchMenu
StatusBar.BackgroundColor3 = Color3.fromRGB(191, 0, 255)
StatusBar.BorderSizePixel = 0
StatusBar.Position = UDim2.new(0.353086412, 0, 0.212903231, 0)
StatusBar.Size = UDim2.new(0, 120, 0, 1)

LaunchBar.Name = "LaunchBar"
LaunchBar.Parent = LaunchMenu
LaunchBar.BackgroundColor3 = Color3.fromRGB(191, 0, 255)
LaunchBar.BorderSizePixel = 0
LaunchBar.Position = UDim2.new(0.167901233, 0, 0.701075256, 0)
LaunchBar.Size = UDim2.new(0, 270, 0, 1)

local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxAvatar/Seringe/main/Notify.lua"))()

LaunchButton.MouseButton1Click:Connect(function()
    if Response.StatusCode == 200 then
        NotifyLib.Notify("Loading menu(s) for Seringe")
        wait(1.5)
        for i,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == "LaunchSeringeGUI" then
                v:Destroy()
            end
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxAvatar/Seringe/main/Games.lua", true))()
    else
        if Response.StatusCode == 404 then
            NotifyLib.Notify("Please wait for seringe to be updated, check the discord for further information!")
            for i,v in pairs(game.CoreGui:GetChildren()) do
                if v.Name == "LaunchSeringeGUI" then
                    v:Destroy()
                end
            end
        end
    end
end)
