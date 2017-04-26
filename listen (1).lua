--written by rreed19 for rednet controller
--this is a copy of a the listen i submitted as guest
 
--opens rednet for use
rednet.open("right")
 
--this is a value to end the program
x = true
 
--takes in the message from the pocket computer and runs command specified
while x == true do
  id, message = rednet.receive()
  if message == "end" then
    x = false
  elseif message == "back" then
    turtle.back()
  elseif message == "forward" then
    turtle.forward()
  elseif message == "left" then
    turtle.turnLeft()
  elseif message == "right" then
    turtle.turnRight()
  elseif message == "dig" then
    turtle.dig()
  elseif message == "digDown" then
    turtle.digDown()
  elseif message == "digUp" then
    turtle.digUp()
  elseif message == "suck" then
    turtle.suck()
  elseif message == "suckDown" then
    turtle.suckDown()
  elseif message == "up" then
    turtle.up()
  elseif message == "down" then
    turtle.down()
  elseif message == "refuel" then
    turtle.refuel(1)
  else
    print(message)  
  end
end