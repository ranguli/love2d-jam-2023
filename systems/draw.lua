local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")
local moonshine = require("lib/moonshine")

local DrawSystem = Concord.system({
	pool = {"pos"},
    player = {"player"}
})


effect = moonshine(moonshine.effects.glow)
effect.parameters = {
  glow = {strength = 20, min_luma = 0},
}

set_camera = false

function DrawSystem:draw()
    local world = self:getWorld()
    local camera = world:getResource("camera")

    if not set_camera then
        local player = self.player[1]
        camera:lookAt(player.pos.x, player.pos.y)
        camera.scale = 2
        set_camera = true
    end

    effect(function()
    camera:attach()

    for i, e in ipairs(self.pool) do
        local x = e.pos.x
        local y = e.pos.y

        local w = e.size.w
        local h = e.size.h
        love.graphics.setColor(e.color.r, e.color.g, e.color.b)

        love.graphics.rectangle("fill", x, y, w, h)
        love.graphics.setColor(1,1,1)
    end
    camera:detach()
    end)
end

return DrawSystem

