local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local LuaName = "Seringe"

local initialized = false
local sessionid = ""

Name = "Seringe"
Ownerid = "WUzm2YIwG3"
APPVersion = "1.0"

local req = game:HttpGet('https://keyauth.win/api/1.1/?name=' .. Name .. '&ownerid=' .. Ownerid .. '&type=init&ver=' .. APPVersion)

if req == "KeyAuth_Invalid" then 
   print(" Error: Application not found.")

   StarterGui:SetCore("SendNotification", {
	   Title = LuaName,
	   Text = " Error: Application not found.",
	   Duration = 3
   })

   return false
end

local data = HttpService:JSONDecode(req)

if data.success == true then
   initialized = true
   sessionid = data.sessionid
   
elseif (data.message == "invalidver") then
   print(" Error: Wrong application version..")

   StarterGui:SetCore("SendNotification", {
	   Title = LuaName,
	   Text = " Error: Wrong application version..",
	   Duration = 3
   })

   return false
else
   print(" Error: " .. data.message)
   return false
end

local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RobloxAvatar/uiLibary/main/Uilib.lua')))()
local Window = Library:CreateWindow("Seringe")

local Tab = Window:CreateFolder("Login")

local Username = ""
local Password = ""

Tab:Box("Username","string", function(state)
    if state then
        Username = state
    end
end)

Tab:Box("Password","string", function(state)
    if state then
        Password = state
    end
end)

Tab:Button("Login To Seringe!", function()
    if Username == "" then
        StarterGui:SetCore("SendNotification", {
            Title = LuaName,
            Text = " Error: Username is empty.",
            Duration = 3
        })
        return false
    end
    if Password == "" then
        StarterGui:SetCore("SendNotification", {
            Title = LuaName,
            Text = " Error: Password is empty.",
            Duration = 3
        })
        return false
    end
    local req = game:HttpGet('https://keyauth.win/api/1.1/?name=' .. Name .. '&ownerid=' .. Ownerid .. '&type=login&username=' .. Username .. '&pass=' .. Password ..'&ver=' .. APPVersion .. '&sessionid=' .. sessionid)
    local data = HttpService:JSONDecode(req)

    if data.success == false then 
        print(" Error: " .. data.message )
    
       StarterGui:SetCore("SendNotification", {
           Title = LuaName,
           Text = " Error: " .. data.message,
           Duration = 5
       })
    
        return false
    end
    
    StarterGui:SetCore("SendNotification", {
        Title = LuaName,
        Text = "Welcome To Seringe " .. Username .. "!",
        Duration = 5
    })
end)
