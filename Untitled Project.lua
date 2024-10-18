local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Untitled Project", HidePremium = false, SaveConfig = true, ConfigFolder = "Untitled Project"})

local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()
local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()

        


-- Aimbot Tab


local AimbotTab = Window:MakeTab({
	Name = "Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = AimbotTab:AddSection({
	Name = "General"
})

AimbotTab:AddButton({
	Name = "Aimbot",
	Callback = function()
	 ExunysDeveloperAimbot.Load()

	 OrionLib:MakeNotification({
		Name = "Aimbot",
		Content = "HeadLock Only Right now, If the Script Gets A lot of views I will make a Dropdown",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
  	end    
})


AimbotTab:AddButton({
	Name = "Team Check (Permanent)",
	Callback = function()
		getgenv().ExunysDeveloperAimbot.Settings.TeamCheck = true
  	end    
})

local Section = AimbotTab:AddSection({
	Name = "Lock"
})

AimbotTab:AddButton({
	Name = "LockMode (CFRAME, DEFAULT)",
	Callback = function()
		getgenv().ExunysDeveloperAimbot.Settings.LockMode = 1
  	end    
})

AimbotTab:AddButton({
	Name = "LockMode (mousemoverel) ",
	Callback = function()
		getgenv().ExunysDeveloperAimbot.Settings.LockMode = 2
  	end    
})

AimbotTab:AddButton({
	Name = "Mouse 1 Lock",
	Callback = function()
		getgenv().ExunysDeveloperAimbot.Settings.TriggerKey = Enum.UserInputType.MouseButton1
  	end    
})

AimbotTab:AddButton({
	Name = "Mouse 2 Lock",
	Callback = function()
		getgenv().ExunysDeveloperAimbot.Settings.TriggerKey = Enum.UserInputType.MouseButton2
  	end    
})






-- Visuals Tab

local VisualsTab = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = VisualsTab:AddSection({
	Name = "General"
})

VisualsTab:AddButton({
	Name = "Box ESP",
	Callback = function()
		Sense.teamSettings.enemy.enabled = true
		Sense.teamSettings.enemy.box = true
		Sense.teamSettings.enemy.boxColor[1] = Color3.new(255, 255, 255)
  	end    
})

VisualsTab:AddButton({
	Name = "Health Bar",
	Callback = function()
		Sense.teamSettings.enemy.enabled = true
		Sense.teamSettings.enemy.healthBar = true
  	end    
})


VisualsTab:AddButton({
	Name = "Disable Visuals",
	Callback = function()
		Sense.teamSettings.enemy.enabled = false
        Sense.teamSettings.enemy.box = false
		Sense.teamSettings.enemy.chams = false
		Sense.friendly.enemy.chams = false
		Sense.teamSettings.enemy.Tracers = false
		Sense.teamSettings.friendly.Tracers = false
  	end    
})

local Section = VisualsTab:AddSection({
	Name = "Chams"
})


VisualsTab:AddButton({
	Name = "Chams",
	Callback = function()
		Sense.teamSettings.enemy.enabled = true
		Sense.teamSettings.enemy.chams = true
  	end    
})

local Section = VisualsTab:AddSection({
	Name = "Weapon And Name"
})

VisualsTab:AddButton({
	Name = "Weapon",
	Callback = function()
	Sense.teamSettings.enemy.enabled = true
    Sense.teamSettings.enemy.Weapon = true
  	end    
})

VisualsTab:AddButton({
	Name = "Weapon Outline",
	Callback = function()
	Sense.teamSettings.enemy.enabled = true
    Sense.teamSettings.enemy.weaponOutline = true
  	end    
})

local Section = VisualsTab:AddSection({
	Name = "Tracers"
})

VisualsTab:AddButton({
	Name = "Tracers",
	Callback = function()
		Sense.teamSettings.enemy.enabled = true
		Sense.teamSettings.friendly.enabled = true
		Sense.teamSettings.enemy.Tracers = true
		Sense.teamSettings.friendly.Tracers = true
  	end    
})

VisualsTab:AddDropdown({
	Name = "Tracer Origin",
	Default = "Bottom",
	Options = {"Bottom", "Top"},
	Callback = function()
		Sense.teamSettings.enemy.enabled = true
		Sense.teamSettings.enemy.tracerOrigin = Bottom
		Sense.teamSettings.enemy.tracerOrigin = Top
	end    
})

OrionLib:MakeNotification({
	Name = "Untitled Project",
	Content = "Loaded 🔥🔥🔥",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Sense.Load()


OrionLib:Init()

