--\\=================================//
--||Credits|| 
--||Made By Toby Fox#3104||
--||UI Made By Lord.#0068||
--||Pname UI Made By meko#2233||
--||Making Pname Understandable Made By elsiah#0440||
--//=================================\\

--// Services

local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local charaMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")

--// The Character Selection

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Frisk"
wait(1)

--// The Animations

for i = 1,1 do
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HP:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Idle.AnimationId = "rbxassetid://4495592637"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Walk.AnimationId = "rbxassetid://4196634355"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Run.AnimationId = "rbxassetid://4693984576"
 game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Block.AnimationId = "rbxassetid://4684303289"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Jump.AnimationId = "rbxassetid://3198665507"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Fall.AnimationId = "rbxassetid://3198653548"
end

--// The LMB
        spawn(function()
        wait(1)
        local player = game:GetService("Players").LocalPlayer
        local MoveAnimations = player.Backpack.Main.FriskMoves.Animations
        local ClickAnimations = player.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat
        local pass = getrenv()._G.Pass
        local remote = game.ReplicatedStorage.Remotes["Events"]

        ClickAnimations.Light1.AnimationId = "rbxassetid://4800254068"
        ClickAnimations.Light2.AnimationId = "rbxassetid://4800262463"
        ClickAnimations.Light3.AnimationId = "rbxassetid://4800266314"
        end)

--// Thing

    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()

--// The UI

local ui1 = plrGui:WaitForChild("UI")
	local ui = ui1:WaitForChild("Ui")
	spawn(function()
		ui.UpdateLog:Destroy()
		ui.UpdateLogInfo:Destroy()
		ui.StaminaBar.BackgroundTransparency = 0.6
		ui.ManaBar.BackgroundTransparency = 0.6
		ui.StaminaBar.ImageLabel:Destroy()
		ui.ManaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Bar.BackgroundColor3 = Color3.new(1,1,0)
		ui.ManaBar.Bar.BackgroundColor3 = Color3.new(1,0.5,1)
		ui.ManaBar.Position = UDim2.new(0.5, 0,0.98, 0)
		ui.ManaBar.Size = UDim2.new(0.302, 0,0.01, 0)
		ui.StaminaBar.Size = UDim2.new(0.4, 0,0.01, 0)
		ui.StaminaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Position = UDim2.new(0.5,0,0.96,0)
		local corner = Instance.new("UICorner")
		corner.Parent = ui.StaminaBar
		corner:Clone().Parent = ui.StaminaBar.Bar
		corner:Clone().Parent = ui.ManaBar
		corner:Clone().Parent = ui.ManaBar.Bar
		local ci = plrGui:WaitForChild("CharaIndicator")
		ci:WaitForChild("Indicator").AnchorPoint = Vector2.new(0.5,0.5)
		ci.Indicator.Position = UDim2.new(0.5,0,0.93,0)
	end)

-- // The New Pname

-- credits to meko#2233
-- also cred to elsiah#0440 for  making it easy to fucking understand you braindead skids
spawn(function()
local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
-- local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

HealthBar.Name = "HealthBar" -- the name of the shitty healthbar
HealthBar.Parent = player.Character.Head -- the parent of the shitty healthbar
HealthBar.ExtentsOffset = Vector3.new(0, 3, 0) -- offset do not touch 
HealthBar.Size = UDim2.new(4, 0, 2, 0) -- the size



-- this is the container 
Frame.Parent = HealthBar 
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)



-- This is for under the player name 
--[[
HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = Frame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
HealthLabel.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
HealthLabel.Font = Enum.Font.Arcade
HealthLabel.Text = "cock"
HealthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left
HealthLabel.TextYAlignment = Enum.TextYAlignment.Center
--]]


PName.Name = "PName" -- DONT CHANGE THIS
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255, 0,0)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Arcade -- FONT
PName.Text = "Dark Lord" -- CUSTOM NAME
PName.TextColor3 = Color3.fromRGB(0,0,0)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 0) -- change this for text outline
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextXAlignment = Enum.TextXAlignment.Center
PName.TextYAlignment = Enum.TextYAlignment.Top
PName.Rotation = 5 -- DO NOT FUCK WITH THIS



local part = PName -- dont change this either
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            Rotation = -5
        } -- properties
        
        local nametween = TweenService:Create(part, Info, Goals) -- shit 
        nametween:Play() -- dont forget this
end)

--// The Music

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 3
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6537474679" 
Sound.Name = "ae"
game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://7006511900"

--// The Hide Chat

_G.hidechat = true
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)

--// The Teleport 

local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(function(k) 
            if k == "r" then
                function getlockchar()
                    local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    return char
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
            end
        end)

--// The Character Buff

local char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
-- // The EXP

	local v1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "Damage", 
	[3] = math.huge, 
	[4] = game.Players.LocalPlayer.Character
    }
    local event = game:GetService("ReplicatedStorage").Remotes.Events
    event:FireServer(v1)

spawn(function()
        wait(12)
-- // The Rose Sword

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "EquipWeapon",
        [3] = "RoseSword"
    }
}

game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(unpack(args))

-- // The Rel Knife

              local A_1 = {
                    [1] = getrenv()._G.Pass,
                    [2] = "EquipWeapon",
                    [3] = "RelKnife"
                }
      local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
Event:InvokeServer(A_1)
Game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ExpBar:Destroy()
Game:GetService("Players").LocalPlayer.PlayerGui.FoodItems:Destroy()
Game:GetService("Players").LocalPlayer.PlayerGui.WeaponSelector:Destroy()
end)

-- // 1
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "1" then
              local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Dark Lord ]
Corrupt!]],
              [4] = Color3.fromRGB(255,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "RealKnifeBaragge"
    }
}

game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(unpack(args))
end            
end)

-- // 2
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "2" then
              local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Dark Lord ]
Immersive Slashes!]],
              [4] = Color3.fromRGB(255,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "ToyKnifeCombo"
    }
}

game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(unpack(args))
end            
end)

-- // 3
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "3" then
                              local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Dark Lord ]
Suffer a slow death!!]],
              [4] = Color3.fromRGB(255,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://5658856843"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.0,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.5)
                Event:InvokeServer(A_1, A_2, A_3)
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.1)
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.1)
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.1)
                Event:InvokeServer(A_1, A_2, A_3)
                wait(0.1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50 + Vector3.new(0,0.0,0), 
						["CombatInv"] = true,
						["Damage"] = 25
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
end            
end)

-- // 4
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "4" then
local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Dark Lord ]
...]],
              [4] = Color3.fromRGB(255,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://7023918365"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                for i = 1,5 do
                for i = 1,10,5 do 
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                end
                end
                end
                end)

game.Workspace.ServerEffects.ServerCooldown:Destroy()
