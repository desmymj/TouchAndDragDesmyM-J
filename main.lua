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
local yellowGirlWidth = yellowGirl.width 
local yellowGirlHeight = yellowGirl.height 

local blueGirl = display.newImageRect("Images/blueGirl.png", 150, 150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height

--my boolean variables to keep track of which objecy I touched first
local alreadyTouchedYellowGitl = false
local alreadyTouchedBlueGirl = false

--sound effect
local freemusic = audioloadSound("Sound/bensound-funkyelement.mp3")
local freemusicChannel

freemusicChannel = audio.play(freemusic)

--set the initial x and y position of MyImage
yellowGirl.x = 400
yellowGirl.y = 500

blueGirl.x = 300
blueGirl.y = 200

--function: BlueGirlListener
--Input: touch listener
--output: none
--Description: when blue girl is touched, move her
local function BlueGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) then
			alreadyTouchedBlueGirl = true
		end
	end

	if      ( (touch.phase == "moved") and (alreadyTouchedBlueGirl == true ) ) then
	        blueGirl.x = touch.x
	    end blueGirl.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedBlueGirl = false
	    alreadyTouchedYellowGirl = false
	end
end

-- add the respective listeners to each object
blueGirl:addEventListener("touch", BlueGirlListener)


