local LBLG = Instance.new("ScreenGui")
local LBL = Instance.new("TextLabel")
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75, 0, 0.010, 0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end

Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "寒<font color='#00FF00'>脚本</font>",
    Icon = "rbxassetid://81944629903864",
    IconTransparency = 0.5,
    IconThemed = true,
    Author = "作者:劫 帮助者:2420253813(希望) 2420253813(。。。)",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(400, 300),
    Transparent = true,
    Theme = "Light",
    User = {
        Enabled = true,
        Callback = function() print("clicked") end,
        Anonymous = false
    },
    SideBarWidth = 200,
    ScrollBarEnabled = true,
    Background = "rbxassetid://81507229860504"
})

Window:EditOpenButton({
    Title = "寒脚本",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 3,
    StrokeColor = Color3.fromRGB(255, 0, 0),
    StrokeGradient = {
        Color = Color3.fromRGB(255, 165, 0),
        Rotation = 90
    },
    Draggable = true,
})

Window:Tag({
    Title = "正式版",
    Color = Color3.fromHex("#30ff6a")
})
Window:Tag({
    Title = "免费公益",
    Color = Color3.fromHex("#315dff")
})

local Tabs = {
    Han = Window:Section({ Title = "主要功能", Opened = true }),
    Han2 = Window:Section({ Title = "视觉功能", Opened = true }),
    Ul = Window:Section({ Title = "设置", Opened = true }),
}

local TabHandles = {
    Han = Tabs.Main:Tab({ Title = "玩家功能", Icon = "layout-grid" }),
    Han2 = Tabs.Visual:Tab({ Title = "透视功能", Icon = "layout-grid" }),
    Ul = Tabs.Settings:Tab({ Title = "UI设置", Icon = "layout-grid" }),
}

TabHandles.Han:Paragraph({
    Title = "寒脚本 - 玩家功能",
    Desc = "基础玩家功能设置区域",
    Image = "rbxassetid://81944629903864",
    ImageSize = 42,
    Thumbnail = "rbxassetid://106059549481927",
    ThumbnailSize = 120,
})

