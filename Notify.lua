local Seringe = {}

function Seringe.Notify(txt)
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "NotificationGUI" then
            v:Destroy()
        end
    end

    local NotificationGUI = Instance.new("ScreenGui")
    local NotifMain = Instance.new("ImageLabel")
    local SeringeText = Instance.new("TextLabel")
    local UIGradient = Instance.new("UIGradient")
    local Bar = Instance.new("Frame")
    local Notfication = Instance.new("TextLabel")

    NotificationGUI.Name = "NotificationGUI"
    NotificationGUI.Parent = game.CoreGui

    NotifMain.Name = "NotifMain"
    NotifMain.Parent = NotificationGUI
    NotifMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotifMain.BackgroundTransparency = 1.000
    NotifMain.Position = UDim2.new(0.985, 0, 0.91900003, 0)
    NotifMain.Size = UDim2.new(0, 240, 0, 69)
    NotifMain.Image = "rbxassetid://3570695787"
    NotifMain.ImageColor3 = Color3.fromRGB(31, 31, 31)
    NotifMain.ScaleType = Enum.ScaleType.Slice
    NotifMain.SliceCenter = Rect.new(100, 100, 100, 100)
    NotifMain.SliceScale = 0.080

    SeringeText.Name = "SeringeText"
    SeringeText.Parent = NotifMain
    SeringeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SeringeText.BackgroundTransparency = 1.000
    SeringeText.Position = UDim2.new(0.0250000004, 0, 0, 0)
    SeringeText.Size = UDim2.new(0, 166, 0, 28)
    SeringeText.Font = Enum.Font.SourceSansBold
    SeringeText.Text = "Seringe"
    SeringeText.TextColor3 = Color3.fromRGB(255, 255, 255)
    SeringeText.TextSize = 18.000
    SeringeText.TextXAlignment = Enum.TextXAlignment.Left

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(204, 0, 255)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.55, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.64, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.79, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
    UIGradient.Parent = SeringeText

    Bar.Name = "Bar"
    Bar.Parent = NotifMain
    Bar.BackgroundColor3 = Color3.fromRGB(191, 0, 255)
    Bar.BorderSizePixel = 0
    Bar.Position = UDim2.new(0, 0, 0.492753625, 0)
    Bar.Size = UDim2.new(0, 240, 0, 1)

    Notfication.Name = "Notfication"
    Notfication.Parent = NotifMain
    Notfication.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Notfication.BackgroundTransparency = 1.000
    Notfication.Position = UDim2.new(0.0250000004, 0, 0.507246375, 0)
    Notfication.Size = UDim2.new(0, 233, 0, 33)
    Notfication.Font = Enum.Font.SourceSansBold
    Notfication.Text = ""
    Notfication.TextColor3 = Color3.fromRGB(154, 154, 154)
    Notfication.TextSize = 14.000
    Notfication.TextWrapped = true
    Notfication.TextXAlignment = Enum.TextXAlignment.Left

    local TweenService = game:GetService("TweenService")

    function fadeOut()
        TweenService:Create(
            NotifMain,
            TweenInfo.new(1.5),
            {ImageTransparency = 1}
        ):Play()
        TweenService:Create(
            SeringeText,
            TweenInfo.new(1.5),
            {TextTransparency = 1}
        ):Play()
        TweenService:Create(
            Bar,
            TweenInfo.new(1.5),
            {BackgroundTransparency = 1}
        ):Play()
        TweenService:Create(
            Notfication,
            TweenInfo.new(1.5),
            {TextTransparency = 1}
        ):Play()
        wait(1.5)
        for i,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == "NotificationGUI" then
                v:Destroy()
            end
        end
        TweenService:Create(
            NotifMain,
            TweenInfo.new(1.5),
            {BackgroundTransparency = 0}
        ):Play()
        TweenService:Create(
            SeringeText,
            TweenInfo.new(1.5),
            {TextTransparency = 0}
        ):Play()
        TweenService:Create(
            Bar,
            TweenInfo.new(1.5),
            {BackgroundTransparency = 0}
        ):Play()
        TweenService:Create(
            Notfication,
            TweenInfo.new(1.5),
            {TextTransparency = 0}
        ):Play()
        Notfication.Text = ""
    end

    NotifMain:TweenPosition(UDim2.new(0.865, 0,0.919, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.7, true)

    Notfication.Text = txt

    wait(1.5)

    fadeOut()
end

return Seringe
