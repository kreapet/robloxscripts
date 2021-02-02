-- Krea PRISON LIFE HACK
-- Version: v1.0

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Krea = Instance.new("TextLabel")
local doorer = Instance.new("TextButton")
local JailGui = Instance.new("TextLabel")
local tpguard = Instance.new("TextButton")
local tpyard = Instance.new("TextButton")
local tpprison = Instance.new("TextButton")
local tpcriminal = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0283286106, 0, 0.253012091, 0)
Frame.Size = UDim2.new(0, 104, 0, 248)
Frame.Style = Enum.FrameStyle.DropShadow

Krea.Name = "Krea"
Krea.Parent = Frame
Krea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Krea.BackgroundTransparency = 1.000
Krea.Position = UDim2.new(0.0576923117, 0, -0.042839326, 0)
Krea.Size = UDim2.new(0, 77, 0, 48)
Krea.Font = Enum.Font.DenkOne
Krea.Text = "KREA"
Krea.TextColor3 = Color3.fromRGB(255, 255, 255)
Krea.TextSize = 14.000

doorer.Name = "doorer"
doorer.Parent = Frame
doorer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
doorer.Position = UDim2.new(-0.0576923043, 0, 0.169667155, 0)
doorer.Size = UDim2.new(0, 96, 0, 18)
doorer.Style = Enum.ButtonStyle.RobloxButton
doorer.Font = Enum.Font.Sarpanch
doorer.Text = "Delete Doors"
doorer.TextColor3 = Color3.fromRGB(255, 255, 255)
doorer.TextSize = 14.000

JailGui.Name = "Jail Gui"
JailGui.Parent = Frame
JailGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JailGui.BackgroundTransparency = 1.000
JailGui.Position = UDim2.new(0.229934976, 0, 0.0405334681, 0)
JailGui.Size = UDim2.new(0, 45, 0, 39)
JailGui.Font = Enum.Font.DenkOne
JailGui.Text = "JAIL GUI"
JailGui.TextColor3 = Color3.fromRGB(255, 255, 255)
JailGui.TextSize = 14.000

tpguard.Name = "tpguard"
tpguard.Parent = Frame
tpguard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tpguard.Position = UDim2.new(-0.0576923043, 0, 0.254964888, 0)
tpguard.Size = UDim2.new(0, 96, 0, 18)
tpguard.Style = Enum.ButtonStyle.RobloxButton
tpguard.Font = Enum.Font.Sarpanch
tpguard.Text = "TP Guard Room"
tpguard.TextColor3 = Color3.fromRGB(255, 255, 255)
tpguard.TextSize = 14.000

tpyard.Name = "tpyard"
tpyard.Parent = Frame
tpyard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tpyard.Position = UDim2.new(-0.0576923043, 0, 0.335610032, 0)
tpyard.Size = UDim2.new(0, 96, 0, 18)
tpyard.Style = Enum.ButtonStyle.RobloxButton
tpyard.Font = Enum.Font.Sarpanch
tpyard.Text = "TP to Yard"
tpyard.TextColor3 = Color3.fromRGB(255, 255, 255)
tpyard.TextSize = 14.000

tpprison.Name = "tpprison"
tpprison.Parent = Frame
tpprison.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tpprison.Position = UDim2.new(-0.0673076883, 0, 0.408190668, 0)
tpprison.Size = UDim2.new(0, 96, 0, 18)
tpprison.Style = Enum.ButtonStyle.RobloxButton
tpprison.Font = Enum.Font.Sarpanch
tpprison.Text = "TP Inside Prison"
tpprison.TextColor3 = Color3.fromRGB(255, 255, 255)
tpprison.TextSize = 14.000

tpcriminal.Name = "tpcriminal"
tpcriminal.Parent = Frame
tpcriminal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tpcriminal.Position = UDim2.new(-0.0673076883, 0, 0.480771303, 0)
tpcriminal.Size = UDim2.new(0, 96, 0, 18)
tpcriminal.Style = Enum.ButtonStyle.RobloxButton
tpcriminal.Font = Enum.Font.Sarpanch
tpcriminal.Text = "TP CRIMINAL BASE"
tpcriminal.TextColor3 = Color3.fromRGB(255, 255, 255)
tpcriminal.TextSize = 13.000

-- Scripts:

local function QOPCC_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	--guard room coord: 855, 102, 2279
	--prison coord: 884, 99, 2391
	--yard coord: 826, 98, 2415
	--criminal base: -961, 103, 2053
	
	--Locals...
	local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local door = game.Workspace.Doors
	local guardroom = CFrame.new(855, 102, 2279)
	local prison = CFrame.new(884, 99, 2391)
	local yard = CFrame.new(826, 98, 2415)
	local criminalbase = CFrame.new(-961, 103, 2053)
	
	
	--Teleport scripts..
	tpguard.MouseButton1Click:connect(function()
		pl.CFrame = guardroom
		wait(0.1)
	end)
	
	tpcriminal.MouseButton1Click:connect(function()
		pl.CFrame = criminalbase
		wait(0.1)
	end)
	
	tpyard.MouseButton1Click:connect(function()
		pl.CFrame = yard
		wait(0.1)
	end)
	
	tpprison.MouseButton1Click:connect(function()
		pl.CFrame = prison
		wait(0.1)
	end)
	
	--Door Killer Script..
	doorer.MouseButton1Down:connect(function()
	for i,v in pairs(door:GetChildren()) do
			v:Destroy()		
	end	
	end)
	-- Dragging script..
	frame = script.Parent.Frame -- Take out {}s, and put name of frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(QOPCC_fake_script)()
