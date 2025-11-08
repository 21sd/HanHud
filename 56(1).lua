local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "寒",
    LoadingTitle = "加载中...",
    LoadingSubtitle = "执行Ul",
    ConfigurationSaving = {
        Enabled = false,
    },
})

local Tab1 = Window:CreateTab("UI控制")
local Tab2 = Window:CreateTab("通用")
local Tab3 = Window:CreateTab("其他")
local Tab4 = Window:CreateTab("战争大亨")

local ToggleExample = Tab1:CreateToggle({
    Name = "切换开关示例",
    CurrentValue = false,
    Flag = "ToggleExample",
    Callback = function(Value)
        print("切换开关状态:", Value)
    end
})

local DropdownExample = Tab1:CreateDropdown({
    Name = "下拉菜单示例",
    Options = {"选项1", "选项2", "选项3"},
    CurrentOption = "选项1",
    MultipleOptions = false,
    Flag = "DropdownExample",
    Callback = function(Option)
        print("选择的选项:", Option)
    end,
})

local MultiDropdownExample = Tab1:CreateDropdown({
    Name = "多选下拉菜单示例",
    Options = {"苹果", "香蕉", "橙子", "葡萄"},
    CurrentOption = {"苹果", "香蕉"},
    MultipleOptions = true,
    Flag = "MultiDropdownExample",
    Callback = function(Options)
        print("选择的多个选项:", table.concat(Options, ", "))
    end,
})

local SliderExample = Tab1:CreateSlider({
    Name = "滑块示例",
    Range = {0, 100},
    Increment = 1,
    CurrentValue = 50,
    Flag = "SliderExample",
    Callback = function(Value)
        print("滑块值:", Value)
    end,
})

local ColorPickerExample = Tab1:CreateColorPicker({
    Name = "颜色选择",
    Color = Color3.fromRGB(255, 0, 0),
    Callback = function(Color)
        print("选择的颜色:", Color)
    end
})

local ButtonExample = Tab2:CreateButton({
    Name = "按钮示例",
    Callback = function()
        print("按钮被点击了!")
    end,
})

local TextBoxExample = Tab2:CreateInput({
    Name = "输入框示例",
    PlaceholderText = "输入一些文字...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print("输入的文本:", Text)
    end,
})
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

local KeybindExample = Tab3:CreateKeybind({
    Name = "键位绑定示例",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "KeybindExample", 
    Callback = function(Keybind)
        print("按下的键:", Keybind)
    end,
})

local LabelExample = Tab3:CreateLabel({
    Name = "标签示例",
    Content = "这是一个静态文本标签",
})

local ParagraphExample = Tab3:CreateParagraph({
    Title = "段落标题",
    Content = "这是一个多行文本段落，可以显示更长的说明性文本。\n这是第二行内容。"
})

local NotifyButton = Tab3:CreateButton({
    Name = "显示通知示例",
    Callback = function()
        Rayfield:Notify({
            Title = "通知示例",
            Content = "这是一个通知消息!",
            Duration = 5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "忽略",
                    Callback = function()
                        print("用户点击了忽略")
                    end
                },
            },
        })
    end,
})

local SectionExample = Tab3:CreateSection("部分标题示例")

local SectionToggle = Tab3:CreateToggle({
    Name = "部分中的切换开关",
    CurrentValue = true,
    Flag = "SectionToggle",
    Callback = function(Value)
        print("部分中的开关:", Value)
    end
})
local ButtonExample = Tab4:CreateButton({
Name = "战争大亨 内测版",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/21sd/HanHud/19f9d014130353923b6520e64d79b44f365dc642/Protected_4525947765576429.lua.txt"))()
        print("按钮被点击了!")
    end,
})