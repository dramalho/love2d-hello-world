Circle = Shape:extend()

function Circle:new(x, y, speed, radius)
  Circle.super.new(self, x, y, speed)
  
  -- Circly things
  self.radius  = radius or 20
end

function Circle:draw()
  love.graphics.circle("line", self.x, self.y, self.radius)
end