--\\=================================//
--||Credits|| 
--||Made By Toby Fox#3104||
--||UI Made By Lord.#0068||
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

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Frisk"
wait(1)
for i = 1,1 do
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HP:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Walk.AnimationId = "rbxassetid://5941655920"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Idle.AnimationId = "rbxassetid://5941649105"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Run.AnimationId = "rbxassetid://5941660121"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Block.AnimationId = "rbxassetid://4358889112"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Jump.AnimationId = "rbxassetid://6492505440"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").FriskMoves.Animations.Fall.AnimationId = "rbxassetid://6492518805"
end
local CurrentCharacter = game:GetService("Players").LocalPlayer.PlayerData.CurrentCharacter.Value

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BasicCombat.Light1.AnimationId = "rbxassetid://4801030095"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BasicCombat.Light2.AnimationId = "rbxassetid://5776251749"
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6485680186" 
Sound.Name = "Adolf Hitler"
game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://4503850611"
--Auto Level Up
	local v1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "Damage", 
	[3] = math.huge, 
	[4] = game.Players.LocalPlayer.Character
    }
    local event = game:GetService("ReplicatedStorage").Remotes.Events
    event:FireServer(v1)
--Thing
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()
--the UI
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
--the UI 2
    spawn(function()
        wait(10)
        --Equip Gun
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "EquipWeapon",
                [3] = "EmptyGun",
                },
           }
        game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(unpack(args))
        --Equip Armor
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "EquipArmor",
                [3] = "TemmieArmor",
                },
           }
        game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(unpack(args))
        wait(3)
        Game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ExpBar:Destroy(
    end)
--Chat
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
--Adolf Buff
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
end)
-- 1
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "1" then
    local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4358889112"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
  ["Type"] = "Knockback",
  ["HitEffect"] = "YellowHitEffect",
  ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
  ["HitTime"] = 1,
  ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HeavyGunShot,
  ["Damage"] = 0
  }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local char = game.Players.LocalPlayer.Character
local clone = script:Clone()
clone.Parent = char
    game.Players:Chat(("Join Us"))
    wait(1.5)
    game.Players:Chat(("And I'll Spare Your Life"))
    wait(1.5)
    game.Players:Chat(("Just Kidding You"))
    wait(0.5)
    game.Players:Chat(("Poland Soldier!"))
    k:stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
  {
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "YellowHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.GunShot,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.3 + Vector3.new(0,0,0), 
["CombatInv"] = true,
["Damage"] = 20
  }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
  {
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "YellowHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.GunShot,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.3 + Vector3.new(0,0,0), 
["CombatInv"] = true,
["Damage"] = 20
  }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
  {
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "YellowHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.GunShot,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.3 + Vector3.new(0,0,0), 
["CombatInv"] = true,
["Damage"] = 20
  }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807935308"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
  {
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "YellowHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.HeavyGunShot,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100 + Vector3.new(0,0,0), 
["CombatInv"] = true,
["Damage"] = 40
  }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
end
end)
game.Workspace.ServerEffects.ServerCooldown:Destroy()
