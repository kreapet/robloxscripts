-- EasiestAce Beta
-- Version: v0.1

-- Instances:

local EasiestAce = Instance.new("ScreenGui")
local Area = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local BackGround = Instance.new("ImageLabel")
local Legit = Instance.new("TextButton")
local Credits = Instance.new("TextButton")
local Rage = Instance.new("TextButton")
local ScrLegit = Instance.new("ScrollingFrame")
local ESP = Instance.new("TextButton")
local ESPBlue = Instance.new("TextButton")
local ESPGreen = Instance.new("TextButton")
local ESPRed = Instance.new("TextButton")
local ESPWhite = Instance.new("TextButton")
local ScrRage = Instance.new("ScrollingFrame")
local Credits_2 = Instance.new("Frame")
local ScrVisual = Instance.new("ScrollingFrame")
local _3PSN = Instance.new("TextButton")
local AntiAim = Instance.new("TextButton")
local Visual = Instance.new("TextButton")

--Properties:

EasiestAce.Name = "EasiestAce"
EasiestAce.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
EasiestAce.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
EasiestAce.DisplayOrder = 2

Area.Name = "Area"
Area.Parent = EasiestAce
Area.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Area.Position = UDim2.new(0.191815853, 0, 0.30068028, 0)
Area.Selectable = true
Area.Size = UDim2.new(0, 450, 0, 250)
Area.Visible = false

ScrollingFrame.Parent = Area
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(170, 0, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0.195999995, 0)
ScrollingFrame.Size = UDim2.new(0, 83, 0, 201)
ScrollingFrame.CanvasPosition = Vector2.new(0, 149)

BackGround.Name = "BackGround"
BackGround.Parent = Area
BackGround.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackGround.Size = UDim2.new(0, 450, 0, 250)
BackGround.ZIndex = 0
BackGround.Image = "http://www.roblox.com/asset/?id=6592669640"

