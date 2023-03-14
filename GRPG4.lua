getgenv().farm=false
getgenv().teleport=false


local localdmg = game:GetService("ReplicatedStorage").Remotes.LocalDamage
local tp = game.Players.LocalPlayer.Character.HumanoidRootPart



function Autofarm()
    
    spawn(function()
        
        while farm == true do
            tp.CFrame = CFrame.new(-762, 60, 880)
            wait(1)
                local args = {
                    [1] = workspace.__Enemies:FindFirstChild("AI_kingzombie200"),
                    [2] = 200000}
                 localdmg:FireServer(unpack(args))
                 wait(2)
            tp.CFrame = CFrame.new(220, 178, -800)
        
            wait(1)
            local args = {
                [1] = workspace.__Enemies:FindFirstChild("AI_Demon Lord: Alzrius"),
                [2] = 200000}
    
            localdmg:FireServer(unpack(args))
            wait(2)
        
             tp.CFrame = CFrame.new(1083, 59, -150)
            
             wait(1)
    
             local args = {
            [1] = workspace.__Enemies:FindFirstChild("AI_Val'Grul"),
            [2] = 200000 }
        
            localdmg:FireServer(unpack(args))
            wait(2)
            
        end
    end)
end

function TpPugna()
    tp.CFrame = CFrame.new(-292, 37, 477)
    print('Teleported to Pugna')
end
function TpDemon()
    tp.CFrame = CFrame.new(-700, -5, -268)
    print('Teleported to Demon World')
end
function tpOrc()
    tp.CFrame = CFrame.new(730, 36, -196)
    print('Teleported to Orc Camp')
end

--UI

_G.ToggleColor = Color3.fromRGB(0,255,0)
_G.ButtonColor = Color3.fromRGB(0,125,255)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Goradiel RPG 4 script")

local b = w:CreateFolder("Autofarm")

local c = w:CreateFolder("Teleport")


b:Toggle("Toggle",function(bool)
    getgenv().farm = bool
    print('Auto Farm is', bool)
    if bool == true then
        Autofarm()
    end
end)


c:Button("TP To Pugna", function()
    TpPugna()
end)
    
c:Button("TP to Orc Camp", function()
    tpOrc()
end)    
c:Button("Tp To Demon World", function()
    TpDemon()
end)


c:Label("Quallie#8556",{
    TextSize = 18;
    TextColor = Color3.fromRGB(0,125,255);
    BgColor = Color3.fromRGB(40,40,40);
    }
)