local Button = TabHandles.Han:Button({
    Title = "无限跳『不能关闭』",
    Desc = "启用无限跳跃功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "无限跳功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local WalkSpeedSlider = TabHandles.Han:Slider({
     Title = "人物速度",
     Desc = "调节角色移动速度",
     Value = {
         Min = 16.0,
         Max = 400.0,
         Default = 16.0,
     },
     Step = 1.0,
     Callback = function(value)
         local char = game.Players.LocalPlayer.Character
         if char and char:FindFirstChild("Humanoid") then
             char.Humanoid.WalkSpeed = value
         end
     end
})

local Button = TabHandles.Han:Button({
    Title = "无头+断腿美化",
    Desc = "启用美化功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Permanent-Headless-And-korblox-Script-4140"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "美化功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "反挂机v2",
    Desc = "启用反挂机v2功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "反挂机v2功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "铁拳",
    Desc = "启用铁拳功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "铁拳功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "旋转甩飞",
    Desc = "启用旋转甩飞功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%97%8B%E8%BD%AC.lua"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "旋转甩飞功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "碰到就飞",
    Desc = "启用碰到就飞功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "碰到就飞功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "全图甩飞",
    Desc = "启用全图甩飞功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "全图甩飞功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "指定甩飞(简易版)",
    Desc = "启用指定甩飞(简易版)功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet(('https://pastefy.app/9SmQXduA/raw'),true))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "指定甩飞(简易版)功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "防甩飞",
    Desc = "启用防甩飞功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/Scripts/Main/AntiFling.lua"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "防甩飞功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "玩家加入提示",
    Desc = "启用玩家加入提示功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua'))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "玩家加入提示功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "最高画质",
    Desc = "启用最高画质功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "最高画质功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "光影v4",
    Desc = "启用光影v4功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "光影v4功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "RTX高仿",
    Desc = "启用RTX高仿功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "RTX高仿功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "光影深",
    Desc = "启用光影深功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "光影深功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "光影浅",
    Desc = "启用光影浅功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "光影浅功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "透视",
    Desc = "启用透视功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "透视功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "子弹追踪",
    Desc = "启用子弹追踪功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "子弹追踪功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "零件破坏者v2",
    Desc = "启用零件破坏者v2功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/-/main/零件破坏者v2"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "零件破坏者v2功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "黑洞v5",
    Desc = "启用黑洞v5功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/DN0upqNm"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "黑洞v5功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "黑洞v6",
    Desc = "启用黑洞v6功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/chesslovers69/Super-ring-parts-v6/refs/heads/main/Bylukaslol"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "黑洞v6功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local Button = TabHandles.Han:Button({
    Title = "黑洞v7",
    Desc = "启用黑洞v7功能",
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/QYUALL7N"))()
        WindUI:Notify({
            Title = "寒脚本",
            Content = "黑洞v7功能加载成功",
            Duration = 3,
            Icon = "layout-grid",
        })        
    end
})

local JumpPowerSlider = TabHandles.Han:Slider({
     Title = "人物跳跃力",
     Desc = "调节角色跳跃高度",
     Value = {
         Min = 0.0,
         Max = 1000.0,
         Default = 50.0,
     },
     Step = 0.1,
     Callback = function(value)
         local char = game.Players.LocalPlayer.Character
         if char and char:FindFirstChild("Humanoid") then
             char.Humanoid.JumpPower = value
         end
     end
})

game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
    local humanoid = newChar:WaitForChild("Humanoid")
    humanoid.JumpPower = JumpPowerSlider:GetValue()
end)

local NightVisionEnabled = false
local OriginalLighting = {
    Ambient = game.Lighting.Ambient,
    Brightness = game.Lighting.Brightness,
    FogEnd = game.Lighting.FogEnd,
}

local function EnableNightVision()
    if NightVisionEnabled then return end
    NightVisionEnabled = true
    
    OriginalLighting = {
        Ambient = game.Lighting.Ambient,
        Brightness = game.Lighting.Brightness,
        FogEnd = game.Lighting.FogEnd,
    }
    
    game.Lighting.Ambient = Color3.new(1, 1, 1)
    game.Lighting.Brightness = 2
    game.Lighting.FogEnd = 10000
    
    WindUI:Notify({
        Title = "寒脚本",
        Content = "夜视功能已开启",
        Duration = 3,
        Icon = "moon",
    })
end

local function DisableNightVision()
    if not NightVisionEnabled then return end
    NightVisionEnabled = false
    
    game.Lighting.Ambient = OriginalLighting.Ambient
    game.Lighting.Brightness = OriginalLighting.Brightness
    game.Lighting.FogEnd = OriginalLighting.FogEnd
    
    WindUI:Notify({
        Title = "寒脚本",
        Content = "夜视功能已关闭",
        Duration = 3,
        Icon = "sun",
    })
end

local NightVisionToggle = TabHandles.Han:Toggle({
    Title = "夜视功能", 
    Desc = "在黑暗中看清环境",
    Value = false, 
    Callback = function(Value)
        if Value then
            EnableNightVision()
        else
            DisableNightVision()
        end
    end
})

local NightVisionSlider = TabHandles.Han:Slider({
    Title = "夜视亮度",
    Desc = "调节夜视效果的亮度",
    Value = {
        Min = 1.0,
        Max = 10.0,
        Default = 2.0,
    },
    Step = 0.5,
    Callback = function(value)
        if NightVisionEnabled then
            game.Lighting.Brightness = value
        end
    end
})

local Toggle = TabHandles.Han:Toggle({
    Title = "环境光开关", 
    Desc = "开启/关闭环境光照",
    Value = false, 
    Callback = function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
        WindUI:Notify({
            Title = "寒脚本",
            Content = Value and "环境光已开启" or "环境光已关闭",
            Duration = 3,
            Icon = "sun",
        })
    end
})

getgenv().HanScript = "寒脚本QQ群1067027551"

local ESPEnabled = false
local ESP_Players = {}

local function CreateESP(player)
    if ESP_Players[player] then return end
    
    local character = player.Character
    if not character then return end
    
    if not character:FindFirstChild("HumanoidRootPart") then
        character:WaitForChild("HumanoidRootPart")
    end
    
    local highlight = Instance.new("Highlight")
    highlight.Name = "HanESP"
    highlight.Parent = character
    highlight.Adornee = character
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.FillColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.9
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.OutlineTransparency = 0
    
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "HanESPInfo"
    billboard.Parent = character
    billboard.Adornee = character:WaitForChild("Head")
    billboard.Size = UDim2.new(0, 200, 0, 80)
    billboard.StudsOffset = Vector3.new(0, 3.5, 0)
    billboard.AlwaysOnTop = true
    billboard.MaxDistance = 10000
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Name = "PlayerName"
    nameLabel.Parent = billboard
    nameLabel.Size = UDim2.new(1, 0, 0.4, 0)
    nameLabel.Position = UDim2.new(0, 0, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextScaled = true
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextStrokeTransparency = 0
    nameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    
    local distanceLabel = Instance.new("TextLabel")
    distanceLabel.Name = "Distance"
    distanceLabel.Parent = billboard
    distanceLabel.Size = UDim2.new(1, 0, 0.3, 0)
    distanceLabel.Position = UDim2.new(0, 0, 0.4, 0)
    distanceLabel.BackgroundTransparency = 1
    distanceLabel.Text = "计算中..."
    distanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    distanceLabel.TextScaled = true
    distanceLabel.Font = Enum.Font.Gotham
    distanceLabel.TextStrokeTransparency = 0
    distanceLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    
    local healthLabel = Instance.new("TextLabel")
    healthLabel.Name = "Health"
    healthLabel.Parent = billboard
    healthLabel.Size = UDim2.new(1, 0, 0.3, 0)
    healthLabel.Position = UDim2.new(0, 0, 0.7, 0)
    healthLabel.BackgroundTransparency = 1
    healthLabel.Text = "血量: 100"
    healthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    healthLabel.TextScaled = true
    healthLabel.Font = Enum.Font.Gotham
    healthLabel.TextStrokeTransparency = 0
    healthLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    
    ESP_Players[player] = {
        Highlight = highlight,
        Billboard = billboard,
        NameLabel = nameLabel,
        DistanceLabel = distanceLabel,
        HealthLabel = healthLabel
    }
end

local function RemoveESP(player)
    if ESP_Players[player] then
        if ESP_Players[player].Highlight then
            ESP_Players[player].Highlight:Destroy()
        end
        if ESP_Players[player].Billboard then
            ESP_Players[player].Billboard:Destroy()
        end
        ESP_Players[player] = nil
    end
end

local function UpdateESP()
    if not ESPEnabled then return end
    
    local localPlayer = game.Players.LocalPlayer
    local localCharacter = localPlayer.Character
    if not localCharacter then return end
    
    local localRoot = localCharacter:FindFirstChild("HumanoidRootPart")
    if not localRoot then return end
    
    for player, espData in pairs(ESP_Players) do
        if player ~= localPlayer and player.Character then
            local character = player.Character
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            local humanoid = character:FindFirstChild("Humanoid")
            
            if rootPart then
                local distance = (localRoot.Position - rootPart.Position).Magnitude
                espData.DistanceLabel.Text = string.format("距离: %.1f", distance)
                
                if distance < 15 then
                    espData.DistanceLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                elseif distance < 30 then
                    espData.DistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
                else
                    espData.DistanceLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                end
                
                if humanoid then
                    local health = math.floor(humanoid.Health)
                    local maxHealth = math.floor(humanoid.MaxHealth)
                    espData.HealthLabel.Text = string.format("血量: %d/%d", health, maxHealth)
                    
                    if health / maxHealth < 0.3 then
                        espData.HealthLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                    elseif health / maxHealth < 0.7 then
                        espData.HealthLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
                    else
                        espData.HealthLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                    end
                end
            end
        end
    end
end

local function EnableHanESP()
    if ESPEnabled then return end
    ESPEnabled = true
    
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            spawn(function()
                CreateESP(player)
            end)
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(character)
            wait(1)
            if ESPEnabled then
                CreateESP(player)
            end
        end)
    end)
    
    game.Players.PlayerRemoving:Connect(function(player)
        RemoveESP(player)
    end)
    
    for _, player in pairs(game.Players:GetPlayers()) do
        player.CharacterAdded:Connect(function(character)
            if ESPEnabled and player ~= game.Players.LocalPlayer then
                wait(2)
                CreateESP(player)
            end
        end)
    end
    
    game:GetService("RunService").Heartbeat:Connect(UpdateESP)
    
    WindUI:Notify({
        Title = "寒脚本",
        Content = "透视功能已开启 - QQ群:1067027551",
        Duration = 5,
        Icon = "eye",
    })
