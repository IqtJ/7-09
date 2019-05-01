-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- 
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)
 
centerX = display.contentWidth * .5
centerY = display.contentHeight * .5


---Knight -----------------

----Doing nothing
local sheetOptionsIdle =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetIdleKnight = graphics.newImageSheet( "assets/knightIdle.png", sheetOptionsIdle )


----walking
local sheetOptionsWalk =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetWalkingKnight = graphics.newImageSheet( "assets/knightWalking.png", sheetOptionsWalk )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleKnight
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingKnight
    }
}

----knight position and resolution 
local knight = display.newSprite( sheetIdleKnight, sequence_data )
knight.x = centerX - 200
knight.y = centerY
knight.xScale = 100/587
knight.yScale = 120/707

knight:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function swapSheet()
    knight:setSequence( "walk" )
    knight:play()
    print("walk")
end

timer.performWithDelay( 2000, swapSheet )



------ninja-------

----Doing nothing
local ninjaSheetOptionsIdle =
{
    width = 232,
    height = 439,
    numFrames = 10
}
local sheetIdleNinja = graphics.newImageSheet( "assets/ninjaBoyIdle.png", ninjaSheetOptionsIdle )

----jump attack
local ninjaSheetOptionsJumpAttack =
{
    width = 502,
    height = 522,
    numFrames = 10
}
local sheetNinjaJumpAttack = graphics.newImageSheet( "assets/ninjaBoyJumpAttack.png", ninjaSheetOptionsJumpAttack )

-- sequences table
local sequence_data2 = {
    -- consecutive frames sequence
    {
        name = "ninja idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleninja
    },
    {
        name = "jump attack",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetNinjaJumpAttack
    }
}

----ninja position and resolution 
local ninja = display.newSprite( sheetIdleNinja, sequence_data2 )
ninja.x = centerX + 200
ninja.y = centerY
ninja.xScale = 100/587
ninja.yScale = 120/707

ninja:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function ninjaSwapSheet()
    ninja:setSequence( "jump attack" )
    ninja:play()
    print("walk")
end

timer.performWithDelay( 2000, ninjaSwapSheet )

