--[[
Отдельные плитки, которые составляют нашу игровую доску.
Каждая плитка может иметь свой цвет и разнообразие,
причем разновидности добавляют дополнительные очки к матчам.
]]

Tile = Class{}

function Tile:init(x, y, color, variety)

    -- Позиция плитки
    self.gridX = x
    self.gridY = y

    -- Координаты
    self.x = (self.gridX - 1) * 32
    self.y = (self.gridY - 1) * 32

    -- внешний вид плитки / точки
    self.color = color
    self.variety = variety
end

function Tile:render(x, y)

    -- рисуйте тень
    love.graphics.setColor(34, 32, 52, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x + 2, self.y + y + 2)

    --рисуем саму плитку
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x, self.y + y)
end
