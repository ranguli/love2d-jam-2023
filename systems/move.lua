local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")

local MoveSystem = Concord.system({
    pool = {"pos"},
    player = {"player"}
})

function MoveSystem:update(dt)
    local player = self.player[1]
    local key_press = false

    if love.keyboard.isDown("w") then
        player.pos.y = player.pos.y - player.speed.speed
        key_press = true
    end

    if love.keyboard.isDown("s") then
        player.pos.y = player.pos.y + player.speed.speed
        key_press = true
    end

    if love.keyboard.isDown("a") then
        key_press = true
        player.pos.x = player.pos.x - player.speed.speed
    end

    if love.keyboard.isDown("d") then
        key_press = true
        player.pos.x = player.pos.x + player.speed.speed
    end

    if key_press then
        log.debug("Move player to " .. inspect({x = player.pos.x, y = player.pos.y}))
    end

    --log.debug("Mouse: " .. inspect(mouse))

    for i, e in ipairs(self.pool) do
        if e.obstacle or e.food then
            e.pos.y = e.pos.y + e.speed.speed
        end
    end
end

return MoveSystem
