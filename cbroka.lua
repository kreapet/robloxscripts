-- Krea CB:RO Kill ALL Script
-- Version: 1.0

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local killall = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.500
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.0221550856, 0, 0.177290842, 0)
Frame.Size = UDim2.new(0, 116, 0, 136)
Frame.ZIndex = 999

killall.Name = "killall"
killall.Parent = Frame
killall.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
killall.BackgroundTransparency = 0.900
killall.Position = UDim2.new(0.0978925079, 0, 0.481070578, 0)
killall.Size = UDim2.new(0, 92, 0, 64)
killall.Font = Enum.Font.SpecialElite
killall.Text = "Kill"
killall.TextColor3 = Color3.fromRGB(255, 255, 255)
killall.TextSize = 14.000
killall.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0878572166, 0, 0.123066336, 0)
TextLabel.Size = UDim2.new(0, 95, 0, 35)
TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = "Krea Kill All CBRO"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true

-- Scripts:

local function FUHWWLI_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	killall.MouseButton1Click:connect(function()
		local Remote = game.ReplicatedStorage.Events['HitPart']
	
		for _,v in pairs(game:GetService"Players":GetChildren()) do
			if v.Team ~= game.Players.LocalPlayer.Team then
				if v.Character and v.Character.Head then
					local Arguments = {
						[1] = workspace[v.Name].Head,
						[2] = workspace[v.Name].Head.Position,
						[3] = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value,
						[4] = math.rad(1,100000),
						[5] = workspace[game.Players.LocalPlayer.Name].Gun,
						[8] = 8, --damage multiplier
						[9] = false,
						[10] = false,
						[11] = Vector3.new(),
						[12] = math.rad(1,100000),
						[13] = Vector3.new()
					}
	
					Remote:FireServer(unpack(Arguments))
				end
			end
		end
	end)
	
	frame = script.Parent.Frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(FUHWWLI_fake_script)()
