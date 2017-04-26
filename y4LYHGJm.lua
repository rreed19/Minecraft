os.loadAPI("api_dir/button")
--loads in button api

local exiting = false

--creates the button objects to be displayed later
local TurnLeft = button.add(2,10,5,12,"TL")
local Back = button.add(7,10,10,12,"B")
local Forward = button.add(7,6,10,8,"F")
local TurnRight = button.add(12,10,15,12,"TR")
local Exit = button.add(35,2,38,4,"X")
local Dig = button.add(17,10,20,12,"DG")
local DigDown = button.add(17,6,20,8,"DD")
local DigUp = button.add(17,2,20,4,"DU")
local Suck = button.add(22,10,25,12,"S")
local SuckDown = button.add(22,6,25,8,"SD")
local UP = button.add(2,2,5,4,"U")
local Down = button.add(12,2,15,4,"D")
local Refuel = button.add(27,10,30,12,"R")

local function Generate()
	term.setBackgroundColor(colors.black)
	term.clear()
--sets background color to black
	term.setBackgroundColor(colors.blue)
--sets button colors to blue
	term.setTextColor(colors.black)
--sets text in buttons to black

	button.draw(TurnLeft)
	button.draw(Back)
	button.draw(Forward)
	button.draw(TurnRight)
	button.draw(Exit)
	button.draw(Dig)
	button.draw(DigDown)
	button.draw(DigUp)
	button.draw(Suck)
	button.draw(SuckDown)
	button.draw(UP)
	button.draw(Down)
	button.draw(Refuel)

end

--function takes in what you selected and runs code to move turtle that way
local function Choice(x, y)
	if button.click(x, y, TurnLeft) then
		turtle.turnLeft()
	elseif button.click(x, y, Back) then
		turtle.back()
	elseif button.click(x, y, Forward) then
		turtle.forward()
	elseif button.click(x, y, TurnRight) then
		turtle.turnRight()
	elseif button.click(x, y, Exit) then
		exiting = true
	elseif button.click(x, y, Dig) then
		turtle.dig()
	elseif button.click(x,y, DigDown) then
		turtle.digDown()
	elseif button.click(x,y, DigUp) then
		turtle.digUP()
	elseif button.click(x,y, Suck) then
		turtle.suck()
	elseif button.click(x,y, SuckDown) then
		turtle.suckDown()
	elseif button.click(x,y, UP) then
		turtle.up()
	elseif button.click(x,y, Down) then
		turtle.down()
	elseif button.click(x,y, Refuel) then
		turtle.refuel(1)
	end
end

Generate()
while exiting == false do
	local a, b, c, d = os.pullEvent()
--in this a is the event, b is mouse button, c is x position and d is y position	
	if a == "mouse_click" and b == 1 then
		Choice(c, d)
--when the person left clicks on the button it will call the function to move it
	end
end

--clears the screen of the buttons
term.setBackgroundColor(colors.black)
term.clear()