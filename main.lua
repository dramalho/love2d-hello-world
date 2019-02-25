function love.load()
  --Remember: camelCasing!
  list_of_shapes   = {}

  Object           = require "classic"
  require("shape")
  require("rectangle")
  require("circle")
  require("image")
  -- tick             = require "tick"
end

function love.draw()
  for i,shape in ipairs(list_of_shapes ) do 
    shape:draw()
  end
end

function love.keypressed(key)
  --Remember, 2 equal signs (==) for comparing!
  if key == "space" then
    pick_a_shape = math.random(0,14)

    if pick_a_shape >= 10 then
      size = math.random(10,100)
      table.insert(list_of_shapes, Rectangle(math.random(0, 100), math.random(0,100), math.random(0,50), size, size))
    elseif pick_a_shape >= 4 then
      size = math.random(10,100)
      table.insert(list_of_shapes, Circle(math.random(0, 100), math.random(0,100), math.random(0,50)))
    else
      table.insert(list_of_shapes, Image(math.random(0, 100), math.random(0,100), math.random(0,50), "assets/images/sheep.png"))
    end
  end
end

function love.update(delta_time)
  for i,shape in ipairs(list_of_shapes) do 
    shape:update(delta_time)
  end
end