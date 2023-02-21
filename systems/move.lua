local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")

local MoveSystem = Concord.system({
    pool = {"position"},
    player = {"player"}
})

function MoveSystem:update(dt)
    local player = self.player[1]
    local key_press = false

    if love.keyboard.isDown("w") then
        player.position.y = player.position.y - player.speed.speed
        key_press = true
    end

    if love.keyboard.isDown("s") then
        player.position.y = player.position.y + player.speed.speed
        key_press = true
    end

    if love.keyboard.isDown("a") then
        key_press = true
        player.position.x = player.position.x - player.speed.speed
    end

    if love.keyboard.isDown("d") then
        key_press = true
        player.position.x = player.position.x + player.speed.speed
    end

    if key_press then
        log.debug("Move player to " .. inspect({x = player.position.x, y = player.position.y}))
    end

    --log.debug("Mouse: " .. inspect(mouse))

    for i, e in ipairs(self.pool) do
        if e.obstacle or e.food then
            e.position.y = e.position.y + e.speed.speed
        end
    end
end

return MoveSystem
