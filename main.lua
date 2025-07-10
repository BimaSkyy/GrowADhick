function edyGxSjzWbHEvNWhkthtWwRoJx(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


print = function(...) end
warn = function(...) end
-- GUI Controller
local CoreGui = game:GetService(edyGxSjzWbHEvNWhkthtWwRoJx({7035,11655,11970,10605,7455,12285,11025}))
local Players = game:GetService(edyGxSjzWbHEvNWhkthtWwRoJx({8400,11340,10185,12705,10605,11970,12075}))
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild(edyGxSjzWbHEvNWhkthtWwRoJx({8400,11340,10185,12705,10605,11970,7455,12285,11025}))

local miniGui = Instance.new(edyGxSjzWbHEvNWhkthtWwRoJx({8715,10395,11970,10605,10605,11550,7455,12285,11025}))
miniGui.Name = edyGxSjzWbHEvNWhkthtWwRoJx({8085,11025,11550,11025,7035,11655,11550,12180,11970,11655,11340,11340,10605,11970})
miniGui.ResetOnSpawn = false
miniGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
miniGui.Parent = CoreGui

-- Frame utama
local frame = Instance.new(edyGxSjzWbHEvNWhkthtWwRoJx({7350,11970,10185,11445,10605}))
frame.Size = UDim2.new(0, 60, 0, 30)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = miniGui

-- Tombol 👁️
local eyeBtn = Instance.new(edyGxSjzWbHEvNWhkthtWwRoJx({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
eyeBtn.Size = UDim2.new(0.5, 0, 1, 0)
eyeBtn.Text = edyGxSjzWbHEvNWhkthtWwRoJx({25200,16695,15225,13545,25095,19320,15015})
eyeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
eyeBtn.TextColor3 = Color3.new(1, 1, 1)
eyeBtn.Font = Enum.Font.GothamBold
eyeBtn.TextSize = 16
eyeBtn.Parent = frame

-- Tombol ❌
local closeBtn = Instance.new(edyGxSjzWbHEvNWhkthtWwRoJx({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
closeBtn.Size = UDim2.new(0.5, 0, 1, 0)
closeBtn.Position = UDim2.new(0.5, 0, 0, 0)
closeBtn.Text = edyGxSjzWbHEvNWhkthtWwRoJx({23730,16485,14700})
closeBtn.BackgroundColor3 = Color3.fromRGB(130, 30, 30)
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 16
closeBtn.Parent = frame

-- Notifikasi loading di tengah layar
local function showMidNotify(text)
	local n = Instance.new(edyGxSjzWbHEvNWhkthtWwRoJx({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
	n.AnchorPoint = Vector2.new(0.5, 0.5)
	n.Position = UDim2.new(0.5, 0, 0.5, 0)
	n.Size = UDim2.new(0, 250, 0, 40)
	n.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	n.TextColor3 = Color3.new(1, 1, 1)
	n.Font = Enum.Font.GothamBold
	n.TextSize = 16
	n.Text = text
	n.BackgroundTransparency = 0.3
	n.Parent = miniGui

	task.delay(2, function()
		n:Destroy()
	end)
end

-- Label kecil loading di bawah tombol
local function showMiniLoading(btn, text)
	local lbl = Instance.new(edyGxSjzWbHEvNWhkthtWwRoJx({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
	lbl.Size = UDim2.new(0, 100, 0, 18)
	lbl.Position = UDim2.new(0, btn.Position.X.Offset, 0, btn.Position.Y.Offset + 28)
	lbl.Text = text
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = Color3.fromRGB(200, 200, 200)
	lbl.Font = Enum.Font.Gotham
	lbl.TextSize = 12
	lbl.Parent = miniGui

	-- Animasi titik-titik
	local dots = {edyGxSjzWbHEvNWhkthtWwRoJx({4830}), edyGxSjzWbHEvNWhkthtWwRoJx({4830,4830}), edyGxSjzWbHEvNWhkthtWwRoJx({4830,4830,4830})}
	local alive = true
	task.spawn(function()
		local i = 1
		while alive do
			lbl.Text = text .. dots[i]
			i = i % #dots + 1
			task.wait(0.4)
		end
	end)

	return function()
		alive = false
		lbl:Destroy()
	end
end

-- Tombol menu builder
local function createMenuBtn(text, yPos)
	local btn = Instance.new(edyGxSjzWbHEvNWhkthtWwRoJx({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
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

local menuBtn1 = createMenuBtn(edyGxSjzWbHEvNWhkthtWwRoJx({7350,10185,11970,11445,8085,10605,12180,10920,11655,10500,10605}), 45)
local menuBtn2 = createMenuBtn(edyGxSjzWbHEvNWhkthtWwRoJx({8820,11970,11655,11340,11340,8085,10605,11550,12285}), 75)
local menuBtn3 = createMenuBtn(edyGxSjzWbHEvNWhkthtWwRoJx({8085,11025,12075,10395,3360,8085,10605,11550,12285}), 105)

-- External GUI references
local guiRefs = {
	{url = edyGxSjzWbHEvNWhkthtWwRoJx({10920,12180,12180,11760,12075,6090,4935,4935,11760,10185,12075,12180,10605,10290,11025,11550,4830,10395,11655,11445,4935,11970,10185,12495,4935,7980,12810,5670,10710,9345,10185,8715,10815}), name = edyGxSjzWbHEvNWhkthtWwRoJx({8715,11445,10185,11970,12180,8400,11340,10185,11550,12180,7455,12285,11025}), loaded = false, gui = nil, btn = menuBtn1},
	{url = edyGxSjzWbHEvNWhkthtWwRoJx({10920,12180,12180,11760,12075,6090,4935,4935,11760,10185,12075,12180,10605,10290,11025,11550,4830,10395,11655,11445,4935,11970,10185,12495,4935,11445,11235,7770,10815,5355,5145,7350,5040}), name = edyGxSjzWbHEvNWhkthtWwRoJx({8085,10605,11970,10815,10605,10500,7035,11655,11550,12180,11970,11655,11340,7455,12285,11025}), loaded = false, gui = nil, btn = menuBtn2},
	{url = edyGxSjzWbHEvNWhkthtWwRoJx({10920,12180,12180,11760,12075,6090,4935,4935,11760,10185,12075,12180,10605,10290,11025,11550,4830,10395,11655,11445,4935,11970,10185,12495,4935,5670,7770,12600,12495,7770,8505,12180,7245}), name = edyGxSjzWbHEvNWhkthtWwRoJx({8085,11025,11550,11025,7350,10185,11970,11445,7455,8925,7665}), loaded = false, gui = nil, btn = menuBtn3},
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

local isLoading = {}

local function handleGuiToggle(data)
	if isLoading[data.name] then
		showMidNotify(edyGxSjzWbHEvNWhkthtWwRoJx({8400,11340,10605,10185,12075,10605,3360,12495,10185,11025,12180,4620,3360,12075,10395,11970,11025,11760,12180,3360,11025,12075,3360,11340,11655,10185,10500,11025,11550,10815,4830,4830,4830}))
		return
	end

	if not data.loaded then
		isLoading[data.name] = true
		local stopAnim = showMiniLoading(data.btn, data.name .. edyGxSjzWbHEvNWhkthtWwRoJx({3360,11340,11655,10185,10500,11025,11550,10815}))

		local ok, result = pcall(function()
			loadstring(game:HttpGet(data.url))()
		end)

		stopAnim()
		isLoading[data.name] = false

		if ok then
			local g = CoreGui:FindFirstChild(data.name) or PlayerGui:FindFirstChild(data.name)
			if g then
				data.gui = g
				data.loaded = true
				data.btn.Text = edyGxSjzWbHEvNWhkthtWwRoJx({7560,11025,10500,10605})
			else
				warn(edyGxSjzWbHEvNWhkthtWwRoJx({23730,16485,14700,3360,8820,11025,10500,10185,11235,3360,10500,11025,12180,10605,11445,12285,11235,10185,11550,3360,7455,8925,7665,6090,3360}), data.name)
			end
		else
			warn(edyGxSjzWbHEvNWhkthtWwRoJx({23730,16485,14700,3360,7455,10185,10815,10185,11340,3360,11340,11655,10185,10500,6090}), result)
		end
	else
		if data.gui then
			data.gui.Enabled = not data.gui.Enabled
			data.btn.Text = data.gui.Enabled and edyGxSjzWbHEvNWhkthtWwRoJx({7560,11025,10500,10605}) or edyGxSjzWbHEvNWhkthtWwRoJx({8715,10920,11655,12495})
		end
	end
end

-- Pasang handler ke tiap tombol
for _, data in ipairs(guiRefs) do
	data.btn.MouseButton1Click:Connect(function()
		handleGuiToggle(data)
	end)
end    
