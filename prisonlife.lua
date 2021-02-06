-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Krea = Instance.new("TextLabel")
local doorer = Instance.new("TextButton")
local PRISONLIFE = Instance.new("TextLabel")
local guard = Instance.new("TextButton")
local prison = Instance.new("TextButton")
local yard = Instance.new("TextButton")
local crim = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0283286124, 0, 0.253012061, 0)
Frame.Size = UDim2.new(0, 104, 0, 130)
Frame.Style = Enum.FrameStyle.DropShadow

Krea.Name = "Krea"
Krea.Parent = Frame
Krea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Krea.BackgroundTransparency = 1.000
Krea.Position = UDim2.new(0.0576923117, 0, -0.143645778, 0)
Krea.Size = UDim2.new(0, 77, 0, 48)
Krea.Font = Enum.Font.DenkOne
Krea.Text = "KREA"
Krea.TextColor3 = Color3.fromRGB(255, 255, 255)
Krea.TextSize = 14.000

doorer.Name = "doorer"
doorer.Parent = Frame
doorer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
doorer.Position = UDim2.new(-0.0384615362, 0, 0.274505854, 0)
doorer.Size = UDim2.new(0, 96, 0, 18)
doorer.Style = Enum.ButtonStyle.RobloxButton
doorer.Font = Enum.Font.RobotoMono
doorer.Text = "Delete Doors"
doorer.TextColor3 = Color3.fromRGB(255, 255, 255)
doorer.TextSize = 14.000

PRISONLIFE.Name = "PRISON LIFE"
PRISONLIFE.Parent = Frame
PRISONLIFE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PRISONLIFE.BackgroundTransparency = 1.000
PRISONLIFE.Position = UDim2.new(0.239550367, 0, 0.0244044363, 0)
PRISONLIFE.Size = UDim2.new(0, 45, 0, 39)
PRISONLIFE.Font = Enum.Font.DenkOne
PRISONLIFE.Text = "PRISON LIFE"
PRISONLIFE.TextColor3 = Color3.fromRGB(255, 255, 255)
PRISONLIFE.TextSize = 14.000

guard.Name = "guard"
guard.Parent = Frame
guard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
guard.Position = UDim2.new(-0.0384615362, 0, 0.428351998, 0)
guard.Size = UDim2.new(0, 96, 0, 18)
guard.Style = Enum.ButtonStyle.RobloxButton
guard.Font = Enum.Font.RobotoMono
guard.Text = "TP to Guard"
guard.TextColor3 = Color3.fromRGB(255, 255, 255)
guard.TextSize = 14.000

prison.Name = "prison"
prison.Parent = Frame
prison.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
prison.Position = UDim2.new(-0.0384615362, 0, 0.566813529, 0)
prison.Size = UDim2.new(0, 96, 0, 18)
prison.Style = Enum.ButtonStyle.RobloxButton
prison.Font = Enum.Font.RobotoMono
prison.Text = "TP to Prison"
prison.TextColor3 = Color3.fromRGB(255, 255, 255)
prison.TextSize = 14.000

yard.Name = "yard"
yard.Parent = Frame
yard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
yard.Position = UDim2.new(-0.0384615362, 0, 0.705275059, 0)
yard.Size = UDim2.new(0, 96, 0, 18)
yard.Style = Enum.ButtonStyle.RobloxButton
yard.Font = Enum.Font.RobotoMono
yard.Text = "TP to Yard"
yard.TextColor3 = Color3.fromRGB(255, 255, 255)
yard.TextSize = 14.000

crim.Name = "crim"
crim.Parent = Frame
crim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
crim.Position = UDim2.new(-0.0384615362, 0, 0.843736589, 0)
crim.Size = UDim2.new(0, 96, 0, 18)
crim.Style = Enum.ButtonStyle.RobloxButton
crim.Font = Enum.Font.RobotoMono
crim.Text = "TP to CrmBase"
crim.TextColor3 = Color3.fromRGB(255, 255, 255)
crim.TextSize = 14.000

-- Scripts:

