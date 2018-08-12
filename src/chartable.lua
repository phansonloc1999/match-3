CharTable = {}

-- Map matrix of characters
local map = {}

CHARS_SPRITES = {
    [1] = love.graphics.newImage("assets/graphics/characters/1.png"),
    [2] = love.graphics.newImage("assets/graphics/characters/2.png"),
    [3] = love.graphics.newImage("assets/graphics/characters/3.png"),
    [4] = love.graphics.newImage("assets/graphics/characters/4.png"),
    [5] = love.graphics.newImage("assets/graphics/characters/5.png"),
    [6] = love.graphics.newImage("assets/graphics/characters/6.png"),
    [7] = love.graphics.newImage("assets/graphics/characters/7.png"),
}

CHAR_WIDTH, CHAR_HEIGHT = 60, 60

function CharTable:init(row, column, topX, topY)
    self.m_row, self.m_column = row, column
    self.m_counter = row * column
    self.m_topX, self.m_topY = topX, topY

    for i = 0, row - 1 do
        table.insert(map, {})
        for j = 0, column - 1 do
            table.insert(map[i+1], Char())
            map[i+1][j+1]:init(CharTable:getRandomChar(), self.m_topX + j * CHAR_WIDTH, self.m_topY + i * CHAR_HEIGHT)
        end
    end
end

function CharTable:render()
    for i = 1, self.m_row do
        for j = 1, self.m_column do
            (map[i][j]):render()
        end
    end
end

function CharTable:update()

end

function CharTable:getRandomChar()
    return math.random(1, 7)
end