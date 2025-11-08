local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Confirmed = false
task.wait(1)
Confirmed = true

repeat task.wait() until Confirmed

local UserGui = Instance.new("ScreenGui", game.CoreGui)
local UserLabel = Instance.new("TextLabel", UserGui)
local UIGradient = Instance.new("UIGradient")

UserGui.Name = "UserGui"
UserGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UserGui.Enabled = true
UserLabel.Name = "UserLabel"
UserLabel.BackgroundColor3 = Color3.new(1, 1, 1)
UserLabel.BackgroundTransparency = 1
UserLabel.BorderColor3 = Color3.new(0, 0, 0)
UserLabel.Position = UDim2.new(0.80, 0.80, 0.00090, 0)
UserLabel.Size = UDim2.new(0, 135, 0, 50)
UserLabel.Font = Enum.Font.GothamSemibold
UserLabel.Text = "尊敬的寒脚本用户，祝你每天开开心心！"
UserLabel.TextColor3 = Color3.new(1, 1, 1)
UserLabel.TextScaled = true
UserLabel.TextWrapped = true
UserLabel.Visible = true

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)),
    ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)),
    ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)),
    ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))
}
UIGradient.Rotation = 10
UIGradient.Parent = UserLabel

local Window = Rayfield:CreateWindow({
    Name = "寒",
    LoadingTitle = "加载中...",
    LoadingSubtitle = "感谢使用",
    ConfigurationSaving = {
        Enabled = false,
    },
})

local Tab1 = Window:CreateTab("公告")
local Tab2 = Window:CreateTab("寒的服务器")
local Tab3 = Window:CreateTab("不知名")
local Tab4 = Window:CreateTab("通用")

local ButtonExample = Tab1:CreateButton({
about:AddParagraph("该脚本免费")
about:AddParagraph("作者:劫")
about:AddParagraph("帮助者:666")

Tab:AddButton({
	Name = "复制作者QQ",
	Callback = function()
     setclipboard("2368406374")
  	end
})

local ButtonExample = Tab2:CreateButton({
    Name = "战争大亨 内测版",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/21sd/HanHud/19f9d014130353923b6520e64d79b44f365dc642/Protected_4525947765576429.lua.txt"))()
        print("按钮被点击了!")
    end,
})

local ButtonExample = Tab3:CreateButton({
    Name = "输入框",
    PlaceholderText = "输入",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print("输入:", Text)
    end,
})

local KeybindExample = Tab3:CreateKeybind({
    Name = "键位绑定",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "KeybindExample", 
    Callback = function(Keybind)
        print("按下的键:", Keybind)
    end,
})

local ButtonExample = Tab4:CreateButton({
Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
	end 
})

Tab:AddButton({
	Name = "速度更改",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Zuw5T7DP",true))()
	end    
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})