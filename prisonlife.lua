-- Krea Prison Life Gui
-- Version: v1.2

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
local m9 = Instance.new("TextButton")
local reming = Instance.new("TextButton")
local ak47 = Instance.new("TextButton")
local m4a1 = Instance.new("TextButton")
local riot = Instance.new("TextButton")
local arrest = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Arrestpp = Instance.new("Frame")
local pplname = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local arrestppl = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0283286106, 0, 0.253012061, 0)
Frame.Size = UDim2.new(0, 104, 0, 263)
Frame.Style = Enum.FrameStyle.DropShadow

Krea.Name = "Krea"
Krea.Parent = Frame
Krea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Krea.BackgroundTransparency = 1.000
Krea.Position = UDim2.new(0.0768092275, 0, -0.0314037502, 0)
Krea.Size = UDim2.new(0, 77, 0, 28)
Krea.Font = Enum.Font.DenkOne
Krea.Text = "KREA"
Krea.TextColor3 = Color3.fromRGB(255, 255, 255)
Krea.TextSize = 14.000

doorer.Name = "doorer"
doorer.Parent = Frame
doorer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
doorer.Position = UDim2.new(-0.0384615362, 0, 0.149566799, 0)
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
PRISONLIFE.Position = UDim2.new(0.207015321, 0, 0.0547356531, 0)
PRISONLIFE.Size = UDim2.new(0, 44, 0, 23)
PRISONLIFE.Font = Enum.Font.DenkOne
PRISONLIFE.Text = "PRISON LIFE"
PRISONLIFE.TextColor3 = Color3.fromRGB(255, 255, 255)
PRISONLIFE.TextSize = 14.000

guard.Name = "guard"
guard.Parent = Frame
guard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
guard.Position = UDim2.new(-0.0288461521, 0, 0.231746793, 0)
guard.Size = UDim2.new(0, 96, 0, 18)
guard.Style = Enum.ButtonStyle.RobloxButton
guard.Font = Enum.Font.RobotoMono
guard.Text = "TP to Guard"
guard.TextColor3 = Color3.fromRGB(255, 255, 255)
guard.TextSize = 14.000

prison.Name = "prison"
prison.Parent = Frame
prison.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
prison.Position = UDim2.new(-0.0384615362, 0, 0.303758174, 0)
prison.Size = UDim2.new(0, 96, 0, 18)
prison.Style = Enum.ButtonStyle.RobloxButton
prison.Font = Enum.Font.RobotoMono
prison.Text = "TP to Prison"
prison.TextColor3 = Color3.fromRGB(255, 255, 255)
prison.TextSize = 14.000

yard.Name = "yard"
yard.Parent = Frame
yard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
yard.Position = UDim2.new(-0.0384615362, 0, 0.372999072, 0)
yard.Size = UDim2.new(0, 96, 0, 18)
yard.Style = Enum.ButtonStyle.RobloxButton
yard.Font = Enum.Font.RobotoMono
yard.Text = "TP to Yard"
yard.TextColor3 = Color3.fromRGB(255, 255, 255)
yard.TextSize = 14.000

crim.Name = "crim"
crim.Parent = Frame
crim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
crim.Position = UDim2.new(-0.0288461521, 0, 0.446424127, 0)
crim.Size = UDim2.new(0, 96, 0, 18)
crim.Style = Enum.ButtonStyle.RobloxButton
crim.Font = Enum.Font.RobotoMono
crim.Text = "TP to CrmBase"
crim.TextColor3 = Color3.fromRGB(255, 255, 255)
crim.TextSize = 14.000

m9.Name = "m9"
m9.Parent = Frame
m9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m9.Position = UDim2.new(-0.0288461521, 0, 0.521737933, 0)
m9.Size = UDim2.new(0, 96, 0, 18)
m9.Style = Enum.ButtonStyle.RobloxButton
m9.Font = Enum.Font.RobotoMono
m9.Text = "Give M9"
m9.TextColor3 = Color3.fromRGB(255, 255, 255)
m9.TextSize = 14.000

reming.Name = "reming"
reming.Parent = Frame
reming.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
reming.Position = UDim2.new(-0.0288461521, 0, 0.59705174, 0)
reming.Size = UDim2.new(0, 96, 0, 18)
reming.Style = Enum.ButtonStyle.RobloxButton
reming.Font = Enum.Font.RobotoMono
reming.Text = "Give Remington"
reming.TextColor3 = Color3.fromRGB(255, 255, 255)
reming.TextSize = 14.000

ak47.Name = "ak47"
ak47.Parent = Frame
ak47.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ak47.Position = UDim2.new(-0.0288461521, 0, 0.672365546, 0)
ak47.Size = UDim2.new(0, 96, 0, 18)
ak47.Style = Enum.ButtonStyle.RobloxButton
ak47.Font = Enum.Font.RobotoMono
ak47.Text = "Give AK-47"
ak47.TextColor3 = Color3.fromRGB(255, 255, 255)
ak47.TextSize = 14.000

