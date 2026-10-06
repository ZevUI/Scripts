-- Mario Hub | Created By Klix | discord.gg/46v2XZu5xA

local t1 = {}
local t2 = {
	value1 = cloneref(game:GetService("Workspace")),
	value2 = cloneref(game:GetService("RunService")),
	value3 = cloneref(game:GetService("Players"))
}
local CoreGui = game:GetService("CoreGui")

t2.value4 = cloneref(game:GetService("GuiService"))
t2.value5 = cloneref(game:GetService("UserInputService"))
t2.value6 = t2.value3.LocalPlayer
local timestamp = tick()
t2.value7 = -45
t2.value8 = timestamp
t2.value9 = Color3.fromRGB(255, 60, 60)
t2.value10 = Color3.fromRGB(0, 0, 0)

function t2.value11(p1, p2)
    local v25 = Instance.new(p1)

    for k, v in pairs(p2) do
        v25[k] = v
    end

    return v25
end
local value11 = t2.value11
local Global = Enum.ZIndexBehavior.Global
t2.value12 = value11("ScreenGui", {
	Parent = CoreGui,
	Name = "MarioHub_ESP",
	ZIndexBehavior = Global
})
function t2.value13(p3)
    local value11_2 = t2.value11
    local value12 = t2.value12
    local uDim2 = UDim2.new(0, 100, 0, 20)
    local vector2 = Vector2.new(0.5, 0.5)
    local color3 = Color3.fromRGB(255, 255, 255)
    local Code = Enum.Font.Code
    local color3_2 = Color3.fromRGB(0, 0, 0)
    local v36 = value11_2("TextLabel", {
		Parent = value12,
		Size = uDim2,
		AnchorPoint = vector2,
		BackgroundTransparency = 1,
		TextColor3 = color3,
		Font = Code,
		TextSize = 11,
		TextStrokeTransparency = 0,
		TextStrokeColor3 = color3_2,
		RichText = true
	})
    local v37 = t2.value11("UIGradient", {
		Parent = v36,
		Rotation = 0
	})
    local value11_3 = t2.value11
    local value12_2 = t2.value12
    local uDim2_2 = UDim2.new(0, 100, 0, 20)
    local vector2_2 = Vector2.new(0.5, 0.5)
    local color3_3 = Color3.fromRGB(255, 255, 255)
    local Code2 = Enum.Font.Code
    local color3_4 = Color3.fromRGB(0, 0, 0)
    local v45 = value11_3("TextLabel", {
		Parent = value12_2,
		Size = uDim2_2,
		AnchorPoint = vector2_2,
		BackgroundTransparency = 1,
		TextColor3 = color3_3,
		Font = Code2,
		TextSize = 11,
		TextStrokeTransparency = 0,
		TextStrokeColor3 = color3_4
	})
    local value11_4 = t2.value11
    local value12_3 = t2.value12
    local color3_5 = Color3.fromRGB(0, 0, 0)
    local v49 = value11_4("Frame", {
		Parent = value12_3,
		BackgroundColor3 = color3_5,
		BackgroundTransparency = 0.75,
		BorderSizePixel = 0
	})
    local v50 = t2.value11("UIGradient", {
		Parent = v49
	})
    local value11_5 = t2.value11
    local color3_6 = Color3.fromRGB(255, 255, 255)
    local Miter = Enum.LineJoinMode.Miter
    local v54 = value11_5("UIStroke", {
		Parent = v49,
		Transparency = 0,
		Color = color3_6,
		LineJoinMode = Miter
	})
    local v55 = t2.value11("UIGradient", {
		Parent = v54
	})
    local value11_6 = t2.value11
    local value12_4 = t2.value12
    local color3_7 = Color3.fromRGB(255, 255, 255)
    local v59 = value11_6("Frame", {
		Parent = value12_4,
		BackgroundColor3 = color3_7,
		BackgroundTransparency = 0
	})
    local value11_7 = t2.value11
    local value12_5 = t2.value12
    local color3_8 = Color3.fromRGB(0, 0, 0)
    local v63 = value11_7("Frame", {
		Parent = value12_5,
		ZIndex = -1,
		BackgroundColor3 = color3_8,
		BackgroundTransparency = 0
	})
    local v64 = t2.value11("UIGradient", {
		Parent = v59,
		Rotation = -90
	})

    local function v65()
        v49.Visible = false
        v36.Visible = false
        v45.Visible = false
        v59.Visible = false
        v63.Visible = false
    end

    t2.value2.RenderStepped:Connect(function()
        local v147 = not p3

        if not v147 then
            v147 = not p3.Character

            if not v147 then
                v147 = not p3.Character:FindFirstChild("HumanoidRootPart")
            end
        end

        if v147 then
            v65()

            return
        end

        local HumanoidRootPart = p3.Character.HumanoidRootPart
        local Humanoid = p3.Character:FindFirstChildOfClass("Humanoid")

        if not Humanoid then
            v65()

            return
        end

        local CurrentCamera = t2.value1.CurrentCamera
        local v151, v152 = CurrentCamera:WorldToScreenPoint(HumanoidRootPart.Position)
        local v153 = not v152
        local v154 = (CurrentCamera.CFrame.Position - HumanoidRootPart.Position).Magnitude / 3.57

        if not v153 then
            v153 = v154 > 1000 or p3 == t2.value6
        end

        if v153 then
            v65()

            return
        end

        local v155 = HumanoidRootPart.Size.Y * CurrentCamera.ViewportSize.Y / (v151.Z * 2)
        local v156 = 1.25 * v155
        local v157 = 1.9 * v155

        t2.value7 = t2.value7 + (tick() - t2.value8) * 300 * math.cos(0.7853981633974483 * tick() - 1.5707963267948966)
        tick()

        local colorSequence = ColorSequence.new({
			ColorSequenceKeypoint.new(0, t2.value9),
			ColorSequenceKeypoint.new(1, t2.value10)
		})

        v49.Position = UDim2.new(0, v151.X - v156 / 2, 0, v151.Y - v157 / 2)
        v49.Size = UDim2.new(0, v156, 0, v157)
        v49.Visible = true
        v50.Color = colorSequence
        v55.Color = colorSequence
        v50.Rotation = t2.value7
        v55.Rotation = t2.value7

        local v159 = Humanoid.Health / Humanoid.MaxHealth

        v59.Visible = true
        v59.Position = UDim2.new(0, v151.X - v156 / 2 - 6, 0, v151.Y - v157 / 2 + v157 * (1 - v159))
        v59.Size = UDim2.new(0, 2.5, 0, v157 * v159)
        v63.Visible = true
        v63.Position = UDim2.new(0, v151.X - v156 / 2 - 6, 0, v151.Y - v157 / 2)
        v63.Size = UDim2.new(0, 2.5, 0, v157)
        v64.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, t2.value9),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 0, 0))
		})
        v36.Text = p3.Name
        v36.Position = UDim2.new(0, v151.X, 0, v151.Y - v157 / 2 - 9)
        v36.Visible = true
        v37.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
			ColorSequenceKeypoint.new(1, t2.value9)
		})
        v37.Rotation = t2.value7
        v45.Text = string.format("%d m", (math.floor(v154)))
        v45.Position = UDim2.new(0, v151.X, 0, v151.Y + v157 / 2 + 7)
        v45.Visible = true
    end)
