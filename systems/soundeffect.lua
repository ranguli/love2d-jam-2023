local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")
local moonshine = require("lib/moonshine")

local denver = require("lib/denver")

local SoundEffectSystem = Concord.system({
	pool = {"food"},
    player = {"player"}
})

function SoundEffectSystem:update()
    local world = self:getWorld()
    local player = self.player[1]

    for i, e in ipairs(self.pool) do
        if e.eaten then
            local sine = denver.get({waveform='sinus', frequency=440, length=0.25})
            love.audio.play(sine)
        end
    end
end

return SoundEffectSystem
