-- Script by Ilyas_skidd :p

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local function getParent()
    local ok, hui = pcall(function()
        return gethui and gethui()
    end)
    if ok and hui then
        return hui
    end
    return game:GetService("CoreGui")
end

local old = getParent():FindFirstChild("ProjectS3cr3tFixed")
if old then
    old:Destroy()
end

local scripts = {
    {name = "R6 real", url = "https://raw.githubusercontent.com/sunday102711-bit/E00KIDD-r6-by-me/refs/heads/main/R6%20Real"},
    {name = "logo s3cr3t", url = "https://pastefy.app/mvbQrx6e/raw"},
    {name = "logo venguim", url = "https://pastefy.app/XSSHMtuF/raw"},
    {name = "Mobile Keyboard", url = "https://rawscripts.net/raw/Universal-Script-Delta-keyboard-49109"},
    {name = "SSP Dex Explorer Version", url = "https://raw.githubusercontent.com/AbuRiffian/None-of-youre-buissness/refs/heads/main/idk"},
    {name = "SSP", url = "https://pastebin.com/raw/Eu81WV9S"},
    {name = "SSP Made by Erased_Luah4x", url = "https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/SSP%20BY%20ME.lua"},
    {name = "SSP by 00de0l", url = "https://pastefy.app/nfRhrUkr/raw"},
    {name = "SSP by s3cr3t cradite 00de0l", url = "https://pastefy.app/zJRlcRPO/raw"},
    {name = "primadon", url = "https://pastefy.app/l4cuPtY5/raw"},
    {name = "TSGgui v2[test]", url = "https://pastefy.app/daCx8izu/raw"},
    {name = "sheldoni lua[3.8]", url = "https://pastefy.app/GGPsqaRU/raw"},
    {name = "dog army working", url = "https://pastefy.app/ChM2b8Oh/raw"},
    {name = "project local", url = "https://pastefy.app/wLdPnVaP/raw"},
    {name = "Project Duck Ultimate", url = "https://pastefy.app/RX1PYZs1/raw"},
    {name = "FE Hax GUI V2.0.2.1", url = "https://pastebin.com/raw/gr3XZwUY"},
    {name = "Polaria remake by s3cr3t(4.5)", url = "https://pastefy.app/bqbgdBx9/raw"},
    {name = "venguim executor gui", url = "https://pastefy.app/MMQ3qBhv/raw"},
    {name = "Dominat v5.0.1[remake]", url = "https://pastefy.app/Sr0Sx0Bt/raw"},
    {name = "soulhack62 ss", url = "https://pastefy.app/2OWyTovg/raw"},
    {name = "soulhack62 executor[new]", url = "https://pastefy.app/plEj00XG/raw"},
    {name = "shelon gui v3", url = "https://pastefy.app/EnTSdwPd/raw"},
    {name = "Private GUI By 00de0l [UPDATED]", url = "https://pastefy.app/cVm0LBiJ/raw"},
    {name = "mystic", url = "https://pastefy.app/8RF13TRi/raw"},
    {name = "lost hope scythe", url = "https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Lost%20Hope%20Scythe.lua"},
    {name = "s3cr3t exe", url = "https://pastefy.app/g96ntCwL/raw"},
    {name = "UTG", url = "https://pastefy.app/cZhmvb1G/raw"},
    {name = "shelon remake", url = "https://pastefy.app/Ox7adI3Q/raw"},
    {name = "Exser", url = "https://pastefy.app/7sO8ckTL/raw"},
    {name = "project s3cr3t ultimate", url = "https://pastefy.app/FfKpPBgi/raw"},
    {name = "project other[good]", url = "https://pastefy.app/lJI9gmMA/raw"},
    {name = "project spawn1020", url = "https://pastefy.app/KYxIwtO6/raw"},
    {name = "project broken spawn v1.0.0", url = "https://pastebin.com/raw/NyJfL0ey"},
    {name = "project broken spawn v3.0.0", url = "https://pastebin.com/raw/nYpHm5sa"},
    {name = "project broken spawn v4.1.0", url = "https://pastefy.app/nR0WXnVs/raw"},
    {name = "ss by broken spawn and 1x1x1x11", url = "https://pastebin.com/raw/YxquFEAR"},
    {name = "1x1x1x11 exe", url = "https://pastefy.app/3FAV3Abv/raw"},
    {name = "roblox require SS by 1x1x1x11", url = "https://pastebin.com/raw/bvawnSDa"},
    {name = "fe bypass", url = "https://rawscripts.net/raw/real-s3cr3t-exe_1htt759931507246_LGmI88PPJe.txt"},
    {name = "PROJECT TEGMA", url = "https://pastefy.app/iF7TCeZw/raw"},
    {name = "sugma_v1", url = "https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Sugma%20V1.txt"},
    {name = "FENRIER-PAINSIS", url = "https://pastefy.app/az0yaa2e/raw"},
    {name = "SG GUI RED EDITION", url = "https://raw.githubusercontent.com/gitezgitgit/SG-GUI-RED-EDITION/refs/heads/main/FixedVersion"},
    {name = "SG GUI BLUE EDITION", url = "https://raw.githubusercontent.com/gitezgitgit/SG-GUI-COLOR-EDITIONS/refs/heads/main/Blue%20Edition"},
    {name = "Nebula Star Glitcher (by fancykid)", url = "https://pastebin.com/raw/j09BnGB3"},
    {name = "red star glitcher", url = "https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Spectrum%20Glitcher"},
    {name = "epik gui v3", url = "https://pastefy.app/e8CVp1sv/raw"},
    {name = "yong shelon by 00de0l", url = "https://rawscripts.net/raw/Universal-Script-Young-Sheldon-Gui-37577"},
    {name = "c4 boom", url = "https://pastefy.app/M0r9UCNQ/raw"},
    {name = "bluudud", url = "https://pastebin.com/raw/CcHxT0Gj"},
    {name = "Anonymas-decal", url = "https://pastefy.app/uiwcplCF/raw"},
    {name = "Exvator", url = "https://pastefy.app/q74DFYYz/raw"},
    {name = "IDK [but cool]", url = "https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Internal%20War.lua"},
    {name = "john doe forsaken", url = "https://pastebin.com/raw/JwUdxg8y"},
    {name = "s3laria", url = "https://pastefy.app/S9jgk5ri/raw"},
    {name = "noot noot", url = "https://scriptblox.com/raw/Universal-Script-NOOT-NOOT-9643"},
    {name = "devoy", url = "https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Devoyance"},
    {name = "robhub[good]", url = "https://rawscripts.net/raw/Universal-Script-RobHub-55801"},
    {name = "star glitcher orange", url = "https://raw.githubusercontent.com/BloxinStud10/24-Hours/refs/heads/main/Obfuscations/Discontinued_StarGlitcher.luau"},
    {name = "acorn gui", url = "https://pastefy.app/1LrJ7upr/raw"},
    {name = "bipolaria", url = "https://pastebin.com/raw/8qFWEtWY"},
    {name = "mjolnir", url = "https://pastefy.app/JWZk5sQi/raw"},
    {name = "prject s3mex", url = "https://pastefy.app/vST8mJL3/raw"},
    {name = "Venguim", url = "https://pastefy.app/E7sFbnUV/raw"},
    {name = "k00pgui v11", url = "https://pastefy.app/mdx0Edd5/raw"},
    {name = "Darius v13", url = "https://pastefy.app/GgkjNkqR/raw"},
    {name = "Acorn v2", url = "https://pastefy.app/wtmUwjYR/raw"},
    {name = "Sledge Hammer", url = "https://pastefy.app/7GOfHGXD/raw"},
    {name = "Worship", url = "https://pastefy.app/1fyxRJYK/raw"},
    {name = "z00lkidd (f3x)", url = "https://pastefy.app/3s6VxvbM/raw"},
    {name = "Grandosla", url = "https://pastefy.app/cZd2LTkZ/raw"}
}

