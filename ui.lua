local InputService = game:GetService("UserInputService");
local Players = game:GetService("Players");
local Player = Players.LocalPlayer

local CoreGui = game:GetService("CoreGui");

getgenv().DanceTable = {
    Dances = {
        One = "10214311282", -- Spin Down Sweep
        Two = "4049037604", -- Stomp & Spin
        Three = "10714010337", -- Sharaka
        Four = "10713981723", -- Vibing
        Five = "10714372526", -- Surfin'
        Six = "11444443576" -- Flapping
    }
}

if CoreGui:FindFirstChild("DanceUI") then
    CoreGui:FindFirstChild("DanceUI"):Remove()
end

local DanceUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local DanceOne = Instance.new("TextButton")
local DanceTwo = Instance.new("TextButton")
local DanceThree = Instance.new("TextButton")
local DanceFour = Instance.new("TextButton")
local DanceFive = Instance.new("TextButton")
local DanceSix = Instance.new("TextButton")
local Stop = Instance.new("TextButton")
local Secondary = Instance.new("Frame")
local InputBox = Instance.new("TextBox")

DanceUI.Name = "DanceUI"
DanceUI.Parent = CoreGui
DanceUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = DanceUI
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 0, 0.325, 0)
Main.Size = UDim2.new(0, 150, 0, 320)

UIListLayout.Parent = Main
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0500000007, 0)

DanceOne.Name = "DanceOne"
DanceOne.Parent = Main
DanceOne.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
DanceOne.BorderColor3 = Color3.fromRGB(0, 0, 0)
DanceOne.BorderSizePixel = 0
DanceOne.Position = UDim2.new(0.205263153, 0, 0.297029704, 0)
DanceOne.Size = UDim2.new(0, 150, 0, 32)
DanceOne.Font = Enum.Font.GothamBold
DanceOne.Text = "Spin Down Sweep"
DanceOne.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceOne.TextScaled = true
DanceOne.TextSize = 14.000
DanceOne.TextWrapped = true

DanceTwo.Name = "DanceTwo"
DanceTwo.Parent = Main
DanceTwo.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
DanceTwo.BorderColor3 = Color3.fromRGB(0, 0, 0)
DanceTwo.BorderSizePixel = 0
DanceTwo.Position = UDim2.new(0.205263153, 0, 0.297029704, 0)
DanceTwo.Size = UDim2.new(0, 150, 0, 32)
DanceTwo.Font = Enum.Font.GothamBold
DanceTwo.Text = "Stomp & Spin"
DanceTwo.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceTwo.TextScaled = true
DanceTwo.TextSize = 14.000
DanceTwo.TextWrapped = true

DanceThree.Name = "DanceThree"
DanceThree.Parent = Main
DanceThree.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
DanceThree.BorderColor3 = Color3.fromRGB(0, 0, 0)
DanceThree.BorderSizePixel = 0
DanceThree.Position = UDim2.new(0.205263153, 0, 0.297029704, 0)
DanceThree.Size = UDim2.new(0, 150, 0, 32)
DanceThree.Font = Enum.Font.GothamBold
DanceThree.Text = "Sharaka"
DanceThree.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceThree.TextScaled = true
DanceThree.TextSize = 14.000
DanceThree.TextWrapped = true

DanceFour.Name = "DanceFour"
DanceFour.Parent = Main
DanceFour.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
DanceFour.BorderColor3 = Color3.fromRGB(0, 0, 0)
DanceFour.BorderSizePixel = 0
DanceFour.Position = UDim2.new(0.205263153, 0, 0.297029704, 0)
DanceFour.Size = UDim2.new(0, 150, 0, 32)
DanceFour.Font = Enum.Font.GothamBold
DanceFour.Text = "Vibing"
DanceFour.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceFour.TextScaled = true
DanceFour.TextSize = 14.000
DanceFour.TextWrapped = true

DanceFive.Name = "DanceFive"
DanceFive.Parent = Main
DanceFive.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
DanceFive.BorderColor3 = Color3.fromRGB(0, 0, 0)
DanceFive.BorderSizePixel = 0
DanceFive.Position = UDim2.new(0.205263153, 0, 0.297029704, 0)
DanceFive.Size = UDim2.new(0, 150, 0, 32)
DanceFive.Font = Enum.Font.GothamBold
DanceFive.Text = "Surfin'"
DanceFive.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceFive.TextScaled = true
DanceFive.TextSize = 14.000
DanceFive.TextWrapped = true

