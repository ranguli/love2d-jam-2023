local sti = require "lib/sti"
local camera = require "lib/camera"
local lovebird = require "lib/lovebird"
local Concord = require("lib/concord")

player = {pos = {x = 0, y = 0}, speed = 15}
entities = {}

DEFAULT_ASTEROID_X_VELOCITY = 5
DEFAULT_ASTEROID_Y_VELOCITY = 15

-- Defining components
Concord.component("position", function(c, x, y)
    c.x = x or 0
    c.y = y or 0
end)

Concord.component("velocity", function(c, x, y)
    c.x = x or 0
    c.y = y or 0
end)

Concord.component("size", function(c, diameter)
    c.diameter = diameter or 0
end)


local Drawable = Concord.component("drawable")

-- Defining Systems
local MoveSystem = Concord.system({
    pool = {"position", "velocity"}
})

function MoveSystem:update(dt)
    for _, e in ipairs(self.pool) do
        e.position.x = e.position.x + e.velocity.x * dt
        e.position.y = e.position.y + e.velocity.y * dt
    end
end


local DrawSystem = Concord.system({
    pool = {"position", "drawable", "size"}
})

function DrawSystem:draw()
    for _, e in ipairs(self.pool) do
        love.graphics.circle("fill", e.position.x, e.position.y, e.size.diameter)
    end
end


-- Create the World
local world = Concord.world()

-- Add the Systems
world:addSystems(MoveSystem, DrawSystem)

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    map = sti("testmap.lua")
    initial_asteroids = map.layers["asteroids"].objects

    camera = camera(player.x, player.y)

    player.pos = get_player_start(map)
    create_entities(initial_asteroids)

end

function create_entities(asteroids)
    for i,asteroid in pairs(asteroids) do
        local entity = Concord.entity(world)
        entity:give("position", asteroid.x, asteroid.y)

        local x_velocity = DEFAULT_ASTEROID_X_VELOCITY
        local y_velocity = DEFAULT_ASTEROID_Y_VELOCITY

        if asteroid.properties.x_velocity then
            x_velocity = asteroid.properties.x_velocity
        end
        if asteroid.properties.y_velocity then
            y_velocity = asteroid.properties.y_velocity
        end

        entity:give("velocity", x_velocity, y_velocity)
        entity:give("size", asteroid.width/2)
        entity:give("drawable")

        table.insert(entities, entity)
    end
end

function get_player_start(map)
    custom_objects = map.layers["Custom Objects"].objects
    for name,custom_object in pairs(custom_objects) do
        for property,value in pairs(custom_object.properties) do
            if property == "player_start" and value == true then
                lovebird.print("Found a custom object with the player_start property, it has position X:" .. custom_object.x .. " Y: " .. custom_object.y)
                return {x = custom_object.x, y = custom_object.y}
            end
        end
    end
end

-- Emit the events
function love.update(dt)
    lovebird.update()

    if love.keyboard.isDown("right") then
        player.pos.x = player.pos.x + player.speed
    end
    if love.keyboard.isDown("left") then
        player.pos.x = player.pos.x - player.speed
    end

    map:update(dt)

    camera:lookAt(player.pos.x, player.pos.y)
    camera.scale = 2


    local w = love.graphics.getWidth()

    if player.pos.x < 0 then
        player.pos.x = 0
    end

    world:emit("update", dt)

end

function love.draw()
    camera:attach()
        map:drawLayer(map.layers["background"])
        love.graphics.circle("fill", player.pos.x, player.pos.y, 15)
        world:emit("draw")
    camera:detach()
end
