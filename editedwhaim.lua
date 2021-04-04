pcall(function()
local espcolor = Color3.fromRGB(147,112,219)
local wallhack_esp_transparency = .5
local gui_hide_button = {Enum.KeyCode.LeftControl, "h"}
local plrs = game:GetService("Players")
local lplr = game:GetService("Players").LocalPlayer
local TeamBased = true ; local teambasedswitch = "o"
local presskeytoaim = true; local aimkey = "e"
aimbothider = true; aimbothiderspeed = .3
local Aim_Assist = false ; Aim_Assist_Key = {Enum.KeyCode.Delete, "z"}
local espupdatetime = 1; autoesp = true; local charmsesp = true
local movementcounting = true




local mouselock = false
local canaimat = true
local lockaim = true; local lockangle = 5
local ver = "2.4"
local cam = game.Workspace.CurrentCamera
local BetterDeathCount = true
local ballisticsboost = 0

local mouse = lplr:GetMouse()
local switch = false
local key = "k"
local aimatpart = nil
local lightesp = false

local abs = math.abs

local Gui = Instance.new("ScreenGui")
local Move = Instance.new("Frame")
local Main = Instance.new("Frame")
local EspStatus = Instance.new("TextLabel")
local st1 = Instance.new("TextLabel")
local st1_2 = Instance.new("TextLabel")
local st1_3 = Instance.new("TextBox")
local Name = Instance.new("TextLabel")
--Properties:

Gui.Parent = plrs.LocalPlayer:WaitForChild("PlayerGui")


local aimbotstatus = {"qc", "qr", "qe", "qd", "qi", "qt", "qs", "dd", "sp", "ql", "qa", "qd", "qs"}
local gotstring = 0
local function getrandomstring()
	gotstring = gotstring+666
	local str = ""
	local randomstring = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "g", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
		 "а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","о","п","р","с","т","у","ф","х","ч","щ","ъ","ы","ъ","э","ю","я", "`", "$", 
		"0","1","2","3","4","5","6","7","8","9", }
	local counting123 = 0
	for i, v in ipairs(randomstring) do
		counting123 = i
	end
	do
		math.randomseed(tick()+gotstring)
		for i = 3, math.random(1,100) do
				math.randomseed(i+tick()+gotstring)
				
				local oneortwo = math.random(1,2)
				if oneortwo == 2 then
					math.randomseed(i+tick()+gotstring)
					str = str..""..randomstring[math.random(1, counting123)]
				else
					math.randomseed(i+tick()+gotstring)
					str = str..""..string.upper(randomstring[math.random(1, counting123)])
				end
			
		end
	end
	return str
end
local mousedown = false
local isonmovething = false
local mouseoffset = Vector2.new()
local mousedown = false
local bspeed = 3584
local aimbotoffset = {dd = ":", sp = " ", qa = "a", qb = "b",qc = "c", qd = "d", qe = "e", qf = "f", qg = "g" , qh = "h" , qi = "i", qj = "j", qk = "k", ql = "l", qm = "m", qn = "n", qo = "o", qp = "p", qq = "q", qr = "r", qs = "s", qt = "t", qu = "u", qv = "w", qx = "x", qy = "y", qz = "z"}



Gui.Name = getrandomstring()

Move.Name = getrandomstring()
Move.Draggable = true
Move.Parent = Gui
Move.BackgroundColor3 = Color3.new(0.0431373, 1, 0.0745098)
Move.BackgroundTransparency = 0.40000000596046
Move.BorderSizePixel = 0
Move.Position = UDim2.new(0.5, 0,0.018, 0)
Move.Size = UDim2.new(0, 320, 0, 30)

Move.MouseEnter:Connect(function()
	
	isonmovething = true
	
end)
Move.MouseLeave:Connect(function()
	
	isonmovething = mousedown and true or false
end)
mouse.Button1Down:connect(function()
	mousedown = true
	mouseoffset = Move.AbsolutePosition - Vector2.new(mouse.X, mouse.Y)
end)
mouse.Button1Up:connect(function()
	mousedown = false
end)

mouse.Move:Connect(function()
	if isonmovething == true and mousedown then
		Move.Position = UDim2.new(0, mouseoffset.X + mouse.X, 0, mouseoffset.Y + mouse.Y)
	end
end)
local function uc (st)
	local ast = ""
	for i, v in ipairs(st) do
		local let = aimbotoffset[v]
		ast = ast..let
	end
	return ast
end

Main.Name = getrandomstring()
Main.Parent = Move
Main.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Main.BackgroundTransparency = 0.69999998807907
Main.Position = UDim2.new(0, 0, 0.995670795, 0)
Main.Size = UDim2.new(1.0000006, 0, 11.2, 0)

st1.Name = getrandomstring()
st1.Parent = Main
st1.BackgroundColor3 = Color3.new(1, 1, 1)
st1.BackgroundTransparency = 1
st1.Position = UDim2.new(0, 0, 0, 0)
st1.Size = UDim2.new(1, 0, 0.161862016, 0)
st1.Font = Enum.Font.ArialBold
st1.Text = uc(aimbotstatus)
st1.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1.TextScaled = true
st1.TextSize = 14
st1.TextWrapped = true

st1_2.Name = getrandomstring()
st1_2.Parent = Main
st1_2.BackgroundColor3 = Color3.new(1, 1, 1)
st1_2.BackgroundTransparency = 1
st1_2.Position = UDim2.new(0, 0, 0.375590861, 0)
st1_2.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
st1_2.Font = Enum.Font.ArialBold
st1_2.TextXAlignment = Enum.TextXAlignment.Left
st1_2.Text = "Current ballistics: 0"
st1_2.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1_2.TextScaled = true
st1_2.TextSize = 14
st1_2.TextWrapped = true

local aimbothiderbox = Instance.new("TextBox")
aimbothiderbox.Name = getrandomstring()
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
aimbothiderbox.Size = UDim2.new(1, 0,0.162, 0)
aimbothiderbox.TextScaled = true
aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
aimbothiderbox.Position = UDim2.new(0, 0,0.853, 0)
aimbothiderbox.BackgroundTransparency = 1
aimbothiderbox.Parent = Main