end

local function DisableHanESP()
    if not ESPEnabled then return end
    ESPEnabled = false
    
    for player, espData in pairs(ESP_Players) do
        RemoveESP(player)
    end
    ESP_Players = {}
    
    WindUI:Notify({
        Title = "寒脚本",
        Content = "透视功能已关闭",
        Duration = 3,
        Icon = "eye-off",
    })
end

TabHandles.Han2:Paragraph({
    Title = "寒透视功能",
    Desc = "显示玩家位置、距离和血量信息\n最大支持10000距离显示",
    Image = "eye",
    ImageSize = 30,
    Thumbnail = "rbxassetid://106059549481927",
    ThumbnailSize = 80,
})

local HanESPToggle = TabHandles.Han2:Toggle({
    Title = "寒透视", 
    Desc = "开启/关闭玩家透视功能",
    Value = false, 
    Callback = function(Value)
        if Value then
            EnableHanESP()
        else
            DisableHanESP()
        end
    end
})

TabHandles.Han2:Dropdown({
    Title = "透视颜色",
    Desc = "选择透视框的轮廓颜色",
    Values = {"白色", "红色", "绿色", "蓝色", "紫色", "黄色"},
    Value = "白色",
    Callback = function(selected)
        local colorMap = {
            ["白色"] = Color3.fromRGB(255, 255, 255),
            ["红色"] = Color3.fromRGB(255, 0, 0),
            ["绿色"] = Color3.fromRGB(0, 255, 0),
            ["蓝色"] = Color3.fromRGB(0, 0, 255),
            ["紫色"] = Color3.fromRGB(255, 0, 255),
            ["黄色"] = Color3.fromRGB(255, 255, 0)
        }
        
        for player, espData in pairs(ESP_Players) do
            if espData.Highlight then
                espData.Highlight.OutlineColor = colorMap[selected]
            end
        end
    end
})

