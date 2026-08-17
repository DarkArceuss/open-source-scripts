-- Leaked by Ilyas_skidd

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui", PlayerGui)
ScreenGui.Name = "BrynttsGui"

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 250, 0, 200)
MainFrame.Position = UDim2.new(0.5, -125, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, -60, 0, 30)
Title.Position = UDim2.new(0, 10, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "Bryntt's GUI"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left

local CloseButton = Instance.new("TextButton", MainFrame)
CloseButton.Size = UDim2.new(0, 40, 0, 30)
CloseButton.Position = UDim2.new(1, -50, 0, 10)
CloseButton.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", CloseButton).CornerRadius = UDim.new(0, 6)
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local KillAuraButton = Instance.new("TextButton", MainFrame)
KillAuraButton.Size = UDim2.new(0, 220, 0, 40)
KillAuraButton.Position = UDim2.new(0, 15, 0, 50)
KillAuraButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
KillAuraButton.Text = "Kill Aura: OFF"
KillAuraButton.Font = Enum.Font.GothamBold
KillAuraButton.TextSize = 18
KillAuraButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", KillAuraButton).CornerRadius = UDim.new(0, 8)

local KillAuraEnabled = false
local KillAuraThread = nil

local function StartKillAura()
    _G.Kill = true
    KillAuraThread = task.spawn(function()
        while _G.Kill do
            task.wait()
            pcall(function()
                local character = LocalPlayer.Character
                if not character then
                    LocalPlayer.CharacterAdded:Wait()
                    character = LocalPlayer.Character
                end
                local tool = character:FindFirstChildOfClass("Tool") or character:FindFirstChildOfClass("Tool")
                if tool then
                    
                    local monsters = workspace:FindFirstChild("Monsters")
                    if not monsters then
                        
                        for _, child in ipairs(workspace:GetChildren()) do
                            if child:IsA("Model") and child:FindFirstChild("Humanoid") and child ~= character then
                                local root = child:FindFirstChild("HumanoidRootPart")
                                if root then
                                    local gunRemotes = ReplicatedStorage:WaitForChild("GunRemotes")
                                    local gunHit = gunRemotes:WaitForChild("GunHit")
                                    local playerName = LocalPlayer.Name
                                    local id = tonumber(child.Name:match("%d+")) or 0
                                    gunHit:FireServer(playerName, id, root.Position)
                                end
                            end
                        end
                    else
                        for _, child in ipairs(monsters:GetChildren()) do
                            local root = child:FindFirstChild("HumanoidRootPart")
                            if root then
                                local gunRemotes = ReplicatedStorage:WaitForChild("GunRemotes")
                                local gunHit = gunRemotes:WaitForChild("GunHit")
                                local playerName = LocalPlayer.Name
                                local id = tonumber(child.Name:match("%d+")) or 0
                                gunHit:FireServer(playerName, id, root.Position)
                            end
                        end
                    end
                end
            end)
            task.wait(0.2)
        end
    end)
end

KillAuraButton.MouseButton1Click:Connect(function()
    KillAuraEnabled = not KillAuraEnabled
    if KillAuraEnabled then
        KillAuraButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        KillAuraButton.Text = "Kill Aura: ON"
        _G.Kill = true
        StartKillAura()
    else
        KillAuraButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        KillAuraButton.Text = "Kill Aura: OFF"
        _G.Kill = false
        if KillAuraThread then
            task.cancel(KillAuraThread)
            KillAuraThread = nil
        end
    end
end)

local SafeZoneButton = Instance.new("TextButton", MainFrame)
SafeZoneButton.Size = UDim2.new(0, 220, 0, 40)
SafeZoneButton.Position = UDim2.new(0, 15, 0, 100)
SafeZoneButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
SafeZoneButton.Text = "Safe Zone: OFF"
SafeZoneButton.Font = Enum.Font.GothamBold
SafeZoneButton.TextSize = 18
SafeZoneButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", SafeZoneButton).CornerRadius = UDim.new(0, 8)

local SafeZoneEnabled = false
SafeZoneButton.MouseButton1Click:Connect(function()
    SafeZoneEnabled = not SafeZoneEnabled
    if SafeZoneEnabled then
        SafeZoneButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        SafeZoneButton.Text = "Safe Zone: ON"
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then
                hum.HipHeight = 20
            end
        end
    else
        SafeZoneButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        SafeZoneButton.Text = "Safe Zone: OFF"
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then
                hum.HipHeight = 2
            end
        end
    end
end)

local GunModsButton = Instance.new("TextButton", MainFrame)
GunModsButton.Size = UDim2.new(0, 220, 0, 40)
GunModsButton.Position = UDim2.new(0, 15, 0, 150)
GunModsButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
GunModsButton.Text = "Gun Mods Firerate: OFF"
GunModsButton.Font = Enum.Font.GothamBold
GunModsButton.TextSize = 18
GunModsButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", GunModsButton).CornerRadius = UDim.new(0, 8)

local GunModsEnabled = false
local GunModsThread = nil

GunModsButton.MouseButton1Click:Connect(function()
    GunModsEnabled = not GunModsEnabled
    if GunModsEnabled then
        GunModsButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        GunModsButton.Text = "Gun Mods Firerate: ON"
        
        local playerScripts = LocalPlayer:WaitForChild("PlayerScripts")
        local initializer = playerScripts:WaitForChild("Initializer")
        local env = getsenv(initializer)
        if env and env._G and env._G.GunClient then
            local gunClient = env._G.GunClient
            local config = gunClient.EquippedConfig
            if config then
                config.Damage = 999999
                config.FireRate = 0.01
                config.BulletSpeed = 500
                config.MaxRange = 9999
                config.BlastPower = 5
                config.PelletCount = 44
                config.SpreadAngle = 0
                config.Penetration = true
                config.SoundCooldown = 0
                config.TracerWidth = 0.1
                GunModsThread = task.spawn(function()
                    while GunModsEnabled do
                        gunClient.LastFireTime = 0
                        task.wait()
                    end
                end)
            end
        end
    else
        GunModsButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        GunModsButton.Text = "Gun Mods Firerate: OFF"
        if GunModsThread then
            task.cancel(GunModsThread)
            GunModsThread = nil
        end
    end
end)