end
for _, player in pairs(t2.value3:GetPlayers()) do
    if player ~= t2.value6 then
        coroutine.wrap(t2.value13)(player)
    end
end
t2.value3.PlayerAdded:Connect(function(player)
    coroutine.wrap(t2.value13)(player)
end)
t2.value14 = nil
t2.value14 = {}
function t2.value15(p4, p5)
    table.insert(t2.value14, {
		gradient = p4,
		settings = p5
	})
end
t2.value16 = Instance.new("ScreenGui", CoreGui)
t2.value16.ZIndexBehavior = Enum.ZIndexBehavior.Global
t2.value16.Name = "FOVHolder"
local color3 = Color3.fromRGB(255, 255, 255)
local t3 = {
	On = true,
	Mode = "Center",
	Type = "",
	Color = color3,
	Radius = 120,
	Transparency = 0.55
}
local color3_9 = Color3.fromRGB(255, 255, 255)
local t4 = {
	Properties = t3,
	Outline = {
		On = true,
		Color = color3_9,
		Transparency = 0,
		Thickness = 1
	}
}
local colorSequence = ColorSequence.new({
	ColorSequenceKeypoint.new(0, t2.value9),
	ColorSequenceKeypoint.new(1, t2.value10)
})
local t5 = {
	On = true,
	Color = colorSequence,
	Rotation = {
		Static = 90,
		Auto = true,
		Speed = 120
	}
}
local colorSequence2 = ColorSequence.new({
	ColorSequenceKeypoint.new(0, t2.value9),
	ColorSequenceKeypoint.new(1, t2.value10)
})
local t6 = {
	Static = 90,
	Auto = true,
	Speed = 120
}
t2.value17 = {
	FOV = t4,
	Gradient = {
		FOV = t5,
		["FOV Outline"] = {
			On = true,
			Color = colorSequence2,
			Rotation = t6
		}
	}
}
t2.value18 = (function(_, p7, p8)
    local Frame
    local UIGradient
    local UIGradient2
    if p8.FOV.Properties.On then
        Frame = Instance.new("Frame", p7)
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        Frame.BackgroundTransparency = 1
        Frame.Visible = true
        Frame.Size = UDim2.new(0, p8.FOV.Properties.Radius * 2, 0, p8.FOV.Properties.Radius * 2)

        local PropertiesColor = p8.FOV.Properties.Color

        if not PropertiesColor then
            PropertiesColor = Color3.fromRGB(255, 255, 255)
        end

        Frame.BackgroundColor3 = PropertiesColor
        Frame.BackgroundTransparency = p8.FOV.Properties.Transparency or 0.55
        Instance.new("UICorner", Frame).CornerRadius = UDim.new(0.5, 0)

        local UIStroke = Instance.new("UIStroke", Frame)
        local OutlineColor = p8.FOV.Outline.Color

        if not OutlineColor then
            OutlineColor = Color3.fromRGB(0, 0, 0)
        end

        UIStroke.Color = OutlineColor
        UIStroke.Transparency = p8.FOV.Outline.Transparency or 0
        UIStroke.Thickness = p8.FOV.Outline.Thickness or 1

        if p8.Gradient["FOV Outline"].On then
            UIGradient2 = Instance.new("UIGradient", UIStroke)
            UIGradient2.Color = p8.Gradient["FOV Outline"].Color
            UIGradient2.Rotation = p8.Gradient["FOV Outline"].Rotation.Static or 90
        end

        if p8.Gradient.FOV.On then
            UIGradient = Instance.new("UIGradient", Frame)
            UIGradient.Color = p8.Gradient.FOV.Color
            UIGradient.Rotation = p8.Gradient.FOV.Rotation.Static or 90
        end

        if p8.Gradient.FOV.Rotation.Auto and UIGradient then
            t2.value15(UIGradient, p8.Gradient.FOV.Rotation)
        end

        if p8.Gradient["FOV Outline"].Rotation.Auto and UIGradient2 then
            t2.value15(UIGradient2, p8.Gradient["FOV Outline"].Rotation)
        end
    end

    return Frame
end)(t2.value17.FOV.Properties.Mode, t2.value16, t2.value17)

