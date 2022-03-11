local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
game.StarterGui:SetCore("SendNotification",  {
 Title = "press G for perfect block";
 Text = "(have cooldown)";
 Icon = "";
 Duration = 10;
 Button1 = "Script by tobe#2602";
 Callback = NotificationBindable;
})
--setup
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled",true})
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans" --Change this to any character for godmode
wait(1)
local healthBar = game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar")
local pn = healthBar:WaitForChild("Frame"):WaitForChild("PName")
local stamThing = healthBar.Frame:WaitForChild("StaminaBar")
local hp = pn.Parent:WaitForChild("HealthLabel")
local h = pn.Parent:WaitForChild("HP")
pn:Destroy()
stamThing:Destroy()

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.Players.LocalPlayer.Chatted:connect(function(arg_1)
local SW_4 = getrenv()._G.Pass
local SW_5 = "Chatted"
local SW_6 = arg_1
local SW_7 = Color3.fromRGB(98, 37, 209)
game.ReplicatedStorage.Remotes.Events:FireServer({SW_4,"Chatted",SW_6,Color3.fromRGB(170, 0, 255)})
end)
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.new(1, 0, 1)
wait(4)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass,
						[2] = "Blocking", 
						[3] = true
					}
				game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
game.Players.LocalPlayer.Character.CrossBone:Destroy()
game.Players.LocalPlayer.Character.CrossBone2:Destroy()game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.TextColor3 = Color3.fromRGB(160, 0, 160)
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Text = "Phase 1"
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help.Text = " "
game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Block3.AnimationId = "rbxassetid://5973921873"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:210"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:430"local CAS = game:GetService("ContextActionService")
		local FREEZE_COMMAND  = "CantAttack"
		CAS:BindActionAtPriority(
			FREEZE_COMMAND,
			function() 
				return Enum.ContextActionResult.Sink
			end,
			false,
			Enum.ContextActionPriority.High.Value,
			Enum.KeyCode.E,
			Enum.KeyCode.W,
			Enum.KeyCode.A,
			Enum.KeyCode.S,
			Enum.KeyCode.D,
			Enum.KeyCode.Q

		)


--skills

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "z" then game.Players.LocalPlayer:GetMouse()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5777281553"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.4)

local player = game.Players.LocalPlayer
local char = player.Character
for _,name in pairs(game.workspace:GetChildren()) do

if name:FindFirstChildOfClass('Humanoid') then
if name:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - name.PrimaryPart.Position).Magnitude
if range <15 and name.Name ~= player.Name then
local args = {
    [1] = getrenv()._G.Pass,
    [2] = name,
    [3] = {
        ["HitTime"] = 0.2,
        ["Type"] = "Knockback",
		["CombatInv"] = true,
		["Velocity"] = Vector3.new(0, 10, -10), 
        ["HitEffect"] = "LightHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Stab,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end
end
end
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667210178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.8,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
wait(0.4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776249806"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.8,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
wait(0.6)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4300091335"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.KnockUp,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.8,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
wait(0.7)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4357851278"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.8,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Stab,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
wait(0.9)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667210178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GrabbedLeg1,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.8,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
wait(1.2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4300091335"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GrabbedLeg1,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.8,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.ShadowrushHit,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
wait(1.4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4357851278"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.FinalPunchHurt,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.8,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Shadowrushv2,
				["Damage"] = 10
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then game.Players.LocalPlayer:GetMouse()
wait(1.6)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667210178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "CarrotHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.FinalPunchHurt,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Stealth,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5657458641"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 50, -50), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Stab,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(3.6)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5861141100"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(3.7)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(3.8)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(3.9)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(4.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(4.2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(4.3)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(4.4)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(4.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then game.Players.LocalPlayer:GetMouse()
wait(4.6)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -20, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(6)
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then 
        wait(3.5)
function getlockchar()
        local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        return char
    end

    function getlock()
        local pos = mouse.Hit.p
        if game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil then
            pos = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
        end
        warn(pos)
        return pos
    end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,6)
local target = getlockchar()
local mouse = game.Players.LocalPlayer:GetMouse()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "x" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4604309615"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, -50, 20), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
end
end)


--music
	for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
		v:Destroy()
	end
	local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
	music.Volume = 2
	music.SoundId = "rbxassetid://5726439755"
	music.Looped = true
	music:Play()
    local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5657849029"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
game.Players:Chat(("So, you're finally here."))
wait(4)
game.Players:Chat(("Both of us are here, standing alone."))
wait(4)
game.Players:Chat(("With the same goal in mind."))
wait(5)
game.Players:Chat(("Killing each other, and everyone we loved."))
wait(5)
game.Players:Chat(("But who said you'll be the one to finish the job?"))
wait(5.5)
game.Players:Chat(("Nobody did."))
wait(6)
k:Stop()
game.Players:Chat(("I'll make sure i'll be the ONLY one who completes the job!"))
local as = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
as.Volume = 1.5
as.SoundId = "rbxassetid://462606062"
as.Looped = false
as:Play()
local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new('Weld',sword2)
weld.Part0 = sword2
weld.Part1 = char['Right Arm']
sword2.Name = 'DusttrustSwordRight'
sword2.Color = Color3.fromRGB(98, 37, 209)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.6,0,-1.6)
sword2.Transparency = 0
end
end

for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new('Weld',sword2)
weld.Part0 = sword2
weld.Part1 = char['Left Arm']
sword2.Name = 'DusttrustSwordLeft'
sword2.Color = Color3.fromRGB(98, 37, 209)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.6,0,-1.6)
sword2.Transparency = 0
end
end