Legit.Name = "Legit"
Legit.Parent = Area
Legit.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
Legit.BackgroundTransparency = 0.500
Legit.Position = UDim2.new(0.211111113, 0, 0.0516748056, 0)
Legit.Size = UDim2.new(0, 66, 0, 26)
Legit.Font = Enum.Font.Code
Legit.Text = "Legit"
Legit.TextColor3 = Color3.fromRGB(255, 0, 0)
Legit.TextSize = 20.000
Legit.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Legit.TextStrokeTransparency = 1.500
Legit.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Area
Credits.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
Credits.BackgroundTransparency = 0.700
Credits.Position = UDim2.new(0.875555515, 0, 0.0476748049, 0)
Credits.Size = UDim2.new(0, 47, 0, 26)
Credits.Font = Enum.Font.Code
Credits.Text = "Credits"
Credits.TextColor3 = Color3.fromRGB(255, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 17.000
Credits.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextStrokeTransparency = 1.500
Credits.TextWrapped = true

Rage.Name = "Rage"
Rage.Parent = Area
Rage.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
Rage.BackgroundTransparency = 0.500
Rage.Position = UDim2.new(0.406666666, 0, 0.0516748056, 0)
Rage.Size = UDim2.new(0, 66, 0, 26)
Rage.Font = Enum.Font.Code
Rage.Text = "Rage"
Rage.TextColor3 = Color3.fromRGB(255, 0, 0)
Rage.TextSize = 20.000
Rage.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Rage.TextStrokeTransparency = 1.500
Rage.TextWrapped = true

ScrLegit.Name = "ScrLegit"
ScrLegit.Parent = Area
ScrLegit.Active = true
ScrLegit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrLegit.BackgroundTransparency = 1.000
ScrLegit.BorderColor3 = Color3.fromRGB(255, 0, 0)
ScrLegit.Position = UDim2.new(0.197777778, 0, 0.224000007, 0)
ScrLegit.Size = UDim2.new(0, 351, 0, 187)
ScrLegit.Visible = false

ESP.Name = "ESP"
ESP.Parent = ScrLegit
ESP.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
ESP.BackgroundTransparency = 0.650
ESP.Position = UDim2.new(0.0170940179, 0, 0.0106951874, 0)
ESP.Size = UDim2.new(0, 125, 0, 50)
ESP.Font = Enum.Font.ArialBold
ESP.Text = "ESP: Off"
ESP.TextColor3 = Color3.fromRGB(255, 0, 0)
ESP.TextSize = 30.000

ESPBlue.Name = "ESPBlue"
ESPBlue.Parent = ScrLegit
ESPBlue.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
ESPBlue.BackgroundTransparency = 0.650
ESPBlue.Position = UDim2.new(0.0170940179, 0, 0.138104796, 0)
ESPBlue.Size = UDim2.new(0, 125, 0, 20)
ESPBlue.Font = Enum.Font.ArialBold
ESPBlue.Text = "ESP Blue Color"
ESPBlue.TextColor3 = Color3.fromRGB(0, 170, 255)
ESPBlue.TextSize = 15.000

ESPGreen.Name = "ESPGreen"
ESPGreen.Parent = ScrLegit
ESPGreen.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
ESPGreen.BackgroundTransparency = 0.650
ESPGreen.Position = UDim2.new(0.0170940179, 0, 0.242104799, 0)
ESPGreen.Size = UDim2.new(0, 125, 0, 20)
ESPGreen.Font = Enum.Font.ArialBold
ESPGreen.Text = "ESP Green Color"
ESPGreen.TextColor3 = Color3.fromRGB(0, 255, 0)
ESPGreen.TextSize = 15.000

ESPRed.Name = "ESPRed"
ESPRed.Parent = ScrLegit
ESPRed.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
ESPRed.BackgroundTransparency = 0.650
ESPRed.Position = UDim2.new(0.0170940179, 0, 0.190104797, 0)
ESPRed.Size = UDim2.new(0, 125, 0, 20)
ESPRed.Font = Enum.Font.ArialBold
ESPRed.Text = "ESP Red Color"
ESPRed.TextColor3 = Color3.fromRGB(255, 0, 0)
ESPRed.TextSize = 15.000

ESPWhite.Name = "ESPWhite"
ESPWhite.Parent = ScrLegit
ESPWhite.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
ESPWhite.BackgroundTransparency = 0.650
ESPWhite.Position = UDim2.new(0.0170940179, 0, 0.296104789, 0)
ESPWhite.Size = UDim2.new(0, 125, 0, 20)
ESPWhite.Font = Enum.Font.ArialBold
ESPWhite.Text = "ESP White Color"
ESPWhite.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPWhite.TextSize = 15.000

ScrRage.Name = "ScrRage"
ScrRage.Parent = Area
ScrRage.Active = true
ScrRage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrRage.BackgroundTransparency = 1.000
ScrRage.BorderColor3 = Color3.fromRGB(255, 0, 0)
ScrRage.Position = UDim2.new(0.197777778, 0, 0.224000007, 0)
ScrRage.Size = UDim2.new(0, 351, 0, 187)
ScrRage.Visible = false

Credits_2.Name = "Credits"
Credits_2.Parent = Area
Credits_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits_2.BackgroundTransparency = 1.000
Credits_2.Position = UDim2.new(0.184444442, 0, 0.216000006, 0)
Credits_2.Size = UDim2.new(0, 339, 0, 196)

ScrVisual.Name = "ScrVisual"
ScrVisual.Parent = Area
ScrVisual.Active = true
ScrVisual.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrVisual.BackgroundTransparency = 1.000
ScrVisual.BorderColor3 = Color3.fromRGB(255, 0, 0)
ScrVisual.Position = UDim2.new(0.197777778, 0, 0.224000007, 0)
ScrVisual.Size = UDim2.new(0, 351, 0, 187)

_3PSN.Name = "3PSN"
_3PSN.Parent = ScrVisual
_3PSN.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
_3PSN.BackgroundTransparency = 0.500
_3PSN.Position = UDim2.new(0.0170940179, 0, 0.0201283395, 0)
_3PSN.Size = UDim2.new(0, 125, 0, 50)
_3PSN.Font = Enum.Font.ArialBold
_3PSN.Text = "TPS: Off"
_3PSN.TextColor3 = Color3.fromRGB(255, 0, 0)
_3PSN.TextSize = 20.000

AntiAim.Name = "AntiAim"
AntiAim.Parent = ScrVisual
AntiAim.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
AntiAim.BackgroundTransparency = 0.500
AntiAim.Position = UDim2.new(0.455840468, 0, 0.0241283402, 0)
AntiAim.Size = UDim2.new(0, 125, 0, 50)
AntiAim.Font = Enum.Font.ArialBold
AntiAim.Text = "Anti Aim: Off"
AntiAim.TextColor3 = Color3.fromRGB(255, 0, 0)
AntiAim.TextSize = 20.000

Visual.Name = "Visual"
Visual.Parent = Area
Visual.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
Visual.BackgroundTransparency = 0.500
Visual.Position = UDim2.new(0.602222204, 0, 0.0516748056, 0)
Visual.Size = UDim2.new(0, 66, 0, 26)
Visual.Font = Enum.Font.Code
Visual.Text = "Visual"
Visual.TextColor3 = Color3.fromRGB(255, 0, 0)
Visual.TextSize = 20.000
Visual.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Visual.TextStrokeTransparency = 1.500
Visual.TextWrapped = true

-- Scripts:

local function MNBRNIU_fake_script() -- Legit.LocalScript 
	local script = Instance.new('LocalScript', Legit)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.ScrVisual.Visible = false
		script.Parent.Parent.ScrRage.Visible = false
		script.Parent.Parent.ScrLegit.Visible = true
	end)