local function v17(p9, p10)
    if p10 == "Mouse" then
        local GuiInset = t2.value4:GetGuiInset()
        local MouseLocation = t2.value5:GetMouseLocation()

        p9.Position = UDim2.new(0, MouseLocation.X - GuiInset.X, 0, MouseLocation.Y - GuiInset.Y)

        return
    end

    if p10 == "Center" then
        local GuiInset = t2.value4:GetGuiInset()

        p9.Position = UDim2.new(0.5, 0, 0.5, -GuiInset.Y / 2)
    end
end
t2.value2.RenderStepped:Connect(function()
    v17(t2.value18, t2.value17.FOV.Properties.Mode)

    for _, v in pairs(t2.value14) do
        local gradient = v.gradient

        if gradient then
            gradient.Rotation = tick() * (v.settings.Speed or 1) % 360
        end
    end
end)
print("[Mario Hub] ESP Loaded")
t2.value19 = Color3.fromRGB(255, 60, 60)
t2.value20 = 10
t2.value21 = 1.5
t2.value22 = 5
t2.value23 = {}
for i = 1, 6 do
    local drawing = Drawing.new("Line")

    drawing.Thickness = t2.value21
    drawing.Color = t2.value19
    drawing.Transparency = 1
    drawing.Visible = false
    drawing.ZIndex = 100
    t1.value1 = t2.value23
    t1.value1[i] = drawing
