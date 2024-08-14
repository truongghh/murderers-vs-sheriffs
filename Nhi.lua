local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
----------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "Ninja Hub",
    SubTitle = "Version Beta 6⁵ | By Nhựtt lỏ",
    TabWidth = 180,
    Size = UDim2.fromOffset(520, 350),
    Acrylic = true,
    Theme = "Light",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    home = Window:AddTab({ Title = "Tab Info", Icon = "activity" }),
    Main = Window:AddTab({ Title = "Tab Farm", Icon = "home" }),
}
local Options = Fluent.Options
do


--------------------------------------------------------------------------------------------------------------------------------------------
--// Anti AFK
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------// 

local Nhi = {
	 aimbot = false,
	 
}
end
-------------// murderers vs sheriffs
--------------------------------------------------------------------------
---// Aimbot
function Aimbot(toggle)
local function teleportToClick()
    local mouse = Player:GetMouse()
    mouse.Button1Down:Connect(function()
        if AimBotEnabled then
            local targetPosition = mouse.Hit.p
            for i, plr in pairs(game.Players:GetPlayers()) do
                if plr ~= Player and plr.Team ~= Player.Team then
                    local character = plr.Character
                    if character then
                        local hrp = character:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            hrp.CFrame = CFrame.new(targetPosition)
                        end
                    end
                end
            end
        end
    end)
end

--------------------------------------------------------------------------------------------------------------

Tabs.Main:AddSection("Main")
local Nhi = Tabs.Main:AddToggle("Aimbot", {Title = "Auto Aimbot", Default = false })
Aimbot:OnChanged(function(toggled)
	if toggled then
	AimBotEnabled = toggled
        if AimBotEnabled then
            HB_Settings.Size = 9999999
            HB_Settings.Transparency = 1
            addHitBoxChanges()
            teleportToClick()
        else
            HB_Settings.Size = 2
            HB_Settings.Transparency = 0.5
        end 
        end)