end
coroutine.wrap(MNBRNIU_fake_script)()
local function JYLF_fake_script() -- Rage.LocalScript 
	local script = Instance.new('LocalScript', Rage)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.ScrVisual.Visible = false
		script.Parent.Parent.ScrLegit.Visible = false
		script.Parent.Parent.ScrRage.Visible = true
	end)
end
coroutine.wrap(JYLF_fake_script)()
local function NOTTINM_fake_script() -- ScrLegit.ESPButtons 
	local script = Instance.new('LocalScript', ScrLegit)

	local espbtn = script.Parent.ESP
	local espblue = script.Parent.ESPBlue
	local espred = script.Parent.ESPRed
	local espgreen = script.Parent.ESPGreen
	local espwhite = script.Parent.ESPWhite
	espc = Color3.fromRGB(255, 0, 0)
	
	
	espblue.MouseButton1Click:Connect(function()
		espc = Color3.fromRGB(0, 100, 255)
	end)
	espgreen.MouseButton1Click:Connect(function()
		espc = Color3.fromRGB(0, 255, 0)
	end)
	espred.MouseButton1Click:Connect(function()
		espc = Color3.fromRGB(255, 0, 32)
	end)
	espwhite.MouseButton1Click:Connect(function()
		espc = Color3.fromRGB(255, 255, 255)
	end)
	
	_G.chams = false
	local Players = game:GetService("Players") -- variable to get the players in the game
	
	espbtn.MouseButton1Click:Connect(function()
		if _G.chams == false then
			_G.chams = true
			espbtn.Text = "ESP:On"
			espbtn.TextColor3 = Color3.fromRGB(0, 255, 0)
			--- Chams
			function CreateGui(name,parent,face) -- function that creates the Chams
				local SurfaceGui = Instance.new("SurfaceGui",parent) --- Creates a SurfaceGui in the game
				SurfaceGui.Parent = parent
				SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				SurfaceGui.Face = Enum.NormalId[face]
				SurfaceGui.LightInfluence = 0
				SurfaceGui.ResetOnSpawn = false
				SurfaceGui.Name = name
				SurfaceGui.AlwaysOnTop = true
				local Frame = Instance.new("Frame",SurfaceGui)
				Frame.BackgroundColor3 = espc -- colour for the surfacgui
				Frame.Size = UDim2.new(1,0,1,0)
			end
	
			while wait(1) do
				for i,v in pairs (Players:GetPlayers()) do --- gets all the players in the game and loops through them
					if v ~= Players.LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("Head") and _G.chams and v.Character.Head:FindFirstChild("cham") == nil and v.TeamColor ~= Players.LocalPlayer.TeamColor then --- Checks to check if the player is appropiate to make a cham
						for i,v in pairs (v.Character:GetChildren()) do -- looping through every child in the character of the player
							if v:IsA("MeshPart") or v.Name == "Head" then -- checking if the child is a body part
								CreateGui("cham",v,"Back")
								CreateGui("cham",v,"Front")
								CreateGui("cham",v,"Top")
								CreateGui("cham",v,"Bottom")
								CreateGui("cham",v,"Right")
								CreateGui("cham",v,"Left")
							end
						end
	
					end
				end
			end
		else 
			_G.chams = false
			espbtn.Text = "ESP:Off"
			espbtn.TextColor3 = Color3.fromRGB(255, 0, 0)
		end
	end)
	