m4a1.Name = "m4a1"
m4a1.Parent = Frame
m4a1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m4a1.Position = UDim2.new(-0.0384615362, 0, 0.747679353, 0)
m4a1.Size = UDim2.new(0, 96, 0, 18)
m4a1.Style = Enum.ButtonStyle.RobloxButton
m4a1.Font = Enum.Font.RobotoMono
m4a1.Text = "Give M4A1"
m4a1.TextColor3 = Color3.fromRGB(255, 255, 255)
m4a1.TextSize = 14.000

riot.Name = "riot"
riot.Parent = Frame
riot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
riot.Position = UDim2.new(-0.0480769202, 0, 0.822993159, 0)
riot.Size = UDim2.new(0, 96, 0, 18)
riot.Style = Enum.ButtonStyle.RobloxButton
riot.Font = Enum.Font.RobotoMono
riot.Text = "Give RiotShield"
riot.TextColor3 = Color3.fromRGB(255, 255, 255)
riot.TextSize = 14.000

arrest.Name = "arrest"
arrest.Parent = Frame
arrest.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
arrest.Position = UDim2.new(-0.0384615362, 0, 0.891434193, 0)
arrest.Size = UDim2.new(0, 96, 0, 18)
arrest.Style = Enum.ButtonStyle.RobloxButton
arrest.Font = Enum.Font.RobotoMono
arrest.Text = "Arrest RNDM"
arrest.TextColor3 = Color3.fromRGB(255, 255, 255)
arrest.TextSize = 14.000
arrest.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.144230768, 0, -0.220532313, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Reset to stop Arresting"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000
TextLabel.TextStrokeTransparency = 0.000

Arrestpp.Name = "Arrestpp"
Arrestpp.Parent = ScreenGui
Arrestpp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Arrestpp.Position = UDim2.new(0.133061752, 0, 0.488332301, 0)
Arrestpp.Size = UDim2.new(0, 169, 0, 171)
Arrestpp.Style = Enum.FrameStyle.DropShadow

pplname.Name = "pplname"
pplname.Parent = Arrestpp
pplname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pplname.BackgroundTransparency = 0.650
pplname.Position = UDim2.new(0.041420117, 0, 0.465277761, 0)
pplname.Size = UDim2.new(0, 139, 0, 50)
pplname.Font = Enum.Font.SpecialElite
pplname.Text = ""
pplname.TextColor3 = Color3.fromRGB(0, 0, 0)
pplname.TextSize = 14.000

TextLabel_2.Parent = Arrestpp
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.0118343197, 0, -0.0178761631, 0)
TextLabel_2.Size = UDim2.new(0, 158, 0, 76)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "ARREST PEOPLE"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 30.000
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextWrapped = true

arrestppl.Name = "arrestppl"
arrestppl.Parent = Arrestpp
arrestppl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
arrestppl.BackgroundTransparency = 0.500
arrestppl.Position = UDim2.new(0.213017747, 0, 0.801169574, 0)
arrestppl.Size = UDim2.new(0, 83, 0, 29)
arrestppl.Font = Enum.Font.SourceSans
arrestppl.Text = "Arrest"
arrestppl.TextColor3 = Color3.fromRGB(255, 255, 255)
arrestppl.TextSize = 20.000

-- Scripts:

local function NJVULVB_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	local crimtm = game.Teams.Criminals 
	local door = game.Workspace.Doors
	local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
	
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
	m4a1.MouseButton1Click:connect(function()
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
	end)
	m9.MouseButton1Click:connect(function()
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	end)
	reming.MouseButton1Click:connect(function()
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	end)
	ak47.MouseButton1Click:connect(function()
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
	end)
	riot.MouseButton1Click:connect(function()
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
	end)
	
	arrest.MouseButton1Click:connect(function()
		while true do
			local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
			local rndmplr = crimtm:GetPlayers()[math.random(1, #crimtm:GetPlayers())]
			plr.CFrame = rndmplr.Character.HumanoidRootPart.CFrame
			game.Workspace.Remote.arrest:InvokeServer(rndmplr.Character.HumanoidRootPart)
			wait(0.1)
			if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
				break
			end
		end
	end)
	
	
		frame = script.Parent.Frame
		frame.Draggable = true
		frame.Active = true
		frame.Selectable = true
	
		frame2 = script.Parent.Arrestpp
		frame2.Draggable = true
		frame2.Active = true
		frame2.Selectable = true
	
	-- Arrest People
	
	arrestppl.MouseButton1Click:connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[script.Parent.Arrestpp.pplname.Text].Character.HumanoidRootPart.CFrame
		game.Workspace.Remote.arrest:InvokeServer(game.Players[script.Parent.Arrestpp.pplname.Text].Character.HumanoidRootPart)
	end)
	
end
coroutine.wrap(NJVULVB_fake_script)()
