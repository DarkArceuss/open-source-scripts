-- Leacked by Ilyas_skidd :p

local game = game
local function getGuiParent()
    local ok, hui = pcall(function()
        if type(gethui) == "function" then
            return gethui()
        end
        return nil
    end)
    if ok and hui then
        return hui
    end
    return game:GetService("CoreGui")
end

local guiParent = getGuiParent()
local oldGui = guiParent:FindFirstChild("rc7")
if oldGui then
    pcall(function() oldGui:Destroy() end)
end

        r21 = {};
        r23 = {};
        r15 = setmetatable({}, {
            ["__index"] = r23,
            ["__metatable"] = nil
        });
        t = Instance.new("ScreenGui");
        r24 = Instance.new("ImageButton");
        r25 = Instance.new("ImageLabel");
        v6 = Instance.new("TextButton");
        g = Instance.new("TextBox");
        r26 = Instance.new("TextBox");
        s = Instance.new("TextButton");
        q = Instance.new("TextButton");
        r27 = Instance.new("ImageLabel");
        r28 = Instance.new("TextBox");
        r29 = Instance.new("TextBox");
        x = Instance.new("TextButton");
        S = Instance.new("TextButton");
        m = Instance.new("TextButton");
        i = Instance.new("TextButton");
        e = Instance.new("TextButton");
        y = Instance.new("TextButton");
        U = Instance.new("TextButton");
        Instance.new("TextLabel");
        t.Name = "rc7";
        t.Parent = getGuiParent();
        t.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
        r24.Name = "mini";
        r24.Parent = t;
        r24.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        r24.BackgroundTransparency = 1;
        r24.BorderColor3 = Color3.fromRGB(0, 0, 0);
        r24.BorderSizePixel = 0;
        r24.Position = UDim2.new(0, 0, .894399107, 0);
        r24.Size = UDim2.new(0, 58, 0, 60);
        r24.Visible = false;
        r24.Image = "http://www.roblox.com/asset/?id=14416021390";
        f = r24.MouseButton1Down;
        f:Connect(function(...)
            r27.Visible = true;
            r24.Visible = false;
            return; 
        end);
        r25.Name = "passpage";
        r25.Parent = t;
        r25.Active = true;
        r25.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        r25.BorderColor3 = Color3.fromRGB(0, 0, 0);
        r25.BorderSizePixel = 0;
        r25.Position = UDim2.new(.171028033, 0, .178529739, 0);
        r25.Size = UDim2.new(0, 349, 0, 363);
        r25.Image = "rbxassetid://13695440070";
        v6.Name = "submit";
        v6.Parent = r25;
        v6.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        v6.BackgroundTransparency = 1;
        v6.BorderColor3 = Color3.fromRGB(0, 0, 0);
        v6.BorderSizePixel = 0;
        v6.Position = UDim2.new(.343839556, 0, .561983466, 0);
        v6.Size = UDim2.new(0, 101, 0, 20);
        v6.Font = Enum.Font.SourceSans;
        v6.Text = "";
        v6.TextColor3 = Color3.fromRGB(0, 0, 0);
        v6.TextSize = 14;
        f = v6.MouseButton1Down;
        f:Connect(function(...)
            if r26.Text == "Hastermaze" then
                r25.Visible = false;
                r27.Visible = true;
            else
                r26.Text = "Wrong Password!";
                wait(2);
                r26.Text = "";
            end;
            return; 
        end);
        g.Name = "user";
        g.Parent = r25;
        g.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        g.BackgroundTransparency = 1;
        g.BorderColor3 = Color3.fromRGB(0, 0, 0);
        g.BorderSizePixel = 0;
        g.Position = UDim2.new(.260744989, 0, .393939406, 0);
        g.Size = UDim2.new(0, 160, 0, 21);
        g.Font = Enum.Font.SourceSans;
        g.Text = "RC7 - Hastermaze";
        g.TextColor3 = Color3.fromRGB(20, 212, 255);
        g.TextSize = 14;
        g.TextWrapped = true;
        r26.Name = "pass";
        r26.Parent = r25;
        r26.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        r26.BackgroundTransparency = 1;
        r26.BorderColor3 = Color3.fromRGB(0, 0, 0);
        r26.BorderSizePixel = 0;
        r26.Position = UDim2.new(.261000007, 0, .479999989, 0);
        r26.Size = UDim2.new(0, 160, 0, 21);
        r26.Font = Enum.Font.SourceSans;
        r26.Text = "";
        r26.TextColor3 = Color3.fromRGB(20, 212, 255);
        r26.TextSize = 14;
        r26.TextWrapped = true;
        s.Name = "close";
        s.Parent = r25;
        s.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        s.BackgroundTransparency = 1;
        s.BorderColor3 = Color3.fromRGB(0, 0, 0);
        s.BorderSizePixel = 0;
        s.Position = UDim2.new(.88252151, 0, 0, 0);
        s.Size = UDim2.new(0, 41, 0, 24);
        s.Font = Enum.Font.SourceSans;
        s.Text = "";
        s.TextColor3 = Color3.fromRGB(0, 0, 0);
        s.TextSize = 14;
        f = s.MouseButton1Down;
        f:Connect(function(...)
            r25.Visible = false;
            return; 
        end);
        q.Name = "minimize";
        q.Parent = r25;
        q.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        q.BackgroundTransparency = 1;
        q.BorderColor3 = Color3.fromRGB(0, 0, 0);
        q.BorderSizePixel = 0;
        q.Position = UDim2.new(.598853886, 0, 0, 0);
        q.Size = UDim2.new(0, 41, 0, 24);
        q.Font = Enum.Font.SourceSans;
        q.Text = "";
        q.TextColor3 = Color3.fromRGB(0, 0, 0);
        q.TextSize = 14;
        r27.Name = "mainpage";
        r27.Parent = t;
        r27.Active = true;
        r27.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        r27.BorderColor3 = Color3.fromRGB(0, 0, 0);
        r27.BorderSizePixel = 0;
        r27.Position = UDim2.new(.171028033, 0, .178529739, 0);
        r27.Size = UDim2.new(0, 349, 0, 363);
        r27.Visible = false;
        r27.Image = "http://www.roblox.com/asset/?id=12263991723";
        r28.Name = "input";
        r28.Parent = r27;
        r28.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        r28.BorderColor3 = Color3.fromRGB(0, 0, 0);
        r28.BorderSizePixel = 0;
        r28.Position = UDim2.new(.0343839526, 0, .0991735533, 0);
        r28.Size = UDim2.new(0, 296, 0, 239);
        r28.Font = Enum.Font.Arial;
        r28.MultiLine = true;
        r28.Text = "";
        r28.TextColor3 = Color3.fromRGB(0, 0, 0);
        r28.TextSize = 14;
        r28.TextWrapped = true;
        r28.TextXAlignment = Enum.TextXAlignment.Left;
        r28.TextYAlignment = Enum.TextYAlignment.Top;
        r29.Name = "output";
        r29.Parent = r27;
        r29.Active = false;
        r29.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        r29.BorderColor3 = Color3.fromRGB(0, 0, 0);
        r29.BorderSizePixel = 0;
        r29.Position = UDim2.new(.0343839526, 0, .845730007, 0);
        r29.Size = UDim2.new(0, 296, 0, 52);
        r29.Font = Enum.Font.Arial;
        r29.Text = "";
        r29.TextColor3 = Color3.fromRGB(0, 0, 0);
        r29.TextSize = 14;
        r29.TextWrapped = true;
        r29.TextXAlignment = Enum.TextXAlignment.Left;
        r29.TextYAlignment = Enum.TextYAlignment.Top;
        x.Name = "exe";
        x.Parent = r27;
        x.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        x.BackgroundTransparency = 1;
        x.BorderColor3 = Color3.fromRGB(0, 0, 0);
        x.BorderSizePixel = 0;
        x.Position = UDim2.new(.315186232, 0, .774104655, 0);
        x.Size = UDim2.new(0, 99, 0, 20);
        x.Font = Enum.Font.ArialBold;
        x.Text = "Execute";
        x.TextColor3 = Color3.fromRGB(20, 212, 255);
        x.TextSize = 14;
        f = x.MouseButton1Down;
        f:Connect(function(...)
            local source = r28.Text or ""
            if source:match("^%s*$") then
                r29.Text = "Script is blank, paste a script!"
                task.wait(2)
                r29.Text = " "
                return
            end

            if type(loadstring) ~= "function" then
                r29.Text = "loadstring is unavailable in this environment."
                task.wait(2)
                r29.Text = " "
                return
            end

            local fn, compileError = loadstring(source)
            if not fn then
                r29.Text = "Compile error: " .. tostring(compileError)
                task.wait(3)
                r29.Text = " "
                return
            end

            local success, runtimeError = pcall(fn)
            if success then
                r29.Text = "Script successfully executed!"
            else
                r29.Text = "Runtime error: " .. tostring(runtimeError)
            end
            task.wait(2)
            r29.Text = " "
        end);
        S.Name = "clear";
        S.Parent = r27;
        S.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        S.BackgroundTransparency = 1;
        S.BorderColor3 = Color3.fromRGB(0, 0, 0);
        S.BorderSizePixel = 0;
        S.Position = UDim2.new(.598853886, 0, .774104655, 0);
        S.Size = UDim2.new(0, 99, 0, 20);
        S.Font = Enum.Font.ArialBold;
        S.Text = "Clear";
        S.TextColor3 = Color3.fromRGB(20, 212, 255);
        S.TextSize = 14;
        f = S.MouseButton1Down;
        f:Connect(function(...)
            r28.Text = " ";
            return; 
        end);
        m.Name = "open";
        m.Parent = r27;
        m.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        m.BackgroundTransparency = 1;
        m.BorderColor3 = Color3.fromRGB(0, 0, 0);
        m.BorderSizePixel = 0;
        m.Position = UDim2.new(.0343839526, 0, .774104655, 0);
        m.Size = UDim2.new(0, 99, 0, 20);
        m.Font = Enum.Font.ArialBold;
        m.Text = "Open";
        m.TextColor3 = Color3.fromRGB(20, 212, 255);
        m.TextSize = 14;
        f = m.MouseButton1Down;
        f:Connect(function(...)
            local ok, body = pcall(function()
                return game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/ScriptHub")
            end)
            if not ok then
                r29.Text = "Open failed: " .. tostring(body)
                return
            end
            local fn, err = loadstring(body)
            if not fn then
                r29.Text = "Open compile error: " .. tostring(err)
                return
            end
            local runOk, runErr = pcall(fn)
            if not runOk then
                r29.Text = "Open error: " .. tostring(runErr)
            end
            return; 
        end);
        i.Name = "roxploit";
        i.Parent = r27;
        i.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        i.BackgroundTransparency = 1;
        i.BorderColor3 = Color3.fromRGB(0, 0, 0);
        i.BorderSizePixel = 0;
        i.Position = UDim2.new(.904999971, 0, .799000025, 0);
        i.Size = UDim2.new(0, 29, 0, 29);
        i.Font = Enum.Font.SourceSans;
        i.Text = "";
        i.TextColor3 = Color3.fromRGB(0, 0, 0);
        i.TextSize = 14;
        f = i.MouseButton1Down;
        f:Connect(function(...)
            local ok, body = pcall(function()
                return game:HttpGet("https://scriptblox.com/raw/Universal-Script-RoXploit-by-KrystalTeam-9328")
            end)
            if not ok then
                r29.Text = "RoXploit load failed: " .. tostring(body)
                return
            end
            local fn, err = loadstring(body)
            if not fn then
                r29.Text = "RoXploit compile error: " .. tostring(err)
                return
            end
            local runOk, runErr = pcall(fn)
            if not runOk then
                r29.Text = "RoXploit error: " .. tostring(runErr)
            end
            return; 
        end);
        e.Name = "dex";
        e.Parent = r27;
        e.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        e.BackgroundTransparency = 1;
        e.BorderColor3 = Color3.fromRGB(0, 0, 0);
        e.BorderSizePixel = 0;
        e.Position = UDim2.new(.904999971, 0, .910000026, 0);
        e.Size = UDim2.new(0, 29, 0, 29);
        e.Font = Enum.Font.SourceSans;
        e.Text = "";
        e.TextColor3 = Color3.fromRGB(0, 0, 0);
        e.TextSize = 14;
        f = e.MouseButton1Down;
        f:Connect(function(...)
            local ok, body = pcall(function()
                return game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt")
            end)
            if not ok then
                r29.Text = "Dex load failed: " .. tostring(body)
                return
            end
            local fn, err = loadstring(body)
            if not fn then
                r29.Text = "Dex compile error: " .. tostring(err)
                return
            end
            local runOk, runErr = pcall(fn)
            if not runOk then
                r29.Text = "Dex error: " .. tostring(runErr)
            end
            return; 
        end);
        y.Name = "close";
        y.Parent = r27;
        y.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        y.BackgroundTransparency = 1;
        y.BorderColor3 = Color3.fromRGB(0, 0, 0);
        y.BorderSizePixel = 0;
        y.Position = UDim2.new(.88252151, 0, 0, 0);
        y.Size = UDim2.new(0, 41, 0, 24);
        y.Font = Enum.Font.SourceSans;
        y.Text = "";
        y.TextColor3 = Color3.fromRGB(0, 0, 0);
        y.TextSize = 14;
        f = y.MouseButton1Down;
        f:Connect(function(...)
            r27.Visible = false;
            return; 
        end);
        U.Name = "minimize";
        U.Parent = r27;
        U.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
        U.BackgroundTransparency = 1;
        U.BorderColor3 = Color3.fromRGB(0, 0, 0);
        U.BorderSizePixel = 0;
        U.Position = UDim2.new(.598853886, 0, 0, 0);
        U.Size = UDim2.new(0, 41, 0, 24);
        U.Font = Enum.Font.SourceSans;
        U.Text = "";
        U.TextColor3 = Color3.fromRGB(0, 0, 0);
        U.TextSize = 14;
        f = U.MouseButton1Down;
        f:Connect(function(...)
            r27.Visible = false;
            r24.Visible = true;
            return; 
        end);
        local UserInputService = game:GetService("UserInputService")

        local function makeDraggable(frame)
            local dragging = false
            local dragStart
            local startPos
            local dragInput

            frame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1
                    or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    dragStart = input.Position
                    startPos = frame.Position
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
                end
            end)

            frame.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement
                    or input.UserInputType == Enum.UserInputType.Touch then
                    dragInput = input
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if input == dragInput and dragging then
                    local delta = input.Position - dragStart
                    frame.Position = UDim2.new(
                        startPos.X.Scale, startPos.X.Offset + delta.X,
                        startPos.Y.Scale, startPos.Y.Offset + delta.Y
                    )
                end
            end)
        end

        makeDraggable(r25)
        makeDraggable(r27)

print("[rc7] loaded")
