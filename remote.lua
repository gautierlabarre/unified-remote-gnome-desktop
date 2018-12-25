local kb = libs.keyboard;

-- Documentation
-- http://www.unifiedremote.com/api

-- Keyboard Library
-- http://www.unifiedremote.com/api/libs/keyboard


--@help First line : Move window from screen to screen   UNTESTED
actions.moveScreenLeft = function ()
	kb.stroke("shift", "super", "left");
end

actions.moveScreenRight = function ()
	kb.stroke("shift", "super", "right");
end

--@help First line : Move window from screen to screen
actions.showWindows = function ()
	kb.stroke("super", "S");
end

actions.showApps = function () --Fixme : Boolean to launch showWindows when showApps is displayed 
	kb.stroke("super", "a");
end

--@help First line : Move window from screen to screen
actions.moveWindow = function ()
	kb.stroke("alt", "F7");
end

actions.fullscreen = function ()
	kb.stroke("f11");
end

--@help First line : Move window from screen to screen
actions.options = function ()
	kb.stroke("alt", "space");
end

actions.close = function ()
	kb.stroke("alt", "F4");
end


--@help First line : Move window from screen to screen
actions.moveUp = function ()
	kb.stroke("up");
end

actions.moveDown = function ()
	kb.stroke("down");
end

actions.moveLeft = function ()
	kb.stroke("left");
end

actions.moveRight = function ()
	kb.stroke("right");
end

actions.enter = function ()
	kb.stroke("enter");
end