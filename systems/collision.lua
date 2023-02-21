local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")

local CollisionSystem = Concord.system({
    pool = {"pos"},
    player = {"player"}
})

function CollisionSystem:update(dt)
    local world = self:getWorld()
    local camera = world:getResource("camera")

    local player = self.player[1]

    -- This is where the sausage is made :(
    -- https://developer.mozilla.org/en-US/docs/Games/Techniques/2D_collision_detection

    for i, e in ipairs(self.pool) do
        if not e.player then -- Don't check if the player collides with itself
            CollisionSystem:check_collision(player, e)
        end
    end
end

function CollisionSystem:check_collision(player, entity)
    if (
        player.pos.x < entity.pos.x + entity.size.w and
        player.pos.x + player.size.w > entity.pos.x and
        player.pos.y < entity.pos.y + entity.size.h and
        player.size.h + player.pos.y > entity.pos.y
    ) then
        if entity.obstacle then
            -- Need game state management lol
            love.event.quit()
        elseif entity.food then
             -- Callback or some ECS magic here?
             entity:destroy()
        end
    end
end

return CollisionSystem
