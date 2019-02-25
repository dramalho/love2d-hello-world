Image = Shape:extend()

function Image:new(x, y, speed, path)
  Image.super.new(self, x, y, speed)
  
  -- Circly things
  self.path   = path
  self.image  = love.graphics.newImage(path)
end

function Image:draw()
  love.graphics.draw(self.image, self.x, self.y)
end