local gui = Instance.new("ScreenGui")
gui.Name = "normal Gui"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true

pcall(function()
    if syn and syn.protect_gui then
        syn.protect_gui(gui)
    elseif protectgui then
        protectgui(gui)
    end
end)

gui.Parent = getParent()

local image = Instance.new("ImageLabel")
image.Name = "MainImage"
image.Size = UDim2.new(0, 393, 0, 300)
image.Position = UDim2.new(0, 180, 0, 0)
image.Image = "rbxassetid://118409525426835"
image.BackgroundTransparency = 1
image.BorderColor3 = Color3.new(0, 0, 0)
image.BorderSizePixel = 3
image.Active = true
image.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BackgroundTransparency = 0.5
title.BorderColor3 = Color3.new(0, 0, 0)
title.BorderSizePixel = 3
title.Text = "Project L3ck3d script [Open Source]"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.Legacy
title.Parent = image

local content = Instance.new("Frame")
content.Name = "Buttons"
content.Size = UDim2.new(1, 0, 0, 192)
content.Position = UDim2.new(0, 0, 0, 50)
content.BackgroundTransparency = 1
content.Parent = image

local back = Instance.new("TextButton")
back.Size = UDim2.new(0, 80, 0, 28)
back.Position = UDim2.new(0, 10, 0, 252)
back.Text = "< Back"
back.TextColor3 = Color3.new(1, 1, 1)
back.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
back.BackgroundTransparency = 0.5
back.BorderColor3 = Color3.new(0, 0, 0)
back.BorderSizePixel = 1
back.Font = Enum.Font.Legacy
back.TextScaled = true
back.Parent = image

