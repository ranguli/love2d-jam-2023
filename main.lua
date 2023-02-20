local sti = require "lib/sti"
local camera = require "lib/camera"
local lovebird = require "lib/lovebird"

function love.load()
    player = {pos = {x = 0, y = 0}, speed = 5}


    love.graphics.setDefaultFilter("nearest", "nearest")
    map = sti("testmap.lua")

    camera = camera(player.x, player.y)
    --camera.scale = camera.scale * 2
    scale_increase = 0.01

    player.pos = get_player_start(map)
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
    scale_increase = scale_increase + 0.01

    if love.keyboard.isDown("right") then
        player.pos.x = player.pos.x + player.speed
    end
    if love.keyboard.isDown("left") then
        player.pos.x = player.pos.x - player.speed
    end

    player.pos.y = player.pos.y - player.speed
    map:update(dt)

    camera:lookAt(player.pos.x, player.pos.y)
    --camera:zoom(scale_increase)


    local w = love.graphics.getWidth()

    if player.pos.x < 0 then
        player.pos.x = 0
    end
    --[[
    if camera.x > w/2 then
        camera.x = w/2
    end--]]
end

function drawCamera(l,t,w,h)
end

function love.draw()
    camera:attach()
        love.graphics.circle("fill", player.pos.x, player.pos.y, 15)
        map:drawLayer(map.layers["asteroids"])
    camera:detach()
end
