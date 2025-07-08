-- Base64 decoder
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local function decode(data)
	data = string.gsub(data, '[^'..b..'=]', '')
	return (data:gsub('.', function(x)
		if x == '=' then return '' end
		local r,f='',(b:find(x)-1)
		for i=6,1,-1 do r = r .. (f % 2^i - f % 2^(i-1) > 0 and '1' or '0') end
		return r
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
		if #x ~= 8 then return '' end
		local c=0
		for i=1,8 do c = c + (x:sub(i,i)=='1' and 2^(8-i) or 0) end
		return string.char(c)
	end))
end

-- Base64 Encoded URLs
local encodedUrls = {
	M1 = "aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0x6NmZZYVNn", -- SmartPlantGui
	M2 = "aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L21rSmczMUYw", -- AutoDropGui
	M3 = "aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3LzZKeHdKUXRF", -- SimpleMiniGui
}

-- GUI Controller
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local miniGui = Instance.new("ScreenGui")
miniGui.Name = "MiniController"
miniGui.ResetOnSpawn = false
miniGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
miniGui.Parent = CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 60, 0, 30)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = miniGui

local eyeBtn = Instance.new("TextButton")
eyeBtn.Size = UDim2.new(0.5, 0, 1, 0)
eyeBtn.Text = "👑"
eyeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
eyeBtn.TextColor3 = Color3.new(1, 1, 1)
eyeBtn.Font = Enum.Font.GothamBold
eyeBtn.TextSize = 16
eyeBtn.Parent = frame

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0.5, 0, 1, 0)
closeBtn.Position = UDim2.new(0.5, 0, 0, 0)
closeBtn.Text = "❌"
closeBtn.BackgroundColor3 = Color3.fromRGB(130, 30, 30)
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 16
closeBtn.Parent = frame

local menuBtn1 = Instance.new("TextButton")
menuBtn1.Size = UDim2.new(0, 120, 0, 26)
menuBtn1.Position = UDim2.new(0, 10, 0, 45)
menuBtn1.Text = "FarmMethode"
menuBtn1.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
menuBtn1.TextColor3 = Color3.new(1, 1, 1)
menuBtn1.Font = Enum.Font.Gotham
menuBtn1.TextSize = 13
menuBtn1.Visible = false
menuBtn1.Parent = miniGui

local menuBtn2 = Instance.new("TextButton")
menuBtn2.Size = UDim2.new(0, 120, 0, 26)
menuBtn2.Position = UDim2.new(0, 10, 0, 75)
menuBtn2.Text = "TrollMenu"
menuBtn2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
menuBtn2.TextColor3 = Color3.new(1, 1, 1)
menuBtn2.Font = Enum.Font.Gotham
menuBtn2.TextSize = 13
menuBtn2.Visible = false
menuBtn2.Parent = miniGui

local menuBtn3 = Instance.new("TextButton")
menuBtn3.Size = UDim2.new(0, 120, 0, 26)
menuBtn3.Position = UDim2.new(0, 10, 0, 105)
menuBtn3.Text = "Misc Menu"
menuBtn3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
menuBtn3.TextColor3 = Color3.new(1, 1, 1)
menuBtn3.Font = Enum.Font.Gotham
menuBtn3.TextSize = 13
menuBtn3.Visible = false
menuBtn3.Parent = miniGui

local external1, external2, external3 = nil, nil, nil
local loaded1, loaded2, loaded3 = false, false, false

eyeBtn.MouseButton1Click:Connect(function()
	menuBtn1.Visible = not menuBtn1.Visible
	menuBtn2.Visible = not menuBtn2.Visible
	menuBtn3.Visible = not menuBtn3.Visible
end)

closeBtn.MouseButton1Click:Connect(function()
	if external1 then external1:Destroy() end
	if external2 then external2:Destroy() end
	if external3 then external3:Destroy() end
	miniGui:Destroy()
end)

menuBtn1.MouseButton1Click:Connect(function()
	if not loaded1 then
		local success, err = pcall(function()
			loadstring(game:HttpGet(decode(encodedUrls.M1)))()
		end)
		if success then
			external1 = PlayerGui:WaitForChild("SmartPlantGui", 5)
			if external1 then
				loaded1 = true
				menuBtn1.Text = "Hide"
			end
		else
			warn("Gagal memuat Menu 1:", err)
		end
	else
		external1.Enabled = not external1.Enabled
		menuBtn1.Text = external1.Enabled and "Hide M1" or "Show M1"
	end
end)

menuBtn2.MouseButton1Click:Connect(function()
	if not loaded2 then
		local success, err = pcall(function()
			loadstring(game:HttpGet(decode(encodedUrls.M2)))()
		end)
		if success then
			external2 = PlayerGui:WaitForChild("AutoDropGui", 5)
			if external2 then
				loaded2 = true
				menuBtn2.Text = "Hide"
			end
		else
			warn("Gagal memuat Menu 2:", err)
		end
	else
		external2.Enabled = not external2.Enabled
		menuBtn2.Text = external2.Enabled and "Hide M2" or "Show M2"
	end
end)

menuBtn3.MouseButton1Click:Connect(function()
	if not loaded3 then
		local success, err = pcall(function()
			loadstring(game:HttpGet(decode(encodedUrls.M3)))()
		end)
		if success then
			external3 = PlayerGui:WaitForChild("SimpleMiniGui", 5)
			if external3 then
				loaded3 = true
				menuBtn3.Text = "Hide"
			end
		else
			warn("Gagal memuat Menu 3:", err)
		end
	else
		external3.Enabled = not external3.Enabled
		menuBtn3.Text = external3.Enabled and "Hide M3" or "Show M3"
	end
end)
