require("./src/dependencies")

function love.load()
    CharTable:init(5, 5, 20, 20)
end

function love.draw()
    CharTable:render()
end

function love.update(dt)
    CharTable:update()
end