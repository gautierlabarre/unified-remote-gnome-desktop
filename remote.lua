-- Gnome Desktop unified remote
-- @author Gautier LABARRE

local kb = libs.keyboard;

local areAppsShown = false;
local areOptionsShown = false;

-- @help Show/Hide app list
function showAppsOrWindow (appsShown)
    if (appsShown == false) then
        kb.stroke("super", "a");
        areAppsShown = true;
        return areAppsShown;
    end

    kb.stroke("super", "s");
    areAppsShown = false;
end

--@help Show/Hide buttons to interact with the menu from options. Also close the menu if toggled.
function showOptions(optionsShown)
    if (optionsShown == false) then
        kb.stroke("alt", "space");
        layout.gridArrows.visibility = "visible";
        areOptionsShown = true;
        return true;
    end

    if (optionsShown == true) then
        kb.stroke("esc");
        layout.gridArrows.visibility = "gone";
        areOptionsShown = false
        return true;
    end
end

--@help First line : Move window from screen to screen
actions.moveScreenLeft = function()
    kb.stroke("shift", "super", "left");
end

actions.moveScreenRight = function()
    kb.stroke("shift", "super", "right");
end

--@help Second line : Show all active windows / Show all apps
actions.showWindows = function()
    kb.stroke("super", "S");
end

actions.showApps = function()
    showAppsOrWindow(areAppsShown);
end

--@help Third line : Move window (with cursor) / Set window to fullscreen
actions.moveWindow = function()
    kb.stroke("alt", "F7");
end

actions.fullscreen = function()
    kb.stroke("f11");
end

--@help Fourth line : Option menu (and all arrow when button clicked) / Close window
actions.options = function()
    showOptions(areOptionsShown)
end

actions.close = function()
    kb.stroke("alt", "F4");
end

actions.moveUp = function()
    kb.stroke("up");
end

actions.moveDown = function()
    kb.stroke("down");
end

actions.moveLeft = function()
    kb.stroke("left");
end

actions.moveRight = function()
    kb.stroke("right");
end

actions.enter = function()
    kb.stroke("enter");
end