end
coroutine.wrap(NOTTINM_fake_script)()
local function WORBEQN_fake_script() -- _3PSN.LocalScript 
	local script = Instance.new('LocalScript', _3PSN)

	tps = false
	script.Parent.MouseButton1Click:Connect(function()
		if tps == false then
			tps = true
			script.Parent.Text = "TPS:On"
			while wait(0) do
		game.Players.LocalPlayer.CameraMaxZoomDistance = 10
		game.Players.LocalPlayer.CameraMinZoomDistance = 10
			game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
				script.Parent.TextColor3 = Color3.fromRGB(0, 255, 0)
				if tps == false then
					break
				end
				end
		elseif tps == true then
			tps = false
			script.Parent.Text = "TPS:Off"
			game.Players.LocalPlayer.CameraMaxZoomDistance = 0.5
			game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
			game.Players.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
			script.Parent.TextColor3 = Color3.fromRGB(255,0,0)
		end
	end)
end
coroutine.wrap(WORBEQN_fake_script)()
local function EKOUL_fake_script() -- AntiAim.LocalScript 
	local script = Instance.new('LocalScript', AntiAim)

	aaim = false
	script.Parent.MouseButton1Click:Connect(function()
		if aaim == false then
			aaim = true
			script.Parent.Text = "Anti Aim:On"
			script.Parent.TextColor3 = Color3.fromRGB(0, 255, 0)
		elseif aaim == true then
			aaim = false
			script.Parent.Text = "Anti Aim:Off"
			script.Parent.TextColor3 = Color3.fromRGB(255,0 ,0)
		end
	end)
	
	game.RunService.Stepped:Connect(function()
		if aaim == true then
		game:GetService("ReplicatedStorage").Events.ControlTurn:FireServer(math.random(-1000,1000))
		end	
	end)
	
end
coroutine.wrap(EKOUL_fake_script)()
local function SRJEU_fake_script() -- Visual.LocalScript 
	local script = Instance.new('LocalScript', Visual)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.ScrLegit.Visible = false
		script.Parent.Parent.ScrRage.Visible = false
		script.Parent.Parent.ScrVisual.Visible = true
	end)
end
coroutine.wrap(SRJEU_fake_script)()
local function ROYLBH_fake_script() -- EasiestAce.LocalScript 
	local script = Instance.new('LocalScript', EasiestAce)

	local UIS = game:GetService("UserInputService")
	UIS.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode == Enum.KeyCode.Insert then
			if game.Players.LocalPlayer.PlayerGui.EasiestAce.Area.Visible == true then -- chati kapama
				game.Players.LocalPlayer.PlayerGui.EasiestAce.Area.Visible = false
			else
				if game.Players.LocalPlayer.PlayerGui.EasiestAce.Area.Visible == false then
					game.Players.LocalPlayer.PlayerGui.EasiestAce.Area.Visible = true
				end
			end
		end
	end)
	
	
	if script.Parent.Area.Visible == true then
		script.Disabled = false
	end
	if script.parent.Area.Visible == false then
		script.Disabled = true
	end
	
	frame = script.Parent.Area
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(ROYLBH_fake_script)()
