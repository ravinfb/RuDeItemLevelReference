local addonName, addonTable = ...

--[[]addonTable.gearilvltrack = {
    { "Item Level", "Upgrade Crests", "Upgrade Tracks" },
    { 597, "", "Explorer 1/8" },
    { 600, "", "Explorer 2/8" },
    { 603, "", "Explorer 3/8" },
    { 606, "", "Explorer 4/8" },
    { 610, "", "Explorer 5/8 or Adventurer 1/8" },
    { 613, "", "Explorer 6/8 or Adventurer 2/8" },
    { 616, "", "Explorer 7/8 or Adventurer 3/8" },
    { 619, "", "Explorer 8/8 or Adventurer 4/8" },
    { 623, "Weathered", "Adventurer 5/8 or Veteran 1/8" },
    { 626, "Weathered", "Adventurer 6/8 or Veteran 2/8" },
    { 629, "Weathered", "Adventurer 7/8 or Veteran 3/8" },
    { 632, "Weathered", "Adventurer 8/8 or Veteran 4/8" },
    { 636, "Carved", "Veteran 5/8 or Champion 1/8" },
    { 639, "Carved", "Veteran 6/8 or Champion 2/8" },
    { 642, "Carved", "Veteran 7/8 or Champion 3/8" },
    { 645, "Carved", "Veteran 8/8 or Champion 4/8" },
    { 649, "Runed", "Champion 5/8 or Hero 1/6" },
    { 652, "Runed", "Champion 6/8 or Hero 2/6" },
    { 655, "Runed", "Champion 7/8 or Hero 3/6" },
    { 658, "Runed", "Champion 8/8 or Hero 4/6" },
    { 662, "Gilded", "Hero 5/6 or Myth 1/6" },
    { 665, "Gilded", "Hero 6/6 or Myth 2/6" },
    { 668, "Gilded", "Myth 3/6" },
    { 672, "Gilded", "Myth 4/6" },
    { 675, "Gilded", "Myth 5/6" },
    { 678, "Gilded", "Myth 6/6" }
}--]]

