require("components")

local sti = require("lib/sti")
local camera = require("lib/camera")
local lovebird = require("lib/lovebird")
local Concord = require("lib/concord")
local log = require("lib/log")
local inspect = require("lib/inspect")
local util = require("util")

local MoveSystem = require("systems.move")
local DrawSystem = require("systems.draw")
local CollisionSystem = require("systems.collision")

-- Create the World
local gameworld = Concord.world()

gameworld:addSystem(MoveSystem)
gameworld:addSystem(DrawSystem)
gameworld:addSystem(CollisionSystem)

local camera = camera(0,0)

gameworld:setResource("camera", camera)

util.load_map("levels/testmap.lua", gameworld, physics_world)

function love.load()
    love.window.setMode(800,600, {msaa = 8})
    love.graphics.setDefaultFilter("nearest", "nearest")
    -- Load objects and player from the map, create their entities
end

-- Emit the events
function love.update(dt)
    lovebird.update()
    gameworld:emit("update", dt)
end

function love.draw()
    gameworld:emit("draw")
    --physics_world:draw(255)
end
