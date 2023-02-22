local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")

local MoveSystem = Concord.system({
    pool = {"pos"},
    player = {"player"}
})

function MoveSystem:update(dt)
    local player = self.player[1]

    -- TODO: convert to vectors

    if love.keyboard.isDown("w") then
        log.warn(player.speed.s)
        player.pos.y = player.pos.y - (player.speed.s * dt)
    end

    if love.keyboard.isDown("s") then
        player.pos.y = player.pos.y + (player.speed.s * dt)
    end

    if love.keyboard.isDown("a") then
        player.pos.x = player.pos.x - (player.speed.s * dt)
    end

    if love.keyboard.isDown("d") then
        player.pos.x = player.pos.x + (player.speed.s * dt)
    end

    for i, e in ipairs(self.pool) do
        if e.obstacle or e.food then
            e.pos.y = e.pos.y + (e.speed.s * dt)
        end
    end
end

return MoveSystem
