function add(xStartPos,yStartPos,xEndPos,yEndPos,text,data)
  Button = {
    xStartPos = xStartPos,
	yStartPos = yStartPos,
	xEndPos = xEndPos,
	yEndPos = yEndPos,
	text = text,
	}
  if data then
    Button.data = data
  end
  return Button
end

function draw(name,colour)
  if colour then
    oldColour = term.getBackgroundColour()
    term.setBackgroundColour(colour)
  end
  paintutils.drawFilledBox(name.xStartPos,name.yStartPos,name.xEndPos,name.yEndPos)
  term.setCursorPos(math.ceil(name.xStartPos + (name.xEndPos-name.xStartPos)/2 - string.len(name.text)/2),   math.floor(   name.yStartPos+(name.yEndPos-name.yStartPos)/2))
  print(name.text)
  if colour then
    term.setBackgroundColour(oldColour)
  end
end

function click(xPos,yPos,name)
  if xPos >= name.xStartPos and yPos >= name.yStartPos and xPos <= name.xEndPos and yPos <= name.yEndPos then
    if not name.data then
      return true
	else
	  return name.data
	end
  else
    return false
  end
end