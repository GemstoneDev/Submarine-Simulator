--[[
    Come here and take my stuff skids
]]
-- //UI Colors\\ --
_G.ButtonColor = Color3.fromRGB(0, 132, 255)

-- //Variables\\ --
local fakejumpscare = game:GetService("StarterGui").night.jumpscare
local realjumpscare = game:GetService("StarterGui").gameover.jumpscare

fakeJSSound = game:GetService("Players").LocalPlayer.PlayerGui.night.LocalScript.Jumpscare
realJSSound = game:GetService("Players").LocalPlayer.PlayerGui.night.LocalScript.realjumpscare

-- //Welcoming Notification\\ --
game.StarterGui:SetCore("SendNotification", {
    Title = "Submarine Simulator Script";
    Text = "Made by Sapphire#4567 (me)";
    Duration = 120;
    Button1 = "Okay";
})
wait(0.5)
-- //UILib\\ --
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BreakSapphire/Wally-V3-Backup/main/script/main.lua')))()

local MainWindow = library:CreateWindow("Main")

local LocalPlayer = MainWindow:CreateFolder("LocalPlayer")

LocalPlayer:Button("Infinite Power",function()
    local pmt = getrawmetatable(game);
        make_writeable(pmt);
        local pold_index = pmt.__index;

        pmt.__index = function(a, b)
            if tostring(a) == "Power" then
                if tostring(b) == "Value" then
                return math.huge 
            end
        end
        return pold_index(a, b)
    end
end)

LocalPlayer:Button("Infinite Oxygen",function()
    local omt = getrawmetatable(game);
    make_writeable(omt);
    local oold_index = omt.__index;

    omt.__index = function(a, b)
        if tostring(a) == "Oxygen" then
            if tostring(b) == "Value" then
            return math.huge 
            end
        end
        return oold_index(a, b)
    end
end)

local Him = MainWindow:CreateFolder("\"Him\"")
Him:Button("Remove Jumpscare", function()
    fakejumpscare.Image = 0
    realjumpscare.Image = 0
    fakeJSSound.SoundId = 0
    realJSSound.SoundId = 0
end)
