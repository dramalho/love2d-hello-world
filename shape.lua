Shape = Object:extend()

function Shape:new(x, y, speed)
  self.x = x
  self.y = y
  self.speed  = speed or 100
end

function Shape:update(delta_time)
  if love.keyboard.isDown("right") then
    self.x = self.x + self.speed * delta_time -- Increments x at the rate of self.speed pixels / sec
  end

  if love.keyboard.isDown("left") then
    self.x = self.x - self.speed * delta_time -- Increments x at the rate of self.speed pixels / sec
  end

  if love.keyboard.isDown("up") then
    self.y = self.y - self.speed * delta_time
  end

  if love.keyboard.isDown("down") then
    self.y = self.y + self.speed * delta_time
  end
end