addonTable.gearilvltrack = {
    { "Item Level", "Upgrade Crests", "Explorer", "Adventurer", "Veteran", "Champion", "Hero", "Myth" },
    { 597, "", "Explorer 1", "", "", "", "", "" },
    { 600, "", "Explorer 2", "", "", "", "", "" },
    { 603, "", "Explorer 3", "", "", "", "", "" },
    { 606, "", "Explorer 4", "", "", "", "", "" },
    { 610, "", "Explorer 5", "Adventurer 1", "", "", "", "" },
    { 613, "", "Explorer 6", "Adventurer 2", "", "", "", "" },
    { 616, "", "Explorer 7", "Adventurer 3", "", "", "", "" },
    { 619, "", "Explorer 8", "Adventurer 4", "", "", "", "" },
    { 623, "Weathered", "", "Adventurer 5", "Veteran 1", "", "", "" },
    { 626, "Weathered", "", "Adventurer 6", "Veteran 2", "", "", "" },
    { 629, "Weathered", "", "Adventurer 7", "Veteran 3", "", "", "" },
    { 632, "Weathered", "", "Adventurer 8", "Veteran 4", "", "", "" },
    { 636, "Carved", "", "", "Veteran 5", "Champion 1", "", "" },
    { 639, "Carved", "", "", "Veteran 6", "Champion 2", "", "" },
    { 642, "Carved", "", "", "Veteran 7", "Champion 3", "", "" },
    { 645, "Carved", "", "", "Veteran 8", "Champion 4", "", "" },
    { 649, "Runed", "", "", "", "Champion 5", "Hero 1", "" },
    { 652, "Runed", "", "", "", "Champion 6", "Hero 2", "" },
    { 655, "Runed", "", "", "", "Champion 7", "Hero 3", "" },
    { 658, "Runed", "", "", "", "Champion 8", "Hero 4", "" },
    { 662, "Gilded", "", "", "", "", "Hero 5", "Myth 1" },
    { 665, "Gilded", "", "", "", "", "Hero 6", "Myth 2" },
    { 668, "Gilded", "", "", "", "", "", "Myth 3" },
    { 672, "Gilded", "", "", "", "", "", "Myth 4" },
    { 675, "Gilded", "", "", "", "", "", "Myth 5" },
    { 678, "Gilded", "", "", "", "", "", "Myth 6" }
}
addonTable.bountifuldelveloot = {
    { "Tier", "Loot", "Vault", "Crest Drops" },
    { "1", "600", "623", "Weathered" },
    { "2", "603", "626", "Weathered" }
}
addonTable.dungeonloot = {
    { "Level", "Loot", "Vault", "Crest Drops" },
    { "Mythic", 636, 645, "15 Carved" },
    { "Mythic +2", 639, 649, "10 Runed" },
    { "Mythic +3", 639, 649, "12 Runed" },
    { "Mythic +4", 642, 652, "14 Runed" },
    { "Mythic +5", 645, 652, "16 Runed" },
    { "Mythic +6", 649, 655, "18 Runed" },
    { "Mythic +7", 649, 655, "10 Gilded" },
    { "Mythic +8", 652, 658, "12 Gilded" },
    { "Mythic +9", 652, 658, "14 Gilded" },
    { "Mythic +10", 655, 662, "16 Gilded" },
    { "Mythic +11", 655, 662, "18 Gilded" },
    { "Mythic +12", 655, 662, "20 Gilded" }
}
addonTable.crafting = {
    { "Item Quality", "Enchanted Weathered", "Spark of Omens", "Enchanted Runed", "Enchanted Gilded" },
    { 1, 616, 623, 645, 662 },
    { 2, 619, 626, 649, 665 },
    { 3, 623, 629, 652, 668 },
    { 4, 626, 632, 655, 672 },
    { 5, 629, 636, 658, 675 }
}
addonTable.bountifuldelveloot = {
    { "Tier", "Loot", "Vault", "Crest Drops" },
    { 1, 600, 623, "Weathered" },
    { 2, 603, 626, "Weathered" },
    { 3, 610, 629, "Weathered" },
    { 4, 616, 632, "Weathered" },
    { 5, 623, 639, "Weathered" },
    { 6, 626, 645, "Carved" },
    { 7, 626, 645, "Carved" },
    { 8, 639, 649, "Carved" },
    { 9, 639, 649, "Runed" },
    { 10, 639, 649, "Runed" },
    { 11, 639, 649, "Gilded" }
}
addonTable.raidlou = {
    { "Difficulty", "Bosses", "Loot", "Crest Drops", "Drops" },
    { "LFR", "1", 623, "Weathered", 15 },
    { "LFR", "2-4", 626, "Weathered", 15 },
    { "LFR", "5-6", 629, "Weathered", 15 },
    { "LFR", "7-8", 632, "Weathered / Carved", 15 },
    { "LFR", "Very Rare", 639, "Weathered / Carved", 15 },
    { "Normal", "1", 636, "Carved", 15 },
    { "Normal", "2-4", 639, "Carved", 15 },
    { "Normal", "5-6", 642, "Carved", 15 },
    { "Normal", "7-8", 645, "Carved / Runed", 15 },
    { "Normal", "Very Rare", 652, "Carved / Runed", 15 },
    { "Heroic", "1", 649, "Runed", 15 },
    { "Heroic", "2-4", 652, "Runed", 15 },
    { "Heroic", "5-6", 655, "Runed", 15 },
    { "Heroic", "7-8", 658, "Runed / Gilded", 15 },
    { "Heroic", "Very Rare", 665, "Runed / Gilded", 15 },
    { "Mythic", "1", 662, "Gilded", 15 },
    { "Mythic", "2-4", 665, "Gilded", 15 },
    { "Mythic", "5-6", 668, "Gilded", 15 },
    { "Mythic", "7-8", 672, "Gilded", 15 },
    { "Mythic", "Very Rare", 678, "Gilded", 15 }
}

-- Function to create a bordered table
function addonTable.CreateBorderedTable(parent, data)
    local frame = CreateFrame("Frame", nil, parent, "BackdropTemplate")
    frame:SetBackdrop({ edgeFile = "Interface/Tooltips/UI-Tooltip-Border", edgeSize = 12 })
    frame:SetBackdropBorderColor(1, 1, 1, 1)
    return frame
end

-- Function to update tab highlighting
function addonTable.UpdateTabHighlight(selectedTab)
    for _, tab in ipairs(addonTable.tabs) do
        if tab == selectedTab then
            tab:SetHighlightTexture("Interface/Buttons/UI-Panel-Button-Highlight")
        else
            tab:SetHighlightTexture(nil)
        end
    end
end


