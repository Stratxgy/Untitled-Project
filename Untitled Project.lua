-- boot the library
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- create a window

local Window = Fluent:CreateWindow({
    Title = "Untitled Project ".. Fluent.Version,
    SubTitle = "by stratxgy",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftAlt -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Aimbot = Window:AddTab({ Title = "Aimbot", Icon = "lock" }),
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "user" })
}
-- arr i dont know what this does
local Options = Fluent.Options
Window:SelectTab(1)

-- load all me libraries (pirate speak comments are fun)
local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()
local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()
local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Roblox-Functions-Library/main/Library.lua"))()

-- arr mateys!!!
-- load the whippersnappin' exuny's developer esp!
-- it makes the esp go on then off! stupid esp! (i cant make a working esp for the life of me) (also arr)
ExunysDeveloperESP.Load()
getgenv().ExunysDeveloperESP.Properties.ESP.Enabled = false
getgenv().ExunysDeveloperESP.Properties.Tracer.Enabled = false
getgenv().ExunysDeveloperESP.Properties.HeadDot.Enabled = false
getgenv().ExunysDeveloperESP.Properties.HealthBar.Enabled = false
getgenv().ExunysDeveloperESP.Properties.Box.Enabled = false
getgenv().ExunysDeveloperESP.Properties.Crosshair.Enabled = false


Tabs.Aimbot:AddButton({
    Title = "Aimbot",
    Description = "Toggles aimbot, of course!",
    Callback = function()
        ExunysDeveloperAimbot.Load()
    end
})


local Slider = Tabs.Aimbot:AddSlider("FOV Circle", {
    Title = "FOV Circle",
    Description = "Changes Size of the FOV Circle",
    Default = 35,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)

    end
})
Slider:OnChanged(function(Value)
    getgenv().ExunysDeveloperAimbot.FOVSettings.Radius = Value
end)
Slider:SetValue(35)


local Section = Tabs.Aimbot:AddSection("Checks")

Tabs.Aimbot:AddButton({
    Title = "Team-Check (Permanent)",
    Description = "Turns on teamcheck permanently!",
    Callback = function()
        getgenv().ExunysDeveloperAimbot.Settings.TeamCheck = true
    end
})


Tabs.Aimbot:AddButton({
    Title = "Alive check",
    Description = "Turns on Alivecheck",
    Callback = function()
        getgenv().ExunysDeveloperAimbot.Settings.AliveCheck = true
    end
})

    


local Section = Tabs.Aimbot:AddSection("Lock")


Tabs.Aimbot:AddButton({
    Title = "Mouse Button 1 Lock",
    Description = "Changes Lock Button to MB1",
    Callback = function()
        getgenv().ExunysDeveloperAimbot.Settings.TriggerKey = Enum.UserInputType.MouseButton1
    end
})

Tabs.Aimbot:AddButton({
    Title = "Mouse Button 2 Lock (Default)",
    Description = "Changes Lock Button to MB2",
    Callback = function()
        getgenv().ExunysDeveloperAimbot.Settings.TriggerKey = Enum.UserInputType.MouseButton2
    end
})



local Section = Tabs.Visuals:AddSection("ESP Settings")

local Toggle = Tabs.Visuals:AddToggle("MyToggletc", {Title = "Team Check", Default = false })
Toggle:OnChanged(function()
      getgenv().ExunysDeveloperESP.Settings.TeamCheck = Options.MyToggletc.Value
  end)
  Options.MyToggletc:SetValue(false)

  local Toggle = Tabs.Visuals:AddToggle("MyToggleac", {Title = "Alive Check", Default = false })
Toggle:OnChanged(function()
    getgenv().ExunysDeveloperESP.Settings.AliveCheck = Options.MyToggleac.Value
  end)
  Options.MyToggletc:SetValue(false)



local Section = Tabs.Visuals:AddSection("Box ESP")


    local Toggle = Tabs.Visuals:AddToggle("MyToggleBox", {Title = "Box ESP", Default = false })
  Toggle:OnChanged(function()
        getgenv().ExunysDeveloperESP.Properties.Box.Enabled = Options.MyToggleBox.Value
    end)
    Options.MyToggleBox:SetValue(false)
   
    local Section = Tabs.Visuals:AddSection("Chams")

    
    local Toggle = Tabs.Visuals:AddToggle("MyToggleChams", {Title = "Chams", Default = false })
    Toggle:OnChanged(function()
        Sense.teamSettings.enemy.enabled = Options.MyToggleChams.Value
        Sense.teamSettings.enemy.chams = Options.MyToggleChams.Value
    end)
    Options.MyToggleChams:SetValue(false)

     
    Tabs.Visuals:AddButton({
        Title = "Chams Teamcolor (Permanent)",
        Description = "turns on chams teamcolor permanently",
        Callback = function()
            Sense.sharedSettings.useTeamColor = true
        end
    })



        local Section = Tabs.Visuals:AddSection("Health Bar")

        local Toggle = Tabs.Visuals:AddToggle("MyToggleHBAR", {Title = "Health Bar", Default = false })
        Toggle:OnChanged(function()
            getgenv().ExunysDeveloperESP.Properties.HealthBar.Enabled = Options.MyToggleHBAR.Value
        end)
        Options.MyToggleHBAR:SetValue(false)


            local Section = Tabs.Visuals:AddSection("Tracer")


            local Toggle = Tabs.Visuals:AddToggle("MyToggleTr", {Title = "Tracer", Default = false })
            Toggle:OnChanged(function()
                getgenv().ExunysDeveloperESP.Properties.Tracer.Enabled = Options.MyToggleTr.Value
            end)
            Options.MyToggleTr:SetValue(false)

         



                SaveManager:SetLibrary(Fluent)
                SaveManager:IgnoreThemeSettings()

                InterfaceManager:SetFolder("Untitled Project")
                SaveManager:SetFolder("Untitled Project/Universal")

Sense.Load()


    -- notify that i suck at coding
Fluent:Notify({
    Title = "Sorry : (  ",
    Content = "If the ESP turned on then off im sorry, for some reason its required",
    SubContent = "",
    Duration = 10
})
    Fluent:Notify({
        Title = "Untitled Project",
        Content = "Loaded Script!",
        SubContent = "",
        Duration = 5
    })
