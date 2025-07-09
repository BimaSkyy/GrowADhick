function xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


print = function(...) end
warn = function(...) end
-- GUI Controller
local CoreGui = game:GetService(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({7035,11655,11970,10605,7455,12285,11025}))
local Players = game:GetService(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8400,11340,10185,12705,10605,11970,12075}))
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8400,11340,10185,12705,10605,11970,7455,12285,11025}))

local miniGui = Instance.new(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8715,10395,11970,10605,10605,11550,7455,12285,11025}))
miniGui.Name = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8085,11025,11550,11025,7035,11655,11550,12180,11970,11655,11340,11340,10605,11970})
miniGui.ResetOnSpawn = false
miniGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
miniGui.Parent = CoreGui

-- Frame utama
local frame = Instance.new(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({7350,11970,10185,11445,10605}))
frame.Size = UDim2.new(0, 60, 0, 30)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = miniGui

-- Tombol 👁️
local eyeBtn = Instance.new(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
eyeBtn.Size = UDim2.new(0.5, 0, 1, 0)
eyeBtn.Text = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({25200,16695,15225,13545,25095,19320,15015})
eyeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
eyeBtn.TextColor3 = Color3.new(1, 1, 1)
eyeBtn.Font = Enum.Font.GothamBold
eyeBtn.TextSize = 16
eyeBtn.Parent = frame

-- Tombol ❌
local closeBtn = Instance.new(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
closeBtn.Size = UDim2.new(0.5, 0, 1, 0)
closeBtn.Position = UDim2.new(0.5, 0, 0, 0)
closeBtn.Text = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({23730,16485,14700})
closeBtn.BackgroundColor3 = Color3.fromRGB(130, 30, 30)
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 16
closeBtn.Parent = frame

-- Tombol menu builder
local function createMenuBtn(text, yPos)
	local btn = Instance.new(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
	btn.Size = UDim2.new(0, 120, 0, 26)
	btn.Position = UDim2.new(0, 10, 0, yPos)
	btn.Text = text
	btn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 13
	btn.Visible = false
	btn.Parent = miniGui
	return btn
end

local menuBtn1 = createMenuBtn(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({7350,10185,11970,11445,8085,10605,12180,10920,11655,10500,10605}), 45)
local menuBtn2 = createMenuBtn(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8820,11970,11655,11340,11340,8085,10605,11550,12285}), 75)
local menuBtn3 = createMenuBtn(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8085,11025,12075,10395,3360,8085,10605,11550,12285}), 105)

-- External GUI references
local guiRefs = {
	{url = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({10920,12180,12180,11760,12075,6090,4935,4935,11760,10185,12075,12180,10605,10290,11025,11550,4830,10395,11655,11445,4935,11970,10185,12495,4935,7980,12810,5670,10710,9345,10185,8715,10815}), name = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8715,11445,10185,11970,12180,8400,11340,10185,11550,12180,7455,12285,11025}), loaded = false, gui = nil, btn = menuBtn1},
	{url = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({10920,12180,12180,11760,12075,6090,4935,4935,11760,10185,12075,12180,10605,10290,11025,11550,4830,10395,11655,11445,4935,11970,10185,12495,4935,11445,11235,7770,10815,5355,5145,7350,5040}), name = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8085,10605,11970,10815,10605,10500,7035,11655,11550,12180,11970,11655,11340,7455,12285,11025}), loaded = false, gui = nil, btn = menuBtn2},
	{url = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({10920,12180,12180,11760,12075,6090,4935,4935,11760,10185,12075,12180,10605,10290,11025,11550,4830,10395,11655,11445,4935,11970,10185,12495,4935,5670,7770,12600,12495,7770,8505,12180,7245}), name = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8085,11025,11550,11025,7350,10185,11970,11445,7455,8925,7665}), loaded = false, gui = nil, btn = menuBtn3},
}

-- Mata toggle visibility
eyeBtn.MouseButton1Click:Connect(function()
	for _, data in ipairs(guiRefs) do
		data.btn.Visible = not data.btn.Visible
	end
end)

-- Tombol close → destroy semua
closeBtn.MouseButton1Click:Connect(function()
	for _, data in ipairs(guiRefs) do
		if data.gui then
			data.gui:Destroy()
			data.gui = nil
			data.loaded = false
		end
	end
	miniGui:Destroy()
end)

-- Function untuk toggle satu GUI
local function handleGuiToggle(data)
	if not data.loaded then
		local ok, result = pcall(function()
			loadstring(game:HttpGet(data.url))()
		end)

		if ok then
			-- Cari GUI di CoreGui dan PlayerGui
			local g = CoreGui:FindFirstChild(data.name) or PlayerGui:FindFirstChild(data.name)
			if g then
				data.gui = g
				data.loaded = true
				data.btn.Text = xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({7560,11025,10500,10605})
			else
				warn(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({23730,16485,14700,3360,8820,11025,10500,10185,11235,3360,10500,11025,12180,10605,11445,12285,11235,10185,11550,3360,7455,8925,7665,6090,3360}), data.name)
			end
		else
			warn(xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({23730,16485,14700,3360,7455,10185,10815,10185,11340,3360,11340,11655,10185,10500,6090}), result)
		end
	else
		if data.gui then
			data.gui.Enabled = not data.gui.Enabled
			data.btn.Text = data.gui.Enabled and xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({7560,11025,10500,10605}) or xXIaLHVIUuVeMbryrvDmqfMtkGGfEMyGbRhzMJglGmaFvDeeZDfFzRVsODoZskzdfQkPBdTygcFVX({8715,10920,11655,12495})
		end
	end
end

-- Pasang handler ke tiap tombol
for _, data in ipairs(guiRefs) do
	data.btn.MouseButton1Click:Connect(function()
		handleGuiToggle(data)
	end)
end    