local function QZOZSA_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	local doors = game.Workspace.Doors
	
	-- Gui to Lua
	-- Version: 3.2
	
	-- Instances:
	
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Krea = Instance.new("TextLabel")
	local doorer = Instance.new("TextButton")
	local PRISONLIFE = Instance.new("TextLabel")
	local guard = Instance.new("TextButton")
	local prison = Instance.new("TextButton")
	local yard = Instance.new("TextButton")
	local crim = Instance.new("TextButton")
	
	--Properties:
	
	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.Position = UDim2.new(0.0283286124, 0, 0.253012061, 0)
	Frame.Size = UDim2.new(0, 104, 0, 130)
	Frame.Style = Enum.FrameStyle.DropShadow
	
	Krea.Name = "Krea"
	Krea.Parent = Frame
	Krea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Krea.BackgroundTransparency = 1.000
	Krea.Position = UDim2.new(0.0576923117, 0, -0.143645778, 0)
	Krea.Size = UDim2.new(0, 77, 0, 48)
	Krea.Font = Enum.Font.DenkOne
	Krea.Text = "KREA"
	Krea.TextColor3 = Color3.fromRGB(255, 255, 255)
	Krea.TextSize = 14.000
	
	doorer.Name = "doorer"
	doorer.Parent = Frame
	doorer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	doorer.Position = UDim2.new(-0.0384615362, 0, 0.274505854, 0)
	doorer.Size = UDim2.new(0, 96, 0, 18)
	doorer.Style = Enum.ButtonStyle.RobloxButton
	doorer.Font = Enum.Font.RobotoMono
	doorer.Text = "Delete Doors"
	doorer.TextColor3 = Color3.fromRGB(255, 255, 255)
	doorer.TextSize = 14.000
	
	PRISONLIFE.Name = "PRISON LIFE"
	PRISONLIFE.Parent = Frame
	PRISONLIFE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PRISONLIFE.BackgroundTransparency = 1.000
	PRISONLIFE.Position = UDim2.new(0.239550367, 0, 0.0244044363, 0)
	PRISONLIFE.Size = UDim2.new(0, 45, 0, 39)
	PRISONLIFE.Font = Enum.Font.DenkOne
	PRISONLIFE.Text = "PRISON LIFE"
	PRISONLIFE.TextColor3 = Color3.fromRGB(255, 255, 255)
	PRISONLIFE.TextSize = 14.000
	
	guard.Name = "guard"
	guard.Parent = Frame
	guard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	guard.Position = UDim2.new(-0.0384615362, 0, 0.428351998, 0)
	guard.Size = UDim2.new(0, 96, 0, 18)
	guard.Style = Enum.ButtonStyle.RobloxButton
	guard.Font = Enum.Font.RobotoMono
	guard.Text = "TP to Guard"
	guard.TextColor3 = Color3.fromRGB(255, 255, 255)
	guard.TextSize = 14.000
	
	prison.Name = "prison"
	prison.Parent = Frame
	prison.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	prison.Position = UDim2.new(-0.0384615362, 0, 0.566813529, 0)
	prison.Size = UDim2.new(0, 96, 0, 18)
	prison.Style = Enum.ButtonStyle.RobloxButton
	prison.Font = Enum.Font.RobotoMono
	prison.Text = "TP to Prison"
	prison.TextColor3 = Color3.fromRGB(255, 255, 255)
	prison.TextSize = 14.000
	
	yard.Name = "yard"
	yard.Parent = Frame
	yard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	yard.Position = UDim2.new(-0.0384615362, 0, 0.705275059, 0)
	yard.Size = UDim2.new(0, 96, 0, 18)
	yard.Style = Enum.ButtonStyle.RobloxButton
	yard.Font = Enum.Font.RobotoMono
	yard.Text = "TP to Yard"
	yard.TextColor3 = Color3.fromRGB(255, 255, 255)
	yard.TextSize = 14.000
	
	crim.Name = "crim"
	crim.Parent = Frame
	crim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	crim.Position = UDim2.new(-0.0384615362, 0, 0.843736589, 0)
	crim.Size = UDim2.new(0, 96, 0, 18)
	crim.Style = Enum.ButtonStyle.RobloxButton
	crim.Font = Enum.Font.RobotoMono
	crim.Text = "TP to CrmBase"
	crim.TextColor3 = Color3.fromRGB(255, 255, 255)
	crim.TextSize = 14.000
	
	-- Scripts:
	
	local function RLHMKK_fake_script() -- ScreenGui.Script 
		local script = Instance.new('Script', ScreenGui)
	
		local door = game.Workspace.Doors
	
		doorer.MouseButton1Down:connect(function()
			for i,v in pairs(door:GetChildren()) do
				v:Destroy()		
			end	
		end)
		guard.MouseButton1Click:connect(function()
			local char = game.Players.LocalPlayer.Character -- get character from player
			char.HumanoidRootPart.CFrame = CFrame.new(855, 102, 2279) -- enter your own
		end)
	
		prison.MouseButton1Click:connect(function()
			local char = game.Players.LocalPlayer.Character -- get character from player
			char.HumanoidRootPart.CFrame = CFrame.new(884, 99, 2391) -- enter your own
		end)
		yard.MouseButton1Click:connect(function()
			local char = game.Players.LocalPlayer.Character -- get character from player
			char.HumanoidRootPart.CFrame = CFrame.new(826, 98, 2415) -- enter your own
		end)
		crim.MouseButton1Click:connect(function()
			local char = game.Players.LocalPlayer.Character -- get character from player
			char.HumanoidRootPart.CFrame = CFrame.new(-961, 103, 2053) -- enter your own
		end)
	
		frame = script.Parent.Frame
		frame.Draggable = true
		frame.Active = true
		frame.Selectable = true
	end
	coroutine.wrap(RLHMKK_fake_script)()
	
	guard.MouseButton1Click:connect(function()
		local char = game.Players.LocalPlayer.Character -- get character from player
		char.HumanoidRootPart.CFrame = CFrame.new(855, 102, 2279) -- enter your own
	end)
	
	prison.MouseButton1Click:connect(function()
		local char = game.Players.LocalPlayer.Character -- get character from player
		char.HumanoidRootPart.CFrame = CFrame.new(884, 99, 2391) -- enter your own
	end)
	yard.MouseButton1Click:connect(function()
		local char = game.Players.LocalPlayer.Character -- get character from player
		char.HumanoidRootPart.CFrame = CFrame.new(826, 98, 2415) -- enter your own
	end)
	crim.MouseButton1Click:connect(function()
		local char = game.Players.LocalPlayer.Character -- get character from player
		char.HumanoidRootPart.CFrame = CFrame.new(-961, 103, 2053) -- enter your own
	end)
	
	frame = script.Parent.Frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(QZOZSA_fake_script)()