st1_3.Name = getrandomstring()
st1_3.Parent = Main
st1_3.BackgroundColor3 = Color3.new(1, 1, 1)
st1_3.BackgroundTransparency = 1
st1_3.Position = UDim2.new(0, 0, 0.18558608, 0)
st1_3.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
st1_3.Font = Enum.Font.ArialBold
st1_3.Text = "Bullet speed = 3584"
st1_3.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1_3.TextScaled = true
st1_3.TextSize = 14
st1_3.TextWrapped = true
local teambasedstatus = st1_3:Clone()
teambasedstatus.Parent = Main
teambasedstatus.TextScaled = true
teambasedstatus.Position = UDim2.new(0, 0,.7, 0)
teambasedstatus.Size = UDim2.new(1, 0,.1, 0)
teambasedstatus.Name = getrandomstring()
teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
local espstatustext = teambasedstatus:Clone()
espstatustext.Name = getrandomstring()
espstatustext.Position = UDim2.new(0, 0,0.58, 0)
espstatustext.Text = "Esp loop :"..tostring(autoesp)
espstatustext.Parent = Main
local hide = Instance.new("TextButton")
hide.Text = "_"
hide.BackgroundTransparency = 1
hide.TextScaled = true
hide.TextWrapped = true
hide.Size = UDim2.new(0.1, 0,1, 0)
hide.Position = UDim2.new(0.9, 0,-0.15, 0)
hide.Name = getrandomstring()
hide.Parent = Move
Name.Name = getrandomstring()
Name.Parent = Move
Name.BackgroundColor3 = Color3.new(1, 1, 1)
Name.BackgroundTransparency = 1
Name.Size = UDim2.new(0.838, 0, 1, 0)
Name.Font = Enum.Font.Arial
Name.Text = "FPS gui v"..ver
Name.TextColor3 = Color3.new(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
local scr = Instance.new("ScrollingFrame")
scr.Size = Main.Size
scr.Position = Main.Position
scr.ScrollBarThickness = 0
scr.BackgroundTransparency = 1
scr.Name = getrandomstring()
Main.Size = UDim2.new(1, 0, 1, 0)
Main.Position = UDim2.new(0,0,0,0)
Main.Parent = scr
scr.Parent = Move
startpos = Main.Position
Move.Active = true

-- Scripts:
hided = false
hide.MouseButton1Click:Connect(function()
	if hided == false then
		hided = true
		Main:TweenPosition(UDim2.new(0, 0, -1.5, 0))
	else
		hided = false
		Main:TweenPosition(startpos)
	end
end)


aimbothiderbox.FocusLost:Connect(function()
	local numb = tonumber(aimbothiderbox.Text)
	if aimbothider == true then
		aimbothiderbox.TextColor3 =Color3.fromRGB(11, 255, 19)
	else
		aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
	end
	if numb ~= nil then
		aimbothiderspeed = numb
		if aimbothider == true then
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
		else
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
		end
	else
		if aimbothider == true then
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
		else
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
		end
	end
end)


local plrsforaim = {}


Move.Draggable = true
Gui.ResetOnSpawn = false
--Gui.Name = "Chat"
Gui.DisplayOrder = 999
pcall(function()
if not game:GetService("CoreGui") then
	Gui.Parent = plrs.LocalPlayer.PlayerGui
else
	Gui.Parent = game:GetService("CoreGui")
end
end)
local espheadthing
do
local BillboardGui = Instance.new("BillboardGui")
local PName = Instance.new("TextLabel")
local Pdist = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
--Properties:
--BillboardGui.Parent = game.Workspace.Part
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 0
BillboardGui.Size = UDim2.new(0, 100, 0, 46)
BillboardGui.Name = "headoverthing"
PName.Name = "PName"
PName.Parent = BillboardGui
PName.BackgroundColor3 = espcolor
PName.BackgroundTransparency = 0.55000001192093
PName.BorderSizePixel = 0
PName.Size = UDim2.new(0, 100, 0, 23)
PName.Font = Enum.Font.SourceSans
PName.Text = "urmom"
PName.TextColor3 = Color3.new(0, 0, 0)
PName.TextScaled = true
PName.TextSize = 14
PName.TextWrapped = true
st1.Text = uc(aimbotstatus)
Pdist.Name = "Pdist"
Pdist.Parent = BillboardGui
Pdist.AnchorPoint = Vector2.new(0.5, 0)
Pdist.BackgroundColor3 = espcolor
Pdist.BackgroundTransparency = 0.55000001192093
Pdist.BorderSizePixel = 0
Pdist.Position = UDim2.new(0.5, 0, 0.5, 0)
Pdist.Size = UDim2.new(0, 70, 0, 23)
Pdist.Font = Enum.Font.SourceSans
Pdist.Text = "666"
Pdist.TextColor3 = Color3.new(0, 0, 0)
Pdist.TextScaled = true
Pdist.TextSize = 14
Pdist.TextWrapped = true

ImageLabel.Parent = BillboardGui
ImageLabel.BackgroundColor3 = Color3.new(0.298039, 1, 0)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = espcolor
ImageLabel.Position = UDim2.new(1, -15, 0.5, 0)
ImageLabel.Rotation = 180
ImageLabel.Size = UDim2.new(0, 15, 0, 23)
ImageLabel.Image = "rbxassetid://2832171824"
ImageLabel.ImageColor3 = espcolor
ImageLabel.ImageTransparency = 0.55000001192093

ImageLabel_2.Parent = BillboardGui
ImageLabel_2.BackgroundColor3 = espcolor
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.BorderColor3 = Color3.new(0.298039, 1, 0)
ImageLabel_2.Position = UDim2.new(0, 0, 0.5, 0)
ImageLabel_2.Rotation = 180
ImageLabel_2.Size = UDim2.new(0, 15, 0, 23)
ImageLabel_2.Image = "rbxassetid://2832177613"
ImageLabel_2.ImageColor3 = espcolor
ImageLabel_2.ImageTransparency = 0.55000001192093
espheadthing = BillboardGui
end



f = {}
f.UpdateHeadUI = function(v)
	
		
			if v.Adornee and v.Adornee ~= nil then
				local destr = false
				if TeamBased then
					destr = true
					local plr = plrs:GetPlayerFromCharacter(v.Adornee.Parent)
					if plr and plr.Team and plr.Team.Name ~= lplr.Team.Name then
						destr = false
					end
				end
				if lightesp == true then
					v.Pdist.TextColor3 = Color3.new(1,1,1)
					v.PName.TextColor3 = Color3.new(1,1,1)
				else
					v.Pdist.TextColor3 = Color3.new(0,0,0)
					v.PName.TextColor3 = Color3.new(0,0,0)
				end
				local d = math.floor((cam.CFrame.p - v.Adornee.CFrame.p).magnitude)
				v.Pdist.Text = tostring(d)
				if d < 14 then
					v.Enabled = false
				else
					v.Enabled = true
				end
				v.StudsOffset = Vector3.new(0,.6+d/14,0)
				if destr then
					v:Destroy()
				end
			else
				v:Destroy()
			end
		
	
end
st1.Text = uc(aimbotstatus)
local espforlder
local partconverter = Instance.new("Part")
--local headsupdatelist = {}
st1_3.FocusLost:connect(function()
	if tonumber(st1_3.Text) then
		bspeed = tonumber(st1_3.Text)
	else
		
	end
end)
f.addesp = function()
	pcall(function()
	--print("ESP ran")
	if espforlder then
		espforlder:Destroy()
		espforlder = Instance.new("Folder")
		espforlder.Parent = game.Workspace.CurrentCamera
	else
		espforlder = Instance.new("Folder")
		espforlder.Parent = game.Workspace.CurrentCamera
	end
	for i, v in pairs(espforlder:GetChildren()) do
		v:Destroy()
	end
	for _, plr in pairs(plrs:GetChildren()) do
		if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
			if TeamBased == true then
				
				if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
					pcall(function()
					local e = espforlder:FindFirstChild(plr.Name)
					if not e then
						local fold = Instance.new("Folder", espforlder)
						fold.Name = plr.Name
						
						--partconverter.BrickColor = plr.Team.Color
						--local teamc = partconverter.Color
						for i, p in pairs(plr.Character:GetChildren()) do
							if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
								if charmsesp then
								local urmom = Instance.new("BoxHandleAdornment")
								urmom.ZIndex = 10
								urmom.AlwaysOnTop = true
								urmom.Color3 = espcolor
								urmom.Size = p.Size
								urmom.Adornee = p
								urmom.Name = tick().." Ur mom has big gay"
								urmom.Transparency = wallhack_esp_transparency
								urmom.Parent = fold
								if p.Name == "Head" then
									local th = p:FindFirstChild("headoverthing")
									if not th then
										local ht = espheadthing:Clone()
										ht.PName.Text = p.Parent.Name
										ht.Adornee = p
										--table.insert(headsupdatelist, ht)
										delay(0, function()
											while wait(0.08) and plr and p do
												f.UpdateHeadUI(ht)
											end
										end)
										ht.Parent = p
									end
								end
								end
							end
						end
						plr.Character.Humanoid.Died:Connect(function()
							fold:Destroy()
						end)
						
					end
					end)
				end
			else
				local e = espforlder:FindFirstChild(plr.Name)
				if not e then
					local fold = Instance.new("Folder", espforlder)
						fold.Name = plr.Name
						
						--partconverter.BrickColor = plr.Team.Color
						--local teamc = Move.BackgroundColor3
						for i, p in pairs(plr.Character:GetChildren()) do
							if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
								pcall(function()
								if charmsesp then
								local urmom = Instance.new("BoxHandleAdornment")
								urmom.ZIndex = 10
								urmom.AlwaysOnTop = true
								urmom.Color3 = espcolor
								urmom.Size = p.Size
								urmom.Adornee = p
								urmom.Name = tick().." Ur mom has big gay"
								urmom.Transparency = wallhack_esp_transparency
								urmom.Parent = fold
								end
								if p.Name == "Head" then
									local th = p:FindFirstChild("headoverthing")
									if not th then
										local ht = espheadthing:Clone()
										ht.PName.Text = p.Parent.Name
										ht.Adornee = p
										delay(0, function()
											while wait(0.08) and plr and p do
												f.UpdateHeadUI(ht)
											end
										end)
										--table.insert(headsupdatelist, ht)
										ht.Parent = p
									end
								end
								end)
							end
						end
						plr.Character.Humanoid.Died:Connect(function()
							fold:Destroy()
						end)
				end
			end
			
			
		end
	end
	end)
end

local uis = game:GetService("UserInputService")
local bringall = false
local hided2 = false
local upping = false
local downing = false
mouse.KeyDown:Connect(function(a)
	
	if a == "t" then
		--print("worked1")
		f.addesp()
	elseif a == gui_hide_button[2] and uis:IsKeyDown(gui_hide_button[1]) then
		if hided2 == false then
			hided2 = true
			autoesp =false
			if espforlder then
				espforlder:Destroy()
			end
			Gui.Enabled = false
		else
			Gui.Enabled = true
			hided2 = false
		end
			
	elseif a == "" then
		if aimbothider == false then
			aimbothider = true
			if aimbothider == true then
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
		else
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
		end
		else
			
			aimbothider = true
			if aimbothider == true then
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
		else
			aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
		end
		end
		if aimbothider == true then
			aimbothiderbox.TextColor3 =Color3.fromRGB(11, 255, 19)
		else
			aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
		end
	elseif a == "l" then
		if not uis:IsKeyDown(Enum.KeyCode.LeftControl) then
			if autoesp == false then
				autoesp = true
			else
				autoesp = false
			end
		else
			if lightesp == true then
				lightesp = false
			else
				lightesp = true
			end
		end
	elseif a == "]" then
		upping = true
		downing = false
	elseif a== "[" then
		downing = true
		upping = false
	elseif a == Aim_Assist_Key[2] and uis:IsKeyDown(Aim_Assist_Key[1]) then
		if Aim_Assist == true then
			Aim_Assist = false
			--print("disabled")
		else
			Aim_Assist = true
		end
	end
	if a == "j" then
		if mouse.Target then
			mouse.Target:Destroy()
		end
	end
	if a == key then
		if switch == false then
			switch = true
		else
			switch = false
			if aimatpart ~= nil then
				aimatpart = nil
			end
		end
	elseif a == "b" and uis:IsKeyDown(Enum.KeyCode.LeftControl) and not uis:IsKeyDown(Enum.KeyCode.R) then
		if movementcounting then
			movementcounting = false
		else
			movementcounting = true
		end
	elseif a == teambasedswitch then
		if TeamBased == true then
			TeamBased = false
			teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
		else
			TeamBased = true
			teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
		end
	elseif a == "b" and uis:IsKeyDown(Enum.KeyCode.LeftControl) and uis:IsKeyDown(Enum.KeyCode.R) then
		ballisticsboost = 0
	elseif a == aimkey then
		if not aimatpart then
			local maxangle = math.rad(20)
			for i, plr in pairs(plrs:GetChildren()) do
				if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
					if TeamBased == true then
						if plr.Team.Name ~= lplr.Team.Name then
							local an = checkfov(plr.Character.Head)
							if an < maxangle then
								maxangle = an
								aimatpart = plr.Character.Head
							end
						end
					else
						local an = checkfov(plr.Character.Head)
							if an < maxangle then
								maxangle = an
								aimatpart = plr.Character.Head
							end
							--print(plr)
					end
					local old = aimatpart
					plr.Character.Humanoid.Died:Connect(function()
						--print("died")
						if aimatpart and aimatpart == old then
							aimatpart = nil
						end
					end)
					
				end
			end
		else
			aimatpart = nil
			canaimat = false
			delay(1.1, function()
				canaimat = true
			end)
		end
	end
end)

function getfovxyz (p0, p1, deg)
	local x1, y1, z1 = p0:ToOrientation()
	local cf = CFrame.new(p0.p, p1.p)
	local x2, y2, z2 = cf:ToOrientation()
	local d = math.deg
	if deg then
		return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
	else
		return Vector3.new((x1-x2), (y1-y2), (z1-z2))
	end
end


function aimat(part)
	if part then
		--print(part)
		local d = (cam.CFrame.p - part.CFrame.p).magnitude
		local calculatedrop
		local timetoaim = 0
		local pos2 = Vector3.new()
		if movementcounting == true then
			timetoaim = d/bspeed
			pos2 = part.Velocity * timetoaim
		end
		local minuseddrop = (ballisticsboost+50)/50
		if ballisticsboost ~= 0 then
			calculatedrop = d - (d/minuseddrop)
			
		else
			calculatedrop = 0
		end
		--print(calculatedrop)
		local addative = Vector3.new()
		if movementcounting then
			addative = pos2
		end
		local cf = CFrame.new(cam.CFrame.p, (addative + part.CFrame.p+ Vector3.new(0, calculatedrop, 0)))
		if aimbothider == true or Aim_Assist == true then
			cam.CFrame = cam.CFrame:Lerp(cf, aimbothiderspeed)
		else
			
			cam.CFrame = cf
		end
		--print(cf)
	end
end
function checkfov (part)
	local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
	local angle = math.abs(fov.X) + math.abs(fov.Y)
	return angle
end
pcall(function()
	delay(0, function()
		while wait(.32) do
			if Aim_Assist and not aimatpart and canaimat and lplr.Character and lplr.Character.Humanoid and lplr.Character.Humanoid.Health > 0 then
				for i, plr in pairs(plrs:GetChildren()) do
					
					
						local minangle = math.rad(5.5)
						local lastpart = nil
						local function gg(plr)
							pcall(function()
							if plr.Name ~= lplr.Name and plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Character.Head then
								local raycasted = false
								local cf1 = CFrame.new(cam.CFrame.p, plr.Character.Head.CFrame.p) * CFrame.new(0, 0, -4)
								local r1 = Ray.new(cf1.p, cf1.LookVector * 9000)
								local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
								local dist = (plr.Character.Head.CFrame.p- pos).magnitude
								if dist < 4 then
									raycasted = true
								end
								if raycasted == true then
									local an1 = getfovxyz(cam.CFrame, plr.Character.Head.CFrame)
									local an = abs(an1.X) + abs(an1.Y)
									if an < minangle then
										minangle = an
										lastpart = plr.Character.Head
									end
								end
							end
							end)
						end
						if TeamBased then
							if plr.Team.Name ~= lplr.Team.Name then
								gg(plr)
							end
						else
							gg(plr)
						end
						--print(math.deg(minangle))
						if lastpart then
							aimatpart = lastpart
							aimatpart.Parent.Humanoid.Died:Connect(function()
								if aimatpart == lastpart then
									aimatpart = nil
								end
							end)
						
					end
				end
			end
		end
	end)
end)
local oldheadpos
local lastaimapart
game:GetService("RunService").RenderStepped:Connect(function(dt)
	if uis:IsKeyDown(Enum.KeyCode.RightBracket) or uis:IsKeyDown(Enum.KeyCode.LeftBracket) then
		if upping then
			ballisticsboost = ballisticsboost + dt/1.9
		elseif downing then
			ballisticsboost = ballisticsboost - dt/1.9
		end
	end
	if movementcounting then
		st1_2.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
		st1_2.Text = "Current ballistics: "..tostring(math.floor(ballisticsboost*10)/10)
	else
		st1_2.TextColor3 = Color3.new(1,0,0)
	end
	espstatustext.Text = "Esp loop :"..tostring(autoesp)
	if aimatpart and lplr.Character and lplr.Character.Head then
		if BetterDeathCount and lastaimapart and lastaimapart == aimatpart then
			local dist = (oldheadpos - aimatpart.CFrame.p).magnitude
			if dist > 40 then
				aimatpart = nil
			end
		end
		lastaimapart = aimatpart
		oldheadpos = lastaimapart.CFrame.p
		do 
			if aimatpart.Parent == plrs.LocalPlayer.Character then
				aimatpart = nil
			end
			aimat(aimatpart)
			pcall(function()
				if Aim_Assist == true then
					local cf1 = CFrame.new(cam.CFrame.p, aimatpart.CFrame.p) * CFrame.new(0, 0, -4)
					local r1 = Ray.new(cf1.p, cf1.LookVector * 1000)
					local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
					local dist = (aimatpart.CFrame.p- pos).magnitude
					if obj then
						--print(obj:GetFullName())
					end
					if not obj or dist > 6 then
						aimatpart = nil
						--print("ooof")
					end
					canaimat = false
					delay(.5, function()
						canaimat = true
					end)
				end
			end)
		end
		
		
		
	end
end)


delay(0, function()
	while wait(espupdatetime) do
		if autoesp == true then
			pcall(function()
			f.addesp()
			end)
		end
	end
end)
--warn("loaded")
end)

