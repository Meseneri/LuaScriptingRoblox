local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local countdownTime = 10

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CountdownGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local bgFrame = Instance.new("Frame")
bgFrame.Size = UDim2.new(1, 0, 1, 0)
bgFrame.BackgroundColor3 = Color3.new(0, 0, 0)
bgFrame.BorderSizePixel = 0
bgFrame.Parent = screenGui

local warningText = Instance.new("TextLabel")
warningText.Size = UDim2.new(1, 0, 0.2, 0)
warningText.Position = UDim2.new(0, 0, 0.3, 0) -- top area
warningText.BackgroundTransparency = 1
warningText.Text = "SEGERA KELUAR DARI GAME ATAU SEKNO AKAN MERODOK MU!"
warningText.TextColor3 = Color3.new(1, 0, 0) -- bright red
warningText.Font = Enum.Font.ArialBold
warningText.TextScaled = true
warningText.TextWrapped = true
warningText.Parent = bgFrame
warningText.ZIndex = 10
warningText.TextStrokeTransparency = 0.5
warningText.TextStrokeColor3 = Color3.new(0, 0, 0)

local countdownLabel = Instance.new("TextLabel")
countdownLabel.Size = UDim2.new(0.4, 0, 0.2, 0)
countdownLabel.Position = UDim2.new(0.3, 0, 0.55, 0) -- below warning text, centered horizontally
countdownLabel.BackgroundTransparency = 1
countdownLabel.TextColor3 = Color3.new(1, 1, 1) -- white
countdownLabel.Font = Enum.Font.GothamBlack
countdownLabel.TextScaled = true
countdownLabel.TextWrapped = true
countdownLabel.Parent = bgFrame
countdownLabel.ZIndex = 10
countdownLabel.TextStrokeTransparency = 0.3
countdownLabel.TextStrokeColor3 = Color3.new(0, 0, 0)

screenGui.Enabled = true

for i = countdownTime, 1, -1 do
    countdownLabel.Text = tostring(i)
    wait(1)
end

-- After countdown ends, kick the player with reason
player:Kick("Kamu telah dirodok PAMAN SEKNO.")
