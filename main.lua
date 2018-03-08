-- Title: TouchAndDrag
-- Name: Desmy M-J
-- Course: ICS2O/3C
-- This program displays images tthat can be dragged
--around on the screen

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150, 150)
local yellowGirlWidth = yellowGirl.Width