DanceSix.Name = "DanceSix"
DanceSix.Parent = Main
DanceSix.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
DanceSix.BorderColor3 = Color3.fromRGB(0, 0, 0)
DanceSix.BorderSizePixel = 0
DanceSix.Position = UDim2.new(0.205263153, 0, 0.297029704, 0)
DanceSix.Size = UDim2.new(0, 150, 0, 32)
DanceSix.Font = Enum.Font.GothamBold
DanceSix.Text = "Flapping"
DanceSix.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceSix.TextScaled = true
DanceSix.TextSize = 14.000
DanceSix.TextWrapped = true

Stop.Name = "Stop"
Stop.Parent = Main
Stop.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Stop.BorderColor3 = Color3.fromRGB(0, 0, 0)
Stop.BorderSizePixel = 0
Stop.Size = UDim2.new(0, 150, 0, 32)
Stop.Font = Enum.Font.GothamBold
Stop.Text = "Stop Animation"
Stop.TextColor3 = Color3.fromRGB(255, 255, 255)
Stop.TextScaled = true
Stop.TextSize = 14.000
Stop.TextWrapped = true

Secondary.Name = "Secondary"
Secondary.Parent = DanceUI
Secondary.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Secondary.BorderColor3 = Color3.fromRGB(0, 0, 0)
Secondary.BorderSizePixel = 0
Secondary.Position = UDim2.new(0.0875, 0, 0.4, 0)
Secondary.Size = UDim2.new(0, 100, 0, 50)

InputBox.Name = "InputBox"
InputBox.Parent = Secondary
InputBox.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
InputBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0.25, 0, 0, 0)
InputBox.Size = UDim2.new(0, 50, 0, 50)
InputBox.Font = Enum.Font.GothamBold
InputBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputBox.PlaceholderText = "#"
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.TextScaled = true
InputBox.TextSize = 14.000
InputBox.TextWrapped = true

function EndAnimation()
    pcall(function()
        local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid") or Player.Character:FindFirstChildOfClass("AnimationController")
        
        for _, Search in next, Humanoid:GetPlayingAnimationTracks() do
            Search:Stop()
        end
    end)
end

function AnimationSpeed(Value)
    pcall(function()
        local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid") or Player.Character:FindFirstChildOfClass("AnimationController")
    
        for _, Search in next, Humanoid:GetPlayingAnimationTracks() do
            Search:AdjustSpeed(tonumber(Value or 1))
        end
    end)
end

function LoadDance(Value)
    pcall(function()
        if Player.Character:FindFirstChild("LoadedAnimation") then
            Player.Character:FindFirstChild("LoadedAnimation"):Remove()
            EndAnimation()
        end

        local Animation = Instance.new("Animation", Player.Character)
        
        Animation.Name = "LoadedAnimation"
        Animation.AnimationId = "rbxassetid://" .. tonumber(Value)
        Dance = Player.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
        Dance.Looped = true
        Dance:Play()

        AnimationSpeed(InputBox.Text)
    end)
end

InputService.InputBegan:Connect(function(Input, GetInput)
    if GetInput then
        return
    end

    if Input.KeyCode == Enum.KeyCode.T then
        DanceUI.Enabled = not DanceUI.Enabled
    end
end)

DanceOne.MouseButton1Click:Connect(function()
    LoadDance(getgenv().DanceTable.Dances.One)
end)

DanceTwo.MouseButton1Click:Connect(function()
    LoadDance(getgenv().DanceTable.Dances.Two)
end)

DanceThree.MouseButton1Click:Connect(function()
    LoadDance(getgenv().DanceTable.Dances.Three)
end)

DanceFour.MouseButton1Click:Connect(function()
    LoadDance(getgenv().DanceTable.Dances.Four)
end)

DanceFive.MouseButton1Click:Connect(function()
    LoadDance(getgenv().DanceTable.Dances.Five)
end)

DanceSix.MouseButton1Click:Connect(function()
    LoadDance(getgenv().DanceTable.Dances.Six)
end)

InputBox.FocusLost:Connect(function()
    AnimationSpeed(InputBox.Text)
end)

Stop.MouseButton1Click:Connect(function()
    EndAnimation()
end)