end
t2.value24 = 0
t2.value25 = tick()
function t2.value26(p11, p12, p13)
    local v89 = math.sin((math.rad(p13)))
    local v90 = math.cos((math.rad(p13)))
    local v91 = p11.X - p12.X
    local v92 = p11.Y - p12.Y

    return Vector2.new(v91 * v90 - v92 * v89 + p12.X, v91 * v89 + v92 * v90 + p12.Y)
end
local RenderStepped = t2.value2.RenderStepped
function t1.value1()
    local v93 = tick() - t2.value25

    tick()
    t2.value24 = (t2.value24 + t2.value22 * v93 * 50) % 360

    local ViewportSize = workspace.CurrentCamera.ViewportSize
    local vector2 = Vector2.new(ViewportSize.X / 2, ViewportSize.Y / 2)
    local value20 = t2.value20
    local value24 = t2.value24
    local v98 = t2.value26(vector2 + Vector2.new(0, -value20), vector2, value24)
    local v99 = t2.value26(vector2 + Vector2.new(value20 * 0.866, value20 * 0.5), vector2, value24)
    local v100 = t2.value26(vector2 + Vector2.new(-value20 * 0.866, value20 * 0.5), vector2, value24)
    local v101 = t2.value26(vector2 + Vector2.new(0, value20), vector2, value24)
    local v102 = t2.value26(vector2 + Vector2.new(value20 * 0.866, -value20 * 0.5), vector2, value24)
    local value26 = t2.value26
    local new = Vector2.new
    local v105 = -value20 * 0.5
    local v106 = value26(vector2 + new(-value20 * 0.866, v105), vector2, value24)

    t2.value23[1].From = v98
    t2.value23[1].To = v99
    t2.value23[2].From = v99
    t2.value23[2].To = v100
    t2.value23[3].From = v100
    t2.value23[3].To = v98
    t2.value23[4].From = v101
    t2.value23[4].To = v102
    t2.value23[5].From = v102
    t2.value23[5].To = v106
    t2.value23[6].From = v106
    t2.value23[6].To = v101

    for _, v in ipairs(t2.value23) do
        v.Color = t2.value19
        v.Thickness = t2.value21
        v.Visible = true
    end
end
RenderStepped:Connect(t1.value1)
t2.value27 = {
	enabled = true,
	fov = 130,
	smoothing = 1,
	part = "Head",
	prediction = false,
	predAmt = 0.1,
	teamCheck = true,
	visCheck = false,
	trigger = "Left Click"
}
t2.value28 = workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")

t2.value29 = nil
t2.value29 = UserInputService
function t2.value30(p14)
    if p14 == t2.value3.LocalPlayer then
        return false
    end

    local teamCheck = t2.value27.teamCheck

    if teamCheck then
        teamCheck = t2.value3.LocalPlayer.Team ~= nil

        if teamCheck then
            teamCheck = p14.Team == t2.value3.LocalPlayer.Team
        end
    end

    if teamCheck then
        return false
    end

    return true
end
function t2.value31()
    return Vector2.new(t2.value28.ViewportSize.X / 2, t2.value28.ViewportSize.Y / 2)
end
function t2.value32(p15)
    local v110, v111 = t2.value28:WorldToViewportPoint(p15)

    return Vector2.new(v110.X, v110.Y), v111
end
function t2.value33(p16)
    if not t2.value27.visCheck then
        return true
    end

    local CFramePosition = t2.value28.CFrame.Position
    local v114 = p16.Position - CFramePosition
    local raycastParams = RaycastParams.new()

    raycastParams.FilterDescendantsInstances = { t2.value3.LocalPlayer.Character or workspace }
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude

    local raycastResult = workspace:Raycast(CFramePosition, v114.Unit * v114.Magnitude, raycastParams)

    if raycastResult then
        for _, player in ipairs(t2.value3:GetPlayers()) do
            local Character = player.Character

            if Character then
                Character = raycastResult.Instance:IsDescendantOf(player.Character)
            end

            if Character then
                return true
            end
        end

        return false
    end

    return true