local nextButton = Instance.new("TextButton")
nextButton.Size = UDim2.new(0, 80, 0, 28)
nextButton.Position = UDim2.new(1, -90, 0, 252)
nextButton.Text = "Next >"
nextButton.TextColor3 = Color3.new(1, 1, 1)
nextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
nextButton.BackgroundTransparency = 0.5
nextButton.BorderColor3 = Color3.new(0, 0, 0)
nextButton.BorderSizePixel = 1
nextButton.Font = Enum.Font.Legacy
nextButton.TextScaled = true
nextButton.Parent = image

local columns = 2
local rows = 6
local perPage = columns * rows
local page = 1

local function makeDraggable(target)
    local dragging = false
    local dragStart
    local startPosition
    local dragInput

    target.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPosition = image.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    target.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            local delta = input.Position - dragStart
            image.Position = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y
            )
        end
    end)
end

makeDraggable(image)

local function runScript(item)

    local ok, source = pcall(function()
        return game:HttpGet(item.url, true)
    end)

    if not ok then
        return
    end

    if type(source) ~= "string" or source == "" then
        return
    end

    local compiler = loadstring or load
    if not compiler then
        return
    end

    local chunk, compileError = compiler(source)
    if not chunk then
        return
    end

    local ran, runtimeError = pcall(chunk)
    if not ran then
        return
    end
end

local function clearButtons()
    for _, child in ipairs(content:GetChildren()) do
        child:Destroy()
    end
end

local function drawPage()
    clearButtons()

    local first = (page - 1) * perPage + 1
    local last = math.min(page * perPage, #scripts)

    for index = first, last do
        local item = scripts[index]
        local localIndex = index - first
        local column = math.floor(localIndex / 6)
        local row = localIndex % 6

        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 180, 0, 28)
        button.Position = UDim2.new(0, 10 + column * 190, 0, row * 32)
        button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        button.BackgroundTransparency = 0.5
        button.BorderColor3 = Color3.new(0, 0, 0)
        button.BorderSizePixel = 1
        button.Text = item.name
        button.TextColor3 = Color3.new(1, 1, 1)
        button.TextScaled = true
        button.Font = Enum.Font.Legacy
        button.Parent = content

        button.MouseButton1Click:Connect(function()
            runScript(item)
        end)
    end
    back.Visible = page > 1
    nextButton.Visible = page * perPage < #scripts
end

back.MouseButton1Click:Connect(function()
    if page > 1 then
        page = page - 1
        drawPage()
    end
end)

nextButton.MouseButton1Click:Connect(function()
    if page * perPage < #scripts then
        page = page + 1
        drawPage()
    end
end)

drawPage()
