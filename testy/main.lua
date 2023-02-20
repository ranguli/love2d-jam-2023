local wf = require("../lib/windfield")
local timer = require("../lib/timer")

function love.load()
    world = wf.newWorld(0, 0, true)
    world:setQueryDebugDrawing(true) -- Draws the area of a query for 10 frames
    world:setGravity(0,50)

    colliders = {}
    asteroid_timer = timer.new()
    --timer.every(1, function() spawn_asteroid() end)
    asteroid_timer:every(0.1, function() spawn_asteroid() end)
end

function spawn_asteroid()
    local size = math.random(25,50)
    asteroid = world:newRectangleCollider(math.random(0,love.graphics.getWidth()), -125, size, size)
    asteroid:applyAngularImpulse(love.math.random(-500,500))
    asteroid:applyLinearImpulse(math.random(-100,100), love.math.random(100,100))
    table.insert(colliders, asteroid)
end


function love.draw()
    world:draw()
end

function love.update(dt)
    asteroid_timer:update(dt)
    world:update(dt)
end

function love.keypressed(key)
    if key == 'p' then
        local colliders = world:queryCircleArea(400, 300, 100)
        for _, collider in ipairs(colliders) do
            collider:applyLinearImpulse(love.math.random(500,5000), 25)
        end
    end
end
