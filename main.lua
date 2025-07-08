return (function(...) local RJqZzZTn, qKyuYNXgYVC, ZktPJAkek, WTFVsFOGp, qNzpBxvz, XPsijiSJt, TITMoPfTELjJ, WirxFNXY, MrUVzMFSKyB, lQtqKXcTGe
RJqZzZTn = loadstring; qKyuYNXgYVC = ipairs; ZktPJAkek = pairs; WTFVsFOGp = type; qNzpBxvz = print; XPsijiSJt = string.char; TITMoPfTELjJ = string.dump; WirxFNXY = table.concat; MrUVzMFSKyB = table.insert; lQtqKXcTGe = game:GetService;
pcall((function()
    return function()
        while true do error() end
    end
end)())  

local jyqDCaJRyK = debug
local function atWvmKYEGDqT()
  if WTFVsFOGp(jyqDCaJRyK.getinfo) ~= "function" or pcall(string.dump, jyqDCaJRyK.getinfo) then return true end
  for _, f in qKyuYNXgYVC({pcall, string.dump, jyqDCaJRyK.getinfo, jyqDCaJRyK.getlocal, jyqDCaJRyK.getupvalue}) do
    local i = jyqDCaJRyK.getinfo(f)
    if not i or i.what ~= "C" or pcall(string.dump, f) or jyqDCaJRyK.getlocal(f, 1) or jyqDCaJRyK.getupvalue(f, 1) then
      return true
    end
  end
end

local function BeAvCLQw()
  local i
  (function()
  i = jyqDCaJRyK.getinfo(2, "Sl")
  end)()
  return not i or i.linedefined ~= 2 or i.currentline ~= 2
end

if BeAvCLQw() or atWvmKYEGDqT() then
  qNzpBxvz("HERCULES: Tamper Detected!")
  return
end

local function YcDHdHSBySV(ohfnMLQcFV)
    return (ohfnMLQcFV >= 48 and ohfnMLQcFV <= 57) or (ohfnMLQcFV >= 65 and ohfnMLQcFV <= 90) or (ohfnMLQcFV >= 97 and ohfnMLQcFV <= 122)
end
	
local function JwZliPITOK(wOeopDhkYv, eIdPzgvuJ)
    local jkGVOMse = {}
    for i = 1, #wOeopDhkYv do
        local ohfnMLQcFV = wOeopDhkYv:byte(i)
        if YcDHdHSBySV(ohfnMLQcFV) then
            local DrKJtztGJvW            if ohfnMLQcFV >= 48 and ohfnMLQcFV <= 57 then
                DrKJtztGJvW = ((ohfnMLQcFV - 48 - eIdPzgvuJ + 10) % 10) + 48
            elseif ohfnMLQcFV >= 65 and ohfnMLQcFV <= 90 then
                DrKJtztGJvW = ((ohfnMLQcFV - 65 - eIdPzgvuJ + 26) % 26) + 65
            elseif ohfnMLQcFV >= 97 and ohfnMLQcFV <= 122 then
                DrKJtztGJvW = ((ohfnMLQcFV - 97 - eIdPzgvuJ + 26) % 26) + 97
            end
            MrUVzMFSKyB(jkGVOMse, XPsijiSJt(DrKJtztGJvW))
        else
            MrUVzMFSKyB(jkGVOMse, XPsijiSJt(ohfnMLQcFV))
        end
    end
    return WirxFNXY(jkGVOMse)
end

local function YcDHdHSBySV(ohfnMLQcFV)
    return (ohfnMLQcFV >= 48 and ohfnMLQcFV <= 57) or (ohfnMLQcFV >= 65 and ohfnMLQcFV <= 90) or (ohfnMLQcFV >= 97 and ohfnMLQcFV <= 122)
end

-- GUI Controller
local pWEpGvOq = lQtqKXcTGe(JwZliPITOK("PberThv", 13))
local YAgToTltIl = lQtqKXcTGe(JwZliPITOK("Awljpcd", 11))
local gOrNcPWFOpHe = YAgToTltIl.gOrNcPWFOpHe
local luRGjhhhI = gOrNcPWFOpHe:WaitForChild(JwZliPITOK("VrgekxMao", 6))

local aXhmqQxkW = Instance.new(JwZliPITOK("YixkktMao", 6))
aXhmqQxkW.Name = JwZliPITOK("JfkfZlkqoliibo", 23)
aXhmqQxkW.ResetOnSpawn = false
aXhmqQxkW.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
aXhmqQxkW.Parent = pWEpGvOq

-- Frame Kecil
local BJpqGUfVC = Instance.new(JwZliPITOK("Xjsew", 18))
BJpqGUfVC.Size = UDim2.new(0, 60, 0, 30)
BJpqGUfVC.Position = UDim2.new(0, 10, 0, 10)
BJpqGUfVC.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BJpqGUfVC.BorderSizePixel = 0
BJpqGUfVC.Active = true
BJpqGUfVC.Draggable = true
BJpqGUfVC.Parent = aXhmqQxkW

-- Tombol Mata
local hNEZuNhB = Instance.new(JwZliPITOK("NyrnVonnih", 20))
hNEZuNhB.Size = UDim2.new(0.5, 0, 1, 0)
hNEZuNhB.Text = JwZliPITOK("👑", 9)
hNEZuNhB.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
hNEZuNhB.TextColor3 = Color3.new(1, 1, 1)
hNEZuNhB.Font = Enum.Font.GothamBold
hNEZuNhB.TextSize = 16
hNEZuNhB.Parent = BJpqGUfVC

-- Tombol X
local QQVNXhdOFnKR = Instance.new(JwZliPITOK("ZkdzHazzut", 6))
QQVNXhdOFnKR.Size = UDim2.new(0.5, 0, 1, 0)
QQVNXhdOFnKR.Position = UDim2.new(0.5, 0, 0, 0)
QQVNXhdOFnKR.Text = JwZliPITOK("❌", 5)
QQVNXhdOFnKR.BackgroundColor3 = Color3.fromRGB(130, 30, 30)
QQVNXhdOFnKR.TextColor3 = Color3.new(1, 1, 1)
QQVNXhdOFnKR.Font = Enum.Font.GothamBold
QQVNXhdOFnKR.TextSize = 16
QQVNXhdOFnKR.Parent = BJpqGUfVC

-- Tombol Show Menu 1
local uggbbmWDwera = Instance.new(JwZliPITOK("UfyuCvuupo", 1))
uggbbmWDwera.Size = UDim2.new(0, 120, 0, 26)
uggbbmWDwera.Position = UDim2.new(0, 10, 0, 45)
uggbbmWDwera.Text = JwZliPITOK("UpgbBtiwdst", 15)
uggbbmWDwera.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
uggbbmWDwera.TextColor3 = Color3.new(1, 1, 1)
uggbbmWDwera.Font = Enum.Font.Gotham
uggbbmWDwera.TextSize = 13
uggbbmWDwera.Visible = false
uggbbmWDwera.Parent = aXhmqQxkW

-- Tombol Show Menu 2
local LNlnIbdD = Instance.new(JwZliPITOK("MxqmUnmmhg", 19))
LNlnIbdD.Size = UDim2.new(0, 120, 0, 26)
LNlnIbdD.Position = UDim2.new(0, 10, 0, 75)
LNlnIbdD.Text = JwZliPITOK("ZxurrSkta", 6)
LNlnIbdD.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
LNlnIbdD.TextColor3 = Color3.new(1, 1, 1)
LNlnIbdD.Font = Enum.Font.Gotham
LNlnIbdD.TextSize = 13
LNlnIbdD.Visible = false
LNlnIbdD.Parent = aXhmqQxkW

-- Tombol Show Menu 3
local bKSPpgAhWVo = Instance.new(JwZliPITOK("ItmiQjiidc", 15))
bKSPpgAhWVo.Size = UDim2.new(0, 120, 0, 26)
bKSPpgAhWVo.Position = UDim2.new(0, 10, 0, 105)
bKSPpgAhWVo.Text = JwZliPITOK("Awgq Asbi", 14)
bKSPpgAhWVo.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
bKSPpgAhWVo.TextColor3 = Color3.new(1, 1, 1)
bKSPpgAhWVo.Font = Enum.Font.Gotham
bKSPpgAhWVo.TextSize = 13
bKSPpgAhWVo.Visible = false
bKSPpgAhWVo.Parent = aXhmqQxkW

-- External GUI Tracking
local WppTTLXk, cVznjhpnLeo, XeKdESazgd = nil, nil, nil
local wtppfnzRpv, DEySSkXgF, kqYPiYpocLKv = false, false, false

-- Tombol Mata → toggle visibility menu buttons
hNEZuNhB.MouseButton1Click:Connect(function()
	uggbbmWDwera.Visible = not uggbbmWDwera.Visible
	LNlnIbdD.Visible = not LNlnIbdD.Visible
	bKSPpgAhWVo.Visible = not bKSPpgAhWVo.Visible
end)

-- Tombol ❌ → destroy semua GUI
QQVNXhdOFnKR.MouseButton1Click:Connect(function()
	if WppTTLXk then WppTTLXk:Destroy() end
	if cVznjhpnLeo then cVznjhpnLeo:Destroy() end
	if XeKdESazgd then XeKdESazgd:Destroy() end
	aXhmqQxkW:Destroy()
end)

-- Show/Hide Menu 1
uggbbmWDwera.MouseButton1Click:Connect(function()
	if not wtppfnzRpv then
		local ELnCkkuUyluU, iFRIbekx = pcall(function()
			RJqZzZTn(game:HttpGet(JwZliPITOK("myyux://ufxyjgns.htr/wfb/Qe1kDfXl", 5)))()
		end)
		if ELnCkkuUyluU then
			WppTTLXk = luRGjhhhI:WaitForChild(JwZliPITOK("CwkbdZvkxdQes", 10), 5)
			if WppTTLXk then
				wtppfnzRpv = true
				uggbbmWDwera.Text = JwZliPITOK("Wxst", 15)
			end
		else
			warn(JwZliPITOK("Lflfq rjrzfy Rjsz 6:", 5), iFRIbekx)
		end
	else
		WppTTLXk.Enabled = not WppTTLXk.Enabled
		uggbbmWDwera.Text = WppTTLXk.Enabled and JwZliPITOK("Rsno W1", 10) or JwZliPITOK("Kzgo E9", 18)
	end
end)

-- Show/Hide Menu 2
LNlnIbdD.MouseButton1Click:Connect(function()
	if not DEySSkXgF then
		local ELnCkkuUyluU, iFRIbekx = pcall(function()
			RJqZzZTn(game:HttpGet(JwZliPITOK("pbbxa://xiabmjqv.kwu/zie/usRo19N8", 8)))()
		end)
		if ELnCkkuUyluU then
			cVznjhpnLeo = luRGjhhhI:WaitForChild(JwZliPITOK("BvupEspqHvj", 1), 5)
			if cVznjhpnLeo then
				DEySSkXgF = true
				LNlnIbdD.Text = JwZliPITOK("Zavw", 18)
			end
		else
			warn(JwZliPITOK("Uouoz asaioh Asbi 6:", 14), iFRIbekx)
		end
	else
		cVznjhpnLeo.Enabled = not cVznjhpnLeo.Enabled
		LNlnIbdD.Text = cVznjhpnLeo.Enabled and JwZliPITOK("Wxst B7", 15) or JwZliPITOK("Etai Y4", 12)
	end
end)

-- Show/Hide Menu 3
bKSPpgAhWVo.MouseButton1Click:Connect(function()
	if not kqYPiYpocLKv then
		local ELnCkkuUyluU, iFRIbekx = pcall(function()
			RJqZzZTn(game:HttpGet(JwZliPITOK("jvvru://rcuvgdkp.eqo/tcy/8LzyLSvG", 2)))()
		end)
		if ELnCkkuUyluU then
			XeKdESazgd = luRGjhhhI:WaitForChild(JwZliPITOK("DtxawpXtytRft", 11), 5)
			if XeKdESazgd then
				kqYPiYpocLKv = true
				bKSPpgAhWVo.Text = JwZliPITOK("Vwrs", 14)
			end
		else
			warn(JwZliPITOK("Lflfq rjrzfy Rjsz 8:", 5), iFRIbekx)
		end
	else
		XeKdESazgd.Enabled = not XeKdESazgd.Enabled
		bKSPpgAhWVo.Text = XeKdESazgd.Enabled and JwZliPITOK("Ghcd L8", 25) or JwZliPITOK("Apwe U1", 8)
	end
end) end)(...)
