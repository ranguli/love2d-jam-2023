local Concord = require("lib/concord")

Concord.component("obstacle")

Concord.component("player")

Concord.component("food", function(component, f)
    component.f = f or 1
end)

Concord.component("speed", function(component, s)
    component.speed = s or 2
end)

Concord.component("position", function(component, x, y)
    component.x = x or 0
    component.y = y or 0
end)

Concord.component("size", function(component, w, h)
    component.w = w or 0
    component.h = h or 0
end)

Concord.component("color", function(component, r, g, b)
    component.r = r or 1
    component.g = g or 1
    component.b = b or 1
end)

Concord.component("tiled_id", function(component, tiled_id)
    component.tiled_id = tiled_id
end)
