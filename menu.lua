local MenuSize = vec2(600, 350)
local MenuStartCoords = vec2(500, 500)

local TabsBarWidth = 0 -- The width of the tabs bar, height is assumed to be MenuHeight as it goes top to bottom

local SectionChildWidth = MenuSize.x - TabsBarWidth -- The total size for sections on the left hand side
local SectionsCount = 3
local SectionsPadding = 10 -- pixels between each section (that makes SetionCount + 1 = total padding areas)
local MachoPaneGap = 10 -- Hard coded gap of accent at the top.

-- Therefore each section width must be:
local EachSectionWidth = (SectionChildWidth - (SectionsPadding * (SectionsCount + 1))) / SectionsCount


-- Now you have each sections absolute width, you can calculate their X coordinate and Y coordinate
local SectionOneStart = vec2(TabsBarWidth + (SectionsPadding * 1) + (EachSectionWidth * 0), SectionsPadding + MachoPaneGap)
local SectionOneEnd = vec2(SectionOneStart.x + EachSectionWidth, MenuSize.y - SectionsPadding)

-- Create our window, MenuStartCoords is where the menu starts
MenuWindow = MachoMenuWindow(MenuStartCoords.x, MenuStartCoords.y, MenuSize.x, MenuSize.y)

MachoMenuSetAccent(MenuWindow, 137, 52, 235)


-- First tab
FirstSection = MachoMenuGroup(MenuWindow, "Chezza Inventory", SectionOneStart.x, SectionOneStart.y, SectionOneEnd.x, SectionOneEnd.y)

MachoMenuButton(FirstSection, "Close", function()
    MachoMenuDestroy(MenuWindow)
end)