local CAS = game:GetService("ContextActionService")
		local FREEZE_COMMAND  = "CantAttack"
		CAS:BindActionAtPriority(
			FREEZE_COMMAND,
			function() 
				return Enum.ContextActionResult.Sink
			end,
			false,
			Enum.ContextActionPriority.High.Value,
			Enum.KeyCode.E,
			Enum.KeyCode.Four,
			Enum.KeyCode.Five,
			Enum.KeyCode.Q

		)

	repeat wait()

	until game.Players.LocalPlayer.Character.Humanoid.Health <= 0
	spawn(function()
		wait()
	end)
	wait(0.5)
                game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
                game.Players.LocalPlayer.DeathPlaylist["1Theme"]:Destroy()
                local Sound = Instance.new("Sound")
                Sound.Parent = game.Players.LocalPlayer.DeathPlaylist
                Sound.Volume = 2
                Sound.Playing = true
                Sound.Looped = true
                Sound.SoundId = "rbxassetid://6069012922" 
                Sound.Name = "Sans mad"
game.Players.LocalPlayer.Character.DusttrustSwordRight:Destroy()
game.Players.LocalPlayer.Character.DusttrustSwordLeft:Destroy()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5657849029"
local sd = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
sd:Play()
sd:AdjustSpeed(1)
wait(0.6)
wait(4.5)
game.Players:Chat(("You think you're good enough to kill me in one blow?"))
wait(4.5)
game.Players:Chat(("I'm not that pathetic."))
wait(8.5)
game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://3188795283"
game.Players:Chat(("You'll have to do more than stab me with that rusty knife."))
wait(2)
sd:Stop()
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new('Weld',sword2)
weld.Part0 = sword2
weld.Part1 = char['Right Arm']
sword2.Name = 'DusttrustSwordRight'
sword2.Color = Color3.fromRGB(98, 37, 209)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.6,0,-1.6)
sword2.Transparency = 0
end
end
for _,v in pairs(game.ReplicatedStorage.Resources.Character.Accessories.Sans.BadTimePlayer.BadTimeEye:GetChildren()) do
if v.Name == 'Part' then
BadTimeEye = v:Clone()
BadTimeEye.Parent = char
weld = Instance.new('Weld',BadTimeEye)
weld.Part0 = BadTimeEye
weld.Part1 = char['Head']
BadTimeEye.Name = 'DTEyes'
end
end
spawn(function()
char = game.Players.LocalPlayer.Character
eye = char:WaitForChild("DTEyes")
clone = char.DTEyes.Beam:Clone()
clone.Parent = char.DTEyes
char.DTEyes.Beam:Destroy()
wait()
spawn(function()
    repeat wait()
        spawn(function()
            game.Players.LocalPlayer.Character.DTEyes.Beam.Color = ColorSequence.new(Color3.fromRGB(117, 0, 0))
        end)
        spawn(function()
        for _,v in pairs(char.DTEyes:GetDescendants()) do
            if v.Name == 'ParticleEmitter' then
            v.Color = ColorSequence.new(Color3.fromRGB(117, 0, 0))
            end
        end
        end)
    until false
end)
end)
wait(0.3)
for _,v in pairs(game.ReplicatedStorage.Resources.Character.Accessories.Sans.BadTimePlayer.BadTimeEye:GetChildren()) do
if v.Name == 'Part' then
BadTimeEye = v:Clone()
BadTimeEye.Parent = char
weld = Instance.new('Weld',BadTimeEye)
weld.Part0 = BadTimeEye
weld.Part1 = char['Head']
BadTimeEye.Name = 'DTEyes2'
end
end
spawn(function()
char = game.Players.LocalPlayer.Character
eye = char:WaitForChild("DTEyes2")
clone = char.DTEyes2.Beam:Clone()
clone.Parent = char.DTEyes2
char.DTEyes2.Beam:Destroy()
wait()
spawn(function()
    repeat wait()
        spawn(function()
            game.Players.LocalPlayer.Character.DTEyes2.Beam.Color = ColorSequence.new(Color3.fromRGB(98, 0, 209))
        end)
        spawn(function()
        for _,v in pairs(char.DTEyes2:GetDescendants()) do
            if v.Name == 'ParticleEmitter' then
            v.Color = ColorSequence.new(Color3.fromRGB(98, 0, 209))
            end
        end
        end)
    until false
end)
end)
wait(0.5)
game.Players.LocalPlayer.Character.CrossSansBlade:Destroy()
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
game.StarterGui:SetCore("SendNotification",  {
 Title = "press G for perfect block";
 Text = "(have cooldown)";
 Icon = "";
 Duration = 10;
 Button1 = "Script by tobe#2602";
 Callback = NotificationBindable;
})
wait(3)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:255"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:420"
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Text = "Phase 2"
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help.Text = " "
local CAS = game:GetService("ContextActionService")
		local FREEZE_COMMAND  = "CantAttack"
		CAS:BindActionAtPriority(
			FREEZE_COMMAND,
			function() 
				return Enum.ContextActionResult.Sink
			end,
			false,
			Enum.ContextActionPriority.High.Value,
			Enum.KeyCode.E,
			Enum.KeyCode.Two,
			Enum.KeyCode.Three,
			Enum.KeyCode.Four,
			Enum.KeyCode.Five,
			Enum.KeyCode.Q

		)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "g" then game.Players.LocalPlayer:GetMouse()
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "XCharaKnifeSpecial4",
				[3] = CFrame.new(-224.356201, 0.717905641, -657.934265, -0.449032277, -0.00629026862, 0.893493354, 0.00856028218, 0.99989903, 0.0113414116, -0.893474519, 0.0127412155, -0.448933095)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
		Event:InvokeServer(A_1)
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "b" then game.Players.LocalPlayer:GetMouse()
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Royal purple")
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 9
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, -3, 6), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Royal purple")
		k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "n" then
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://5666781364" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "YellowHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 3, 16), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 35
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "n" then
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Deep orange")
wait(1)
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Deep orange")
wait(4)
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Royal purple")
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "f" then game.Players.LocalPlayer:GetMouse()
wait(1.7)
				local A_1 = 
					{
						[1] = getrenv()._G.Pass,
						[2] = "Blocking", 
						[3] = false
					}
				game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "m" then
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4385319937"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Overwrite", 
	[3] = "Heal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "m" then
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Dark green")
wait(1)
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Dark green")
wait(2)
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Royal purple")
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["HitTime"] = 0.2,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(1.8)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect2",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(2.4)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect2",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(3.4)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 9
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(3.8)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(4.4)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(4.8)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.1)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.2)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.3)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.4)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.5)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.6)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.7)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.8)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
wait(5.9)
local warning = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
warning.Volume = 9 
warning.SoundId = "rbxassetid://5774023068" 
warning.Looped = false
warning:Play()
wait(1)
local slash = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
slash.Volume = 8
slash.SoundId = "rbxassetid://6194599840" 
slash.Looped = false
slash:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4377103702"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(6)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["HitTime"] = 0.2,
				["CombatInv"] = true,
				["BlockAble"] = false,
				["Damage"] = 30
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(2)
		k:Stop()
        end
    end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Really red")
wait(1.8)
game.Players.LocalPlayer.Character["DusttrustSwordRight"].BrickColor = BrickColor.new("Royal purple")
        end
    end)