--More info at lux#2214 [Discord]
--Hope you enjoy having CB:RO skins! [Animated are little buggy]
local LocalPlayer = game:GetService("Players").LocalPlayer
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local allSkins = {
   {'AK47_Ace'},
   {'AK47_Bloodboom'},
   {'AK47_Clown'},
   {'AK47_Code Orange'},
   {'AK47_Eve'},
   {'AK47_Gifted'},
   {'AK47_Glo'},
   {'AK47_Godess'},
   {'AK47_Hallows'},
   {'AK47_Halo'},
   {'AK47_Hypersonic'},
   {'AK47_Inversion'},
   {'AK47_Jester'},
   {'AK47_Maker'},
   {'AK47_Mean Green'},
   {'AK47_Outlaws'},
   {'AK47_Outrunner'},
   {'AK47_Patch'},
   {'AK47_Plated'},
   {'AK47_Precision'},
   {'AK47_Quantum'},
   {'AK47_Quicktime'},
   {'AK47_Scapter'},
   {'AK47_Secret Santa'},
   {'AK47_Shooting Star'},
   {'AK47_Skin Committee'},
   {'AK47_Survivor'},
   {'AK47_Ugly Sweater'},
   {'AK47_VAV'},
   {'AK47_Variant Camo'},
   {'AK47_Yltude'},
   {'AUG_Chilly Night'},
   {'AUG_Dream Hound'},
   {'AUG_Enlisted'},
   {'AUG_Graffiti'},
   {'AUG_Homestead'},
   {'AUG_Maker'},
   {'AUG_NightHawk'},
   {'AUG_Phoenix'},
   {'AUG_Sunsthetic'},
   {'AWP_Abaddon'},
   {'AWP_Autumness'},
   {'AWP_Blastech'},
   {'AWP_Bloodborne'},
   {'AWP_Coffin Biter'},
   {'AWP_Desert Camo'},
   {'AWP_Difference'},
   {'AWP_Dragon'},
   {'AWP_Forever'},
   {'AWP_Grepkin'},
   {'AWP_Hika'},
   {'AWP_Illusion'},
   {'AWP_Instinct'},
   {'AWP_JTF2'},
   {'AWP_Lunar'},
   {'AWP_Nerf'},
   {'AWP_Northern Lights'},
   {'AWP_Pear Tree'},
   {'AWP_Pink Vision'},
   {'AWP_Pinkie'},
   {'AWP_Quicktime'},
   {'AWP_Racer'},
   {'AWP_Regina'},
   {'AWP_Retroactive'},
   {'AWP_Scapter'},
   {'AWP_Silence'},
   {'AWP_Venomus'},
   {'AWP_Weeb'},
   {'Banana_Stock'},
   {'Bayonet_Aequalis'},
   {'Bayonet_Banner'},
   {'Bayonet_Candy Cane'},
   {'Bayonet_Consumed'},
   {'Bayonet_Cosmos'},
   {'Bayonet_Crimson Tiger'},
   {'Bayonet_Crow'},
   {'Bayonet_Delinquent'},
   {'Bayonet_Digital'},
   {'Bayonet_Easy-Bake'},
   {'Bayonet_Egg Shell'},
   {'Bayonet_Festive'},
   {'Bayonet_Frozen Dream'},
   {'Bayonet_Geo Blade'},
   {'Bayonet_Ghastly'},
   {'Bayonet_Goo'},
   {'Bayonet_Hallows'},
   {'Bayonet_Intertwine'},
   {'Bayonet_Marbleized'},
   {'Bayonet_Mariposa'},
   {'Bayonet_Naval'},
   {'Bayonet_Neonic'},
   {'Bayonet_RSL'},
   {'Bayonet_Racer'},
   {'Bayonet_Sapphire'},
   {'Bayonet_Silent Night'},
   {'Bayonet_Splattered'},
   {'Bayonet_Stock'},
   {'Bayonet_Topaz'},
   {'Bayonet_Tropical'},
   {'Bayonet_Twitch'},
   {'Bayonet_UFO'},
   {'Bayonet_Wetland'},
   {'Bayonet_Worn'},
   {'Bayonet_Wrapped'},
   {'Bearded Axe_Beast'},
   {'Bearded Axe_Splattered'},
   {'Bizon_Autumic'},
   {'Bizon_Festive'},
   {'Bizon_Oblivion'},
   {'Bizon_Saint Nick'},
   {'Bizon_Sergeant'},
   {'Bizon_Shattered'},
   {'Butterfly Knife_Aurora'},
   {'Butterfly Knife_Bloodwidow'},
   {'Butterfly Knife_Consumed'},
   {'Butterfly Knife_Cosmos'},
   {'Butterfly Knife_Crimson Tiger'},
   {'Butterfly Knife_Crippled Fade'},
   {'Butterfly Knife_Digital'},
   {'Butterfly Knife_Egg Shell'},
   {'Butterfly Knife_Freedom'},
   {'Butterfly Knife_Frozen Dream'},
   {'Butterfly Knife_Goo'},
   {'Butterfly Knife_Hallows'},
   {'Butterfly Knife_Icicle'},
   {'Butterfly Knife_Inversion'},
   {'Butterfly Knife_Jade Dream'},
   {'Butterfly Knife_Marbleized'},
   {'Butterfly Knife_Naval'},
   {'Butterfly Knife_Neonic'},
   {'Butterfly Knife_Reaper'},
   {'Butterfly Knife_Ruby'},
   {'Butterfly Knife_Scapter'},
   {'Butterfly Knife_Splattered'},
   {'Butterfly Knife_Stock'},
   {'Butterfly Knife_Topaz'},
   {'Butterfly Knife_Tropical'},
   {'Butterfly Knife_Twitch'},
   {'Butterfly Knife_Wetland'},
   {'Butterfly Knife_White Boss'},
   {'Butterfly Knife_Worn'},
   {'Butterfly Knife_Wrapped'},
   {'CZ_Designed'},
   {'CZ_Festive'},
   {'CZ_Holidays'},
   {'CZ_Lightning'},
   {'CZ_Orange Web'},
   {'CZ_Spectre'},
   {'Cleaver_Spider'},
   {'Cleaver_Splattered'},
   {'DesertEagle_Cold Truth'},
   {'DesertEagle_Cool Blue'},
   {'DesertEagle_DropX'},
   {'DesertEagle_Glittery'},
   {'DesertEagle_Grim'},
   {'DesertEagle_Heat'},
   {'DesertEagle_Honor-bound'},
   {'DesertEagle_Independence'},
   {'DesertEagle_Krystallos'},
   {'DesertEagle_Pumpkin Buster'},
   {'DesertEagle_ROLVe'},
   {'DesertEagle_Racer'},
   {'DesertEagle_Scapter'},
   {'DesertEagle_Skin Committee'},
   {'DesertEagle_Survivor'},
   {'DesertEagle_Weeb'},
   {'DesertEagle_Xmas'},
   {'DualBerettas_Carbonized'},
   {'DualBerettas_Dusty Manor'},
   {'DualBerettas_Floral'},
   {'DualBerettas_Hexline'},
   {'DualBerettas_Neon web'},
   {'DualBerettas_Old Fashioned'},
   {'DualBerettas_Xmas'},
   {'Falchion Knife_Bloodwidow'},
   {'Falchion Knife_Chosen'},
   {'Falchion Knife_Coal'},
   {'Falchion Knife_Consumed'},
   {'Falchion Knife_Cosmos'},
   {'Falchion Knife_Crimson Tiger'},
   {'Falchion Knife_Crippled Fade'},
   {'Falchion Knife_Digital'},
   {'Falchion Knife_Egg Shell'},
   {'Falchion Knife_Festive'},
   {'Falchion Knife_Freedom'},
   {'Falchion Knife_Frozen Dream'},
   {'Falchion Knife_Goo'},
   {'Falchion Knife_Hallows'},
   {'Falchion Knife_Inversion'},
   {'Falchion Knife_Late Night'},
   {'Falchion Knife_Marbleized'},
   {'Falchion Knife_Naval'},
   {'Falchion Knife_Neonic'},
   {'Falchion Knife_Racer'},
   {'Falchion Knife_Ruby'},
   {'Falchion Knife_Splattered'},
   {'Falchion Knife_Stock'},
   {'Falchion Knife_Topaz'},
   {'Falchion Knife_Tropical'},
   {'Falchion Knife_Wetland'},
   {'Falchion Knife_Worn'},
   {'Falchion Knife_Wrapped'},
   {'Falchion Knife_Zombie'},
   {'Famas_Abstract'},
   {'Famas_Centipede'},
   {'Famas_Cogged'},
   {'Famas_Goliath'},
   {'Famas_Haunted Forest'},
   {'Famas_KugaX'},
   {'Famas_MK11'},
   {'Famas_Medic'},
   {'Famas_Redux'},
   {'Famas_Shocker'},
   {'Famas_Toxic Rain'},
   {'FiveSeven_Autumn Fade'},
   {'FiveSeven_Danjo'},
   {'FiveSeven_Fluid'},
   {'FiveSeven_Gifted'},
   {'FiveSeven_Midnight Ride'},
   {'FiveSeven_Mr. Anatomy'},
   {'FiveSeven_Stigma'},
   {'FiveSeven_Sub Zero'},
   {'FiveSeven_Summer'},
   {'Flip Knife_Stock'},
   {'G3SG1_Amethyst'},
   {'G3SG1_Autumn'},
   {'G3SG1_Foliage'},
   {'G3SG1_Hex'},
   {'G3SG1_Holly Bound'},
   {'G3SG1_Mahogany'},
   {'Galil_Frosted'},
   {'Galil_Hardware 2'},
   {'Galil_Hardware'},
   {'Galil_Toxicity'},
   {'Galil_Worn'},
   {'Glock_Angler'},
   {'Glock_Anubis'},
   {'Glock_Biotrip'},
   {'Glock_Day Dreamer'},
   {'Glock_Desert Camo'},
   {'Glock_Gravestomper'},
   {'Glock_Midnight Tiger'},
   {'Glock_Money Maker'},
   {'Glock_RSL'},
   {'Glock_Rush'},
   {'Glock_Scapter'},
   {'Glock_Spacedust'},
   {'Glock_Tarnish'},
   {'Glock_Underwater'},
   {'Glock_Wetland'},
   {'Glock_White Sauce'},
   {'Gut Knife_Banner'},
   {'Gut Knife_Bloodwidow'},
   {'Gut Knife_Consumed'},
   {'Gut Knife_Cosmos'},
   {'Gut Knife_Crimson Tiger'},
   {'Gut Knife_Crippled Fade'},
   {'Gut Knife_Digital'},
   {'Gut Knife_Egg Shell'},
   {'Gut Knife_Frozen Dream'},
   {'Gut Knife_Geo Blade'},
   {'Gut Knife_Goo'},
   {'Gut Knife_Hallows'},
   {'Gut Knife_Lurker'},
   {'Gut Knife_Marbleized'},
   {'Gut Knife_Naval'},
   {'Gut Knife_Neonic'},
   {'Gut Knife_Present'},
   {'Gut Knife_Ruby'},
   {'Gut Knife_Rusty'},
   {'Gut Knife_Splattered'},
   {'Gut Knife_Topaz'},
   {'Gut Knife_Tropical'},
   {'Gut Knife_Wetland'},
   {'Gut Knife_Worn'},
   {'Gut Knife_Wrapped'},
   {'Huntsman Knife_Aurora'},
   {'Huntsman Knife_Bloodwidow'},
   {'Huntsman Knife_Consumed'},
   {'Huntsman Knife_Cosmos'},
   {'Huntsman Knife_Cozy'},
   {'Huntsman Knife_Crimson Tiger'},
   {'Huntsman Knife_Crippled Fade'},
   {'Huntsman Knife_Digital'},
   {'Huntsman Knife_Egg Shell'},
   {'Huntsman Knife_Frozen Dream'},
   {'Huntsman Knife_Geo Blade'},
   {'Huntsman Knife_Goo'},
   {'Huntsman Knife_Hallows'},
   {'Huntsman Knife_Honor Fade'},
   {'Huntsman Knife_Marbleized'},
   {'Huntsman Knife_Monster'},
   {'Huntsman Knife_Naval'},
   {'Huntsman Knife_Ruby'},
   {'Huntsman Knife_Splattered'},
   {'Huntsman Knife_Stock'},
   {'Huntsman Knife_Tropical'},
   {'Huntsman Knife_Twitch'},
   {'Huntsman Knife_Wetland'},
   {'Huntsman Knife_Worn'},
   {'Huntsman Knife_Wrapped'},
   {'Karambit_Bloodwidow'},
   {'Karambit_Consumed'},
   {'Karambit_Cosmos'},
   {'Karambit_Crimson Tiger'},
   {'Karambit_Crippled Fade'},
   {'Karambit_Death Wish'},
   {'Karambit_Digital'},
   {'Karambit_Egg Shell'},
   {'Karambit_Festive'},
   {'Karambit_Frozen Dream'},
   {'Karambit_Glossed'},
   {'Karambit_Gold'},
   {'Karambit_Goo'},
   {'Karambit_Hallows'},
   {'Karambit_Jade Dream'},
   {'Karambit_Jester'},
   {'Karambit_Lantern'},
   {'Karambit_Liberty Camo'},
   {'Karambit_Marbleized'},
   {'Karambit_Naval'},
   {'Karambit_Neonic'},
   {'Karambit_Pizza'},
   {'Karambit_Quicktime'},
   {'Karambit_Racer'},
   {'Karambit_Ruby'},
   {'Karambit_Scapter'},
   {'Karambit_Splattered'},
   {'Karambit_Stock'},
   {'Karambit_Topaz'},
   {'Karambit_Tropical'},
   {'Karambit_Twitch'},
   {'Karambit_Wetland'},
   {'Karambit_Worn'},
   {'M249_Aggressor'},
   {'M249_P2020'},
   {'M249_Spooky'},
   {'M249_Wolf'},
   {'M4A1_Animatic'},
   {'M4A1_Burning'},
   {'M4A1_Desert Camo'},
   {'M4A1_Heavens Gate'},
   {'M4A1_Impulse'},
   {'M4A1_Jester'},
   {'M4A1_Lunar'},
   {'M4A1_Necropolis'},
   {'M4A1_Tecnician'},
   {'M4A1_Toucan'},
   {'M4A1_Wastelander'},
   {'M4A4_BOT[S]'},
   {'M4A4_Candyskull'},
   {'M4A4_Delinquent'},
   {'M4A4_Desert Camo'},
   {'M4A4_Devil'},
   {'M4A4_Endline'},
   {'M4A4_Flashy Ride'},
   {'M4A4_Ice Cap'},
   {'M4A4_Jester'},
   {'M4A4_King'},
   {'M4A4_Mistletoe'},
   {'M4A4_Pinkie'},
   {'M4A4_Pinkvision'},
   {'M4A4_Pondside'},
   {'M4A4_Precision'},
   {'M4A4_Quicktime'},
   {'M4A4_Racer'},
   {'M4A4_RayTrack'},
   {'M4A4_Scapter'},
   {'M4A4_Stardust'},
   {'M4A4_Toy Soldier'},
   {'MAC10_Artists Intent'},
   {'MAC10_Blaze'},
   {'MAC10_Golden Rings'},
   {'MAC10_Pimpin'},
   {'MAC10_Skeleboney'},
   {'MAC10_Toxic'},
   {'MAC10_Turbo'},
   {'MAC10_Wetland'},
   {'MAG7_Bombshell'},
   {'MAG7_C4UTION'},
   {'MAG7_Frosty'},
   {'MAG7_Molten'},
   {'MAG7_Outbreak'},
   {'MAG7_Striped'},
   {'MP7_Calaxian'},
   {'MP7_Cogged'},
   {'MP7_Goo'},
   {'MP7_Holiday'},
   {'MP7_Industrial'},
   {'MP7_Reindeer'},
   {'MP7_Silent Ops'},
   {'MP7_Sunshot'},
   {'MP9_Blueroyal'},
   {'MP9_Cob Web'},
   {'MP9_Cookie Man'},
   {'MP9_Decked Halls'},
   {'MP9_SnowTime'},
   {'MP9_Vaporwave'},
   {'MP9_Velvita'},
   {'MP9_Wilderness'},
   {'Negev_Default'},
   {'Negev_Midnightbones'},
   {'Negev_Quazar'},
   {'Negev_Striped'},
   {'Negev_Wetland'},
   {'Negev_Winterfell'},
   {'Nova_Black Ice'},
   {'Nova_Cookie'},
   {'Nova_Paradise'},
   {'Nova_Sharkesh'},
   {'Nova_Starry Night'},
   {'Nova_Terraformer'},
   {'Nova_Tiger'},
   {'P2000_Apathy'},
   {'P2000_Camo Dipped'},
   {'P2000_Candycorn'},
   {'P2000_Comet'},
   {'P2000_Dark Beast'},
   {'P2000_Golden Age'},
   {'P2000_Lunar'},
   {'P2000_Pinkie'},
   {'P2000_Ruby'},
   {'P2000_Silence'},
   {'P250_Amber'},
   {'P250_Bomber'},
   {'P250_Equinox'},
   {'P250_Frosted'},
   {'P250_Goldish'},
   {'P250_Green Web'},
   {'P250_Shark'},
   {'P250_Solstice'},
   {'P250_TC250'},
   {'P90_Demon Within'},
   {'P90_Elegant'},
   {'P90_Krampus'},
   {'P90_Northern Lights'},
   {'P90_P-Chan'},
   {'P90_Pine'},
   {'P90_Redcopy'},
   {'P90_Skulls'},
   {'R8_Exquisite'},
   {'R8_Hunter'},
   {'R8_Spades'},
   {'R8_TG'},
   {'R8_Violet'},
   {'SG_DropX'},
   {'SG_Dummy'},
   {'SG_Kitty Cat'},
   {'SG_Knighthood'},
   {'SG_Magma'},
   {'SG_Variant Camo'},
   {'SG_Yltude'},
   {'SawedOff_Casino'},
   {'SawedOff_Colorboom'},
   {'SawedOff_Executioner'},
   {'SawedOff_Opal'},
   {'SawedOff_Spooky'},
   {'SawedOff_Sullys Blacklight'},
   {'Scout_Coffin Biter'},
   {'Scout_Flowing Mists'},
   {'Scout_Hellborn'},
   {'Scout_Hot Cocoa'},
   {'Scout_Monstruo'},
   {'Scout_Neon Regulation'},
   {'Scout_Posh'},
   {'Scout_Pulse'},
   {'Scout_Railgun'},
   {'Scout_Theory'},
   {'Scout_Xmas'},
   {'Sickle_Mummy'},
   {'Sickle_Splattered'},
   {'Tec9_Charger'},
   {'Tec9_Gift Wrapped'},
   {'Tec9_Ironline'},
   {'Tec9_Performer'},
   {'Tec9_Phol'},
   {'Tec9_Samurai'},
   {'Tec9_Skintech'},
   {'Tec9_Stocking Stuffer'},
   {'UMP_Death Grip'},
   {'UMP_Gum Drop'},
   {'UMP_Magma'},
   {'UMP_Militia Camo'},
   {'UMP_Molten'},
   {'UMP_Redline'},
   {'USP_Crimson'},
   {'USP_Dizzy'},
   {'USP_Frostbite'},
   {'USP_Holiday'},
   {'USP_Jade Dream'},
   {'USP_Kraken'},
   {'USP_Nighttown'},
   {'USP_Paradise'},
   {'USP_Racing'},
   {'USP_Skull'},
   {'USP_Unseen'},
   {'USP_Worlds Away'},
   {'USP_Yellowbelly'},
   {'XM_Artic'},
   {'XM_Atomic'},
   {'XM_Campfire'},
   {'XM_Endless Night'},
   {'XM_MK11'},
   {'XM_Predator'},
   {'XM_Red'},
   {'XM_Spectrum'},
   {'Handwraps_Wraps'},
   {'Sports Glove_Hazard'},
   {'Sports Glove_Hallows'},
   {'Sports Glove_Majesty'},
   {'Strapped Glove_Racer'},
   {'trapped Glove_Grim'},
   {'trapped Glove_Wisk'},
   {'Fingerless Glove_Scapter'},
   {'Fingerless Glove_Digital'},
   {'Fingerless Glove_Patch'},
   {'Handwraps_Guts'},
   {'Handwraps_Wetland'},
   {'trapped Glove_Molten'},
   {'Fingerless_Crystal'},
   {'Sports Glove_Royal'},
   {'Strapped Glove_Kringle'},
   {'Handwraps_MMA'},
   {'Sports Glove_Weeb'},
   {'Sports Glove_CottonTail'},
   {'Sports Glove_RSL'},
   {'Handwraps_Ghoul Hex'},
   {'Handwraps_Phantom Hex'},
   {'Handwraps_Spector Hex'},
   {'Handwraps_Orange Hex'},
   {'Handwraps_Purple Hex'},
   {'Handwraps_Green Hex'},
}

local isUnlocked

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

local isUnlocked

mt.__namecall = newcclosure(function(self, ...)
   local args = {...}
   if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then
       return
   end
   if getnamecallmethod() == "FireServer" then
       if args[1] == LocalPlayer.UserId then
           return
       end
       if string.len(tostring(self)) == 38 then
           if not isUnlocked then
               isUnlocked = true
               for i,v in pairs(allSkins) do
                   local doSkip
                   for i2,v2 in pairs(args[1]) do
                       if v[1] == v2[1] then
                           doSkip = true
                       end
                   end
                   if not doSkip then
                       table.insert(args[1], v)
                   end
               end
           end
           return
       end
       if tostring(self) == "DataEvent" and args[1][4] then
           local currentSkin = string.split(args[1][4][1], "_")[2]
           if args[1][2] == "Both" then
               LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
               LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
           else
               LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin
           end
       end
   end
   return oldNamecall(self, ...)
end)    
   
setreadonly(mt, true)

Client.CurrentInventory = allSkins

local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
LocalPlayer.SkinFolder.TFolder:Destroy()
LocalPlayer.SkinFolder.CTFolder:Destroy()
TClone.Parent = LocalPlayer.SkinFolder
CTClone.Parent = LocalPlayer.SkinFolder
