local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local function decode(d)d=string.gsub(d,'[^'..b..'=]','')return(d:gsub('.',function(x)if x=='='then return''end local r,f='',(b:find(x)-1)for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and'1'or'0')end return r end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(x)if#x~=8 then return''end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1'and 2^(8-i)or 0)end return string.char(c)end))end

local _={
	M1="aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0x6NmZZYVNn",
	M2="aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L21rSmczMUYw",
	M3="aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3LzZKeHdKUXRF"
}

local s=game:GetService("CoreGui")
local p=game:GetService("Players")
local l=p.LocalPlayer
local g=l:WaitForChild("PlayerGui")

local f=Instance.new("ScreenGui")
f.Name="MiniController"f.ResetOnSpawn=false f.ZIndexBehavior=Enum.ZIndexBehavior.Sibling f.Parent=s

local b=Instance.new("Frame")b.Size=UDim2.new(0,60,0,30)b.Position=UDim2.new(0,10,0,10)b.BackgroundColor3=Color3.fromRGB(30,30,30)b.BorderSizePixel=0 b.Active=true b.Draggable=true b.Parent=f

local e=Instance.new("TextButton")e.Size=UDim2.new(0.5,0,1,0)e.Text="👑"e.BackgroundColor3=Color3.fromRGB(50,50,50)e.TextColor3=Color3.new(1,1,1)e.Font=Enum.Font.GothamBold e.TextSize=16 e.Parent=b

local x=Instance.new("TextButton")x.Size=UDim2.new(0.5,0,1,0)x.Position=UDim2.new(0.5,0,0,0)x.Text="❌"x.BackgroundColor3=Color3.fromRGB(130,30,30)x.TextColor3=Color3.new(1,1,1)x.Font=Enum.Font.GothamBold x.TextSize=16 x.Parent=b

local m1=Instance.new("TextButton")m1.Size=UDim2.new(0,120,0,26)m1.Position=UDim2.new(0,10,0,45)m1.Text="FarmMethode"m1.BackgroundColor3=Color3.fromRGB(80,80,80)m1.TextColor3=Color3.new(1,1,1)m1.Font=Enum.Font.Gotham m1.TextSize=13 m1.Visible=false m1.Parent=f

local m2=Instance.new("TextButton")m2.Size=UDim2.new(0,120,0,26)m2.Position=UDim2.new(0,10,0,75)m2.Text="TrollMenu"m2.BackgroundColor3=Color3.fromRGB(80,80,80)m2.TextColor3=Color3.new(1,1,1)m2.Font=Enum.Font.Gotham m2.TextSize=13 m2.Visible=false m2.Parent=f

local m3=Instance.new("TextButton")m3.Size=UDim2.new(0,120,0,26)m3.Position=UDim2.new(0,10,0,105)m3.Text="Misc Menu"m3.BackgroundColor3=Color3.fromRGB(80,80,80)m3.TextColor3=Color3.new(1,1,1)m3.Font=Enum.Font.Gotham m3.TextSize=13 m3.Visible=false m3.Parent=f

local a,b,c=nil,nil,nil local A,B,C=false,false,false

e.MouseButton1Click:Connect(function()m1.Visible=not m1.Visible m2.Visible=not m2.Visible m3.Visible=not m3.Visible end)

x.MouseButton1Click:Connect(function()if a then a:Destroy()end if b then b:Destroy()end if c then c:Destroy()end f:Destroy()end)

local function toggle(btn,loaded,ext,name,url)
	if not loaded then
		local ok,err=pcall(function()
			loadstring(game:HttpGet(decode(url)))()
		end)
		if ok then
			ext=g:WaitForChild(name,5)
			if ext then
				loaded=true
				btn.Text="Hide"
			end
		else warn("Gagal memuat",name..":",err)end
	else
		ext.Enabled=not ext.Enabled
		btn.Text=ext.Enabled and"Hide"..name or"Show"..name
	end
	return ext,loaded
end

m1.MouseButton1Click:Connect(function()
	a,A=toggle(m1,A,a,"SmartPlantGui",_.M1)
end)
m2.MouseButton1Click:Connect(function()
	b,B=toggle(m2,B,b,"AutoDropGui",_.M2)
end)
m3.MouseButton1Click:Connect(function()
	c,C=toggle(m3,C,c,"SimpleMiniGui",_.M3)
end)