end
function t2.value34()
    local trigger = t2.value27.trigger

    if trigger == "Always On" then
        return true
    end

    if trigger == "Right Click" then
        return t2.value29:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
    end

    if trigger == "Left Click" then
        return t2.value29:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
    end

    if trigger == "Middle Click" then
        return t2.value29:IsMouseButtonPressed(Enum.UserInputType.MouseButton3)
    end

    return false
end
local function v22()
    local v123
    local fov = t2.value27.fov
    for _, player in ipairs(t2.value3:GetPlayers()) do
        if t2.value30(player) then
            local Character = player.Character

            if Character then
                local t2value27part = Character:FindFirstChild(t2.value27.part)

                if not t2value27part then
                    t2value27part = Character:FindFirstChild("HumanoidRootPart")
                end

                if t2value27part then
                    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

                    if Humanoid and not (Humanoid.Health <= 0) and t2.value33(t2value27part) then
                        local v130, v131 = t2.value32(t2value27part.Position)

                        if v131 then
                            local Magnitude = (v130 - t2.value31()).Magnitude

                            if Magnitude < fov then
                                fov = Magnitude
                                v123 = t2value27part
                            end
                        end
                    end
                end
            end
        end
    end

    return v123
end
t2.value35 = Drawing.new("Circle")
t2.value35.Thickness = 1.5
t2.value35.Color = Color3.fromRGB(255, 255, 255)
t2.value35.Filled = false
t2.value35.Transparency = 1
t2.value35.Radius = t2.value27.fov
t2.value35.Visible = false
t2.value2.RenderStepped:Connect(function()
    t2.value35.Visible = false
    if not t2.value27.enabled then
        return
    end
    if not t2.value34() then
        return
    end
    local v133 = v22()
    if not v133 then
        return
    end
    local Position = v133.Position
    if t2.value27.prediction then
        Position += v133.AssemblyLinearVelocity * t2.value27.predAmt
    end
    local v136, t7Result = t2.value32(Position)
    if not t7Result then
        return
    end
    if type(mousemoverel) == "function" then
        local MouseLocation = t2.value29:GetMouseLocation()
        local v138 = v136.X - MouseLocation.X
        local v139 = v136.Y - MouseLocation.Y

        mousemoverel(v138, v139)
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.KeyCode == Enum.KeyCode.Escape then
        return
    end

    if input.KeyCode == Enum.KeyCode.E then
        t2.value27.enabled = not t2.value27.enabled
        t2.value35.Visible = false

        if t2.value18 then
            t2.value18.Visible = t2.value27.enabled
        end

        for _, child in ipairs(t2.value16:GetChildren()) do
            child.Visible = t2.value27.enabled
        end
    end
end)
t2.value36 = Instance.new("ScreenGui")
t2.value36.Name = "StartAnimation"
t2.value36.ResetOnSpawn = false
t2.value36.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
t2.value36.Parent = CoreGui
t2.value37 = Instance.new("TextLabel", t2.value36)
t2.value37.Size = UDim2.new(0, 500, 0, 100)
t2.value37.Position = UDim2.new(0.5, -250, 0.75, -50)
t2.value37.BackgroundTransparency = 1
t2.value37.Text = "MARIO HUB  •  Created By Klix"
t2.value37.TextColor3 = Color3.fromRGB(255, 255, 255)
t2.value37.TextSize = 45
t2.value37.Font = Enum.Font.GothamBold
t2.value37.TextStrokeTransparency = 0.5
t2.value37.TextTransparency = 0
t2.value37.ZIndex = 10000
t2.value38 = Instance.new("UIGradient", t2.value37)
t2.value38.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 60, 60)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
})
t2.value38.Rotation = 0
task.spawn(function()
    local timestamp2 = tick()

    while tick() - timestamp2 < 5 do
        t2.value38.Rotation = tick() * 100 % 360
        task.wait()
    end

    local timestamp3 = tick()

    while tick() - timestamp3 < 0.5 do
        local v146 = (tick() - timestamp3) / 0.5

        t2.value37.TextTransparency = v146
        t2.value37.TextStrokeTransparency = 0.5 + v146 * 0.5
        task.wait()
    end

    t2.value36:Destroy()
end)