TabHandles.Han2:Slider({
    Title = "线条粗细",
    Desc = "设置透视框线条粗细",
    Value = {
        Min = 1,
        Max = 5,
        Default = 2,
    },
    Step = 1,
    Callback = function(value)
        for player, espData in pairs(ESP_Players) do
            if espData.Highlight then
                espData.Highlight.OutlineTransparency = 1 - (value / 5)
            end
        end
    end
})

TabHandles.Han2:Slider({
    Title = "显示距离",
    Desc = "设置最大显示距离",
    Value = {
        Min = 100,
        Max = 10000,
        Default = 5000,
    },
    Step = 100,
    Callback = function(value)
        for player, espData in pairs(ESP_Players) do
            if espData.Billboard then
                espData.Billboard.MaxDistance = value
            end
        end
    end
})

TabHandles.Han2:Button({
    Title = "刷新透视",
    Desc = "重新加载所有玩家的透视",
    Icon = "refresh-cw",
    Callback = function()
        if ESPEnabled then
            DisableHanESP()
            wait(0.5)
            EnableHanESP()
            WindUI:Notify({
                Title = "透视功能",
                Content = "透视已刷新",
                Duration = 2,
                Icon = "refresh-cw",
            })
        else
            WindUI:Notify({
                Title = "透视功能",
                Content = "请先开启透视功能",
                Duration = 2,
                Icon = "eye-off",
            })
        end
    end
})

TabHandles.Ul:Paragraph({
    Title = "UI设置",
    Desc = "个性化您的脚本界面",
    Image = "settings",
    ImageSize = 30,
})

local themes = {}
for themeName, _ in pairs(WindUI:GetThemes()) do
    table.insert(themes, themeName)
end
table.sort(themes)

local themeDropdown = TabHandles.Ul:Dropdown({
    Title = "主题选择",
    Values = themes,
    Value = "Light",
    Callback = function(theme)
        WindUI:SetTheme(theme)
        WindUI:Notify({
            Title = "主题应用",
            Content = theme,
            Icon = "palette",
            Duration = 2
        })
    end
})

local transparencySlider = TabHandles.Ul:Slider({
    Title = "透明度",
    Value = { 
        Min = 0,
        Max = 1,
        Default = 0.2,
    },
    Step = 0.1,
    Callback = function(value)
        Window:ToggleTransparency(tonumber(value) > 0)
        WindUI.TransparencyValue = tonumber(value)
    end
})

local DarkThemeToggle = TabHandles.Ul:Toggle({
    Title = "启用黑色主题",
    Desc = "使用黑色调主题方案",
    Value = false,
    Callback = function(state)
        WindUI:SetTheme(state and "Dark" or "Light")
        themeDropdown:Select(state and "Dark" or "Light")
        WindUI:Notify({
            Title = "主题设置",
            Content = state and "已启用黑色主题" or "已启用Light主题",
            Duration = 2,
            Icon = "palette",
        })
    end
})

spawn(function()
    wait(1)
    WindUI:SetTheme("Light")
    themeDropdown:Select("Light")
    if DarkThemeToggle then
        DarkThemeToggle:SetValue(false)
    end
end)

game:GetService("CoreGui").DescendantRemoving:Connect(function(descendant)
    if descendant.Name == "WindUI" then
        if ESPEnabled then
            DisableHanESP()
        end
        if NightVisionEnabled then
            DisableNightVision()
        end
    end
end)

WindUI:Notify({
    Title = "寒脚本",
    Content = "寒脚本加载成功！QQ群:1067027551",
    Duration = 5,
    Icon = "check",
})