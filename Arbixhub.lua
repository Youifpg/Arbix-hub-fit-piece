local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

-- Window or baseplate Make tab or section
local Window = Library:NewWindow("ARBIX HUB | FIT PIECE2")

-- Section - Section Useful you don't want ok?
local Section = Window:NewSection("MONEY")
local num -- Declare num as a local variable

local moneyTextBox = Section:CreateTextbox("Enter Amount", function(value)
    num = value -- Store the raw input value directly
end)

Section:CreateButton("Get", function()
    if num and num ~= "" then -- Check if num is not empty
        local args = {
            [1] = "Buy",
            [2] = "Sword Wood Caixa",
            [3] = -tonumber(num) -- Convert to number when sending
        }

        -- Fire the server with the arguments
        game:GetService("ReplicatedStorage").Shop:FireServer(unpack(args))
    end
end)

local Section = Window:NewSection("SWORDS")

local swordTextBox = Section:CreateTextbox("Enter Amount", function(text)
end)

Section:CreateButton("Get the sword", function()
    if text and text ~= "" then
      local args = {
    [1] = text
}

game:GetService("ReplicatedStorage").Remotes2.Inventory:FireServer(unpack(args))
    end)


local Section = Window:NewSection("FRUITS")  
CreateButton("Get all fruit", function()
      local args = {
    [1] = "Rare", "Uncommon", "Common"
}

game:GetService("Players").LocalPlayer.PlayerGui.SpinUI.ScreenGui.Accept.Spin.Reward:FireServer(unpack(args))
    end)
      
local Section = Window:NewSection("CLICK AND OTHER")
  
  CreateButton("Click Asta blade (1%)", function()
    while true do  fireclickdetectorworkspace["Asta Blade"].ClickDetector wait(0.1) end
    end)

  CreateButton("Click SHADOW BLADE (0.5%)", function()
    while true do  fireclickdetectorworkspace["Shadown Blade"].ClickDetector wait(0.1) end
    end)

  CreateButton("No Cooldown", function()
      g = hookfunction(wait, function(seconds)
return g(0)
end)
    end)
      