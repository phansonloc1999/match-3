Char = Class{}

function Char:init(type, x, y)
    self.m_x, self.m_y = x, y
    self.m_type = type
end

function Char:render()
    love.graphics.draw(CHARS_SPRITES[self.m_type], self.m_x, self.m_y)
end