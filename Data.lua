local addonName, addonTable = ...

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
    { "Tier", "Bountiful Delves", "Delver's Bounty", "Vault", "Crest Drops" },
    { 1, 610, 0, 623, "Weathered" },
    { 2, 613, 0,623, "Weathered" },
    { 3, 616, 0,626, "Weathered" },
    { 4, 619, 626, 636, "Weathered / Carved" },
    { 5, 623, 632, 642, "Weathered / Carved" },
    { 6, 626, 639, 645, "Carved / Runed" },
    { 7, 636, 645, 649, "Carved / Runed" },
    { 8, 639, 649, 649, "Carved / Runed" },
    { 9, 639, 649, 649, "Runed / Gilded" },
    { 10, 639,649 ,649, "Runed / Gilded" },
    { 11, 639,649 ,649, "Runed / Gilded" }
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


