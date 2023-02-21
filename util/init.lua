local Concord = require("lib/concord")
local sti = require("lib/sti")
local log = require("lib/log")
local inspect = require("lib/inspect")

local util = {}

function util.load_map(mapfile, world)
    map = sti(mapfile)

    --for i,tiled_object in pairs(map.layers[1].objects) do
    for i,tiled_object in pairs(map.objects) do
        local entity = Concord.entity(world)

        local id = tiled_object.id
        local x = tiled_object.x
        local y = tiled_object.y

        local w = tiled_object.width
        local h = tiled_object.height
        local r, g, b = util.randomRGB()

        local entity_string = "[Tiled Object #" .. id .. "]"
        log.debug(entity_string .. "Retrieved object with following properties:" .. inspect({x = x, y = y, w = w, h =h}))

        entity:give("tiled_id", id)

        entity:give("color", r, g, b)
        log.debug(entity_string .. " had its entity given a color component of " .. inspect({r=r,g=g,b=b}))

        entity:give("pos", x, y)
        log.debug(entity_string .. " had its entity given a position component of x:" .. x .. " y:" .. y)

        entity:give("size", w, h)
        log.debug(entity_string .. " had its entity given a size component of w:" .. w .. " h:" .. h)

        if tiled_object["type"] == "Player" then
            entity:give("player")
            entity:give("speed")
            log.debug(entity_string .. " had its entity given a player component")

        elseif tiled_object["type"] == "Obstacle" then
            entity:give("obstacle")
            log.debug(entity_string .. " had its entity given an obstacle component")

        elseif tiled_object["type"] == "Food" then
            entity:give("food")
            entity:give("color", 0.25, 0.75, 0.25)
            log.debug(entity_string .. " had its entity given an obstacle component")
        end

        entity:give("speed")
    end
end

function util.randomRGB()
    local min = 100
    local max = 255

    return {
        love.math.random(min,max)/255,
        love.math.random(min,max - 50)/255,
        love.math.random(min,max)/255,
    }
end

return util
