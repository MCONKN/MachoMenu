local MenuSize = vec2(600, 350)
local MenuStartCoords = vec2(500, 500)
local TabsBarWidth = 0
local SectionChildWidth = MenuSize.x - TabsBarWidth
local SectionsCount = 3
local SectionsPadding = 10
local MachoPaneGap = 10
local EachSectionWidth = (SectionChildWidth - (SectionsPadding * (SectionsCount + 1))) / SectionsCount
local SectionOneStart = vec2(TabsBarWidth + (SectionsPadding * 1) + (EachSectionWidth * 0), SectionsPadding + MachoPaneGap)
local SectionOneEnd = vec2(SectionOneStart.x + EachSectionWidth, MenuSize.y - SectionsPadding)
MenuWindow = MachoMenuWindow(MenuStartCoords.x, MenuStartCoords.y, MenuSize.x, MenuSize.y)

MachoMenuSetAccent(MenuWindow, 137, 52, 235)


FirstSection = MachoMenuGroup(MenuWindow, "Section One", SectionOneStart.x, SectionOneStart.y, SectionOneEnd.x, SectionOneEnd.y)

MachoMenuButton(FirstSection, "Close", function()
    MachoMenuDestroy(MenuWindow)
end)


MachoMenuButton(FirstSection, "GetResourceName", function()
    print(_G)
end)

--local Payload = MachoWebRequest("https://raw.githubusercontent.com/MCONKN/MachoMenu/main/menu.lua")
--MachoIsolatedInject(Payload)