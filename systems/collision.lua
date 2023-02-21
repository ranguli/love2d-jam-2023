local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")

local CollisionSystem = Concord.system({
    pool = {"position"},
    player = {"player"}
})

function CollisionSystem:update(dt)
    local world = self:getWorld()
    local camera = world:getResource("camera")

    local player = self.player[1]

    local px = player.position.x
    local py = player.position.y
    local pw = player.size.w
    local ph = player.size.h

    -- check if the player is trying to move off of the screen

    for i, e in ipairs(self.pool) do
        if not e.player then
            -- check for the collision
        end
    end
end

return CollisionSystem
