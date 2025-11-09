local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "寒脚本",
    Size = UDim2.fromOffset(400, 350),
    Theme = "Dark",
    Transparent = true,
})

local Tabs = {
    Basic = Window:Tab({ Title = "公告", Icon = "zap" }),
    Input = Window:Tab({ Title = "作者信息", Icon = "settings" }),
    Common = Window:Tab({ Title = "通用", Icon = "message" })
}

Tabs.Basic:Button({
    Title = "1",
    Callback = function()
        WindUI:Notify({
            Title = "按钮1",
            Content = "按钮1被点击",
            Duration = 2
        })
    end
})

Tabs.Basic:Button({
    Title = "按钮2",
    Callback = function()
        WindUI:Notify({
            Title = "按钮2",
            Content = "按钮2被点击",
            Duration = 2
        })
    end
})

Tabs.Basic:Toggle({
    Title = "开关1",
    Callback = function(state)
        WindUI:Notify({
            Title = "开关1",
            Content = "状态: " .. tostring(state),
            Duration = 2
        })
    end
})

Tabs.Basic:Toggle({
    Title = "开关2",
    Callback = function(state)
        WindUI:Notify({
            Title = "开关2",
            Content = "状态: " .. tostring(state),
            Duration = 2
        })
    end
})

Tabs.Basic:Slider({
    Title = "滑块",
    Value = {Min = 0, Max = 100, Default = 50},
    Callback = function(value)
        -- 空回调，仅做UI展示
    end
})

Tabs.Input:Paragraph({
    Title = "作者信息",
    Desc = [[
本人QQ2368406374(劫)
帮助者:2480300784(希望) )另一个2420253813(666)
半缝合脚本也有自制的
需要更新什么私信
    ]]
})

Tabs.Common:Slider({
    Title = "移动速度",
    Value = {Min = 1, Max = 50, Default = 16},
    Callback = function(value)
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = value
            WindUI:Notify({
                Title = "速度修改",
                Content = "移动速度已修改为: " .. value,
                Duration = 2
            })
        end
    end
})

Tabs.Common:Button({
    Title = "飞行V5",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-fly-Gui-v5-64340"))()
        WindUI:Notify({
            Title = "飞行功能",
            Content = "飞行V5已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "移动速度(按钮版)",
    Value = {Min = 1, Max = 50, Default = 16},
    Callback = function(value)
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = value
            WindUI:Notify({
                Title = "速度修改",
                Content = "移动速度已设为: " .. value,
                Duration = 2
            })
        end
    end
})

Tabs.Common:Button({
    Title = "死亡笔记",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
        WindUI:Notify({
            Title = "死亡笔记",
            Content = "死亡笔记功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "铁拳",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
        WindUI:Notify({
            Title = "铁拳",
            Content = "铁拳功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "人物无敌",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
        WindUI:Notify({
            Title = "人物无敌",
            Content = "人物无敌功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "R15陆管",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
        WindUI:Notify({
            Title = "R15陆管",
            Content = "R15陆管功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "R6陆管",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
        WindUI:Notify({
            Title = "R6陆管",
            Content = "R6陆管功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "无限跳",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
        WindUI:Notify({
            Title = "无限跳",
            Content = "无限跳功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "全图甩飞",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
        WindUI:Notify({
            Title = "全图甩飞",
            Content = "全图甩飞功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "碰到就飞",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
        WindUI:Notify({
            Title = "碰到就飞",
            Content = "碰到就飞功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "无敌少侠(1)",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/JungleScripts/775c6366d91d39fe2633c5805a1d0c23/raw/c8de949402393510a27bcf4482c957b6c3bed2c2/gistfile1.txt"))()
        WindUI:Notify({
            Title = "准备好成为成都超人了吗",
            Content = "成都超人功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "无敌少侠(2)",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/JungleScripts/8dc95c7ce10e86d353d606334a77de88/raw/08f3e2967701463da36f2fc28e9943e63799dd3f/gistfile1.txt"))()
        WindUI:Notify({
            Title = "准备好成为成都超人了吗",
            Content = "成都超人功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "防甩飞",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Linux6699/DaHubRevival/main/AntiFling.lua'))()
        WindUI:Notify({
            Title = "正在加载",
            Content = "防甩飞功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "单一物体漂浮",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/6669178/main/单一物体飞行载自己最终优化版"))()
        WindUI:Notify({
            Title = "正在加载",
            Content = "碰到就飞功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "全局物体漂浮",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/6669178/main/全局物体漂浮最终优化版"))()
        WindUI:Notify({
            Title = "正在加载",
            Content = "全局物体漂浮功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "球形黑洞",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/Soul-Ring/main/%E5%8F%AC%E5%94%A4%E9%AD%82%E7%8E%AF"))()
        WindUI:Notify({
            Title = "正在加载",
            Content = "球形黑洞功能已加载",
            Duration = 2
        })
    end
})

Tabs.Common:Button({
    Title = "零件破坏者v2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/-/main/零件破坏者v2"))()
        WindUI:Notify({
            Title = "正在加载",
            Content = "零件破坏者v2功能已加载",
            Duration = 2
        })
    end
})

Window:SelectTab(1)

WindUI:Notify({
    Title = "UI就绪",
    Content = "UI已完成",
    Duration = 3
})

Window:OnClose(function()
    print("UI closed.")
end)
