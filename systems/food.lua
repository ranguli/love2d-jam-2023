local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")

local FoodSystem = Concord.system({
    pool = {"food"},
    player = {"player"}
})

function FoodSystem:update()
    local player = self.player[1]

    assert(player ~= nil, "why the fuck player nilly?")

    for i, food in ipairs(self.pool) do
        if food.eaten then
            player.nutritional_intake.val = player.nutritional_intake.val + food.nutritional_value.val
            print("that food got eated")
            --food:destroy()
        end
    end
end

return FoodSystem
