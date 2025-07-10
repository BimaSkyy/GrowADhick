function qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


-- Services
local ReplicatedStorage = game:GetService(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8610,10605,11760,11340,11025,10395,10185,12180,10605,10500,8715,12180,11655,11970,10185,10815,10605}))
local Players = game:GetService(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8400,11340,10185,12705,10605,11970,12075}))
local PlayerGui = Players.LocalPlayer:WaitForChild(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8400,11340,10185,12705,10605,11970,7455,12285,11025}))
-- Remote
local ControlMessageEvent = ReplicatedStorage:WaitForChild(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8400,11970,11655,11130,10605,10395,12180})):WaitForChild(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8610,10605,11445,11655,12180,10605,7245,12390,10605,11550,12180})):WaitForChild(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({7035,11655,11550,12180,11970,11655,11340,8085,10605,12075,12075,10185,10815,10605,7245,12390,10605,11550,12180}))
-- GUI
local screenGui = Instance.new(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8715,10395,11970,10605,10605,11550,7455,12285,11025}))
screenGui.Name = qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8610,11655,10290,11655,12180,11025,10395,7035,11655,11340,11340,10605,10395,12180,11655,11970,7455,12285,11025})
screenGui.Parent = PlayerGui
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local button = Instance.new(qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
button.Size = UDim2.new(0, 140, 0, 36)
button.Position = UDim2.new(1, -150, 0.5, -18)
button.AnchorPoint = Vector2.new(0, 0)
button.Text = qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({8820,10185,11235,10605,3360,8610,11655,10290,11655,12180,11025,10395})
button.BackgroundColor3 = Color3.fromRGB(40, 150, 255)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.GothamBold
button.TextSize = 14
button.Parent = screenGui

-- Logic
local running = false
local collectingThread

button.MouseButton1Click:Connect(function()
	if running then
		running = false
		button.Text = qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({25200,16695,15435,17430,3360,8820,10185,11235,10605,3360,8610,11655,10290,11655,12180,11025,10395})
		button.BackgroundColor3 = Color3.fromRGB(40, 150, 255)
	else
		running = true
		button.Text = qTjPvBBQFhjwqhCgZAWLXXWbKsLyKfJsyNsBisOOlADQNJgAQqUsCxuhMEhyusgOIYAQwUJLdgPxCpdZsdjRhVV({25200,16695,16275,15225,3360,8715,12180,11655,11760})
		button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)

		collectingThread = task.spawn(function()
			while running do
				-- Fire event
				pcall(function()
					ControlMessageEvent:FireServer(
						2,
						{1, 1, 17}
					)
				end)
				task.wait(1)
			end
		end)
	end
end)    
