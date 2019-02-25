Rectangle = Shape:extend()

function Rectangle:new(x, y, speed, width, height)
  Rectangle.super.new(self, x, y, speed)
  
  -- Rectangly things
  self.width  = width or 70
  self.height = height or 90
end

function Rectangle:draw()
  love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end
