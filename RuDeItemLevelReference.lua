local addonName, addonTable = ...
local frame, tabButtons, tabFrames = nil, {}, {}

-- Function to dynamically set frame size (50% of WoW window)
local function UpdateFrameSize()
    local screenWidth, screenHeight = UIParent:GetWidth(), UIParent:GetHeight()
    frame:SetSize(screenWidth * 0.6, screenHeight * 0.6)
end

-- Create main frame
frame = CreateFrame("Frame", "RuDeItemLevelReference", UIParent, "BasicFrameTemplateWithInset")
UpdateFrameSize()
frame:SetPoint("CENTER")
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
frame:SetScript("OnShow", UpdateFrameSize) -- Adjust size on show
frame:Hide()

-- Create the title for the frame
local frameTitle = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
frameTitle:SetPoint("CENTER", frame, "TOP", 0, -12) -- Position at the top of the frame
frameTitle:SetText("RuDe's Item Level Reference") -- Set the title text
frameTitle:Show() -- Make sure the title is visible

-- Tabs & Data from Data.lua
local tabs = {
    { name = "Item Level Chart", key = "gearilvltrack" },
    { name = "Dungeon Loot", key = "dungeonloot" },
    { name = "Bountiful Delve Loot", key = "bountifuldelveloot" },
    { name = "Raid: LoU", key = "raidlou" },
    { name = "Crafting", key = "crafting" }
}

-- Function to create tables
local function CreateTable(parent, data)
    local rows, cols = #data, #data[1]
    local cellHeight = 20
    local paddingX, paddingY = 20, 20
    local cellPadding = 5 -- Padding inside each cell
    local cellWidths = {} -- Store the widest width per column

    -- First pass: Determine column widths based on longest text in each column
    for col = 1, cols do
        cellWidths[col] = 130 -- Default width
        for row = 1, rows do
            local text = data[row][col] -- Get the text from the table
            if not text then
                text = "NIL" -- Fallback value to avoid errors
            end
            local textWidth = string.len(data[row][col]) * 6 -- Approximate width (6px per char)
            if textWidth > cellWidths[col] then
                cellWidths[col] = textWidth + (2 * cellPadding) -- Add padding on both sides
            end
        end
    end

    -- Second pass: Create the table
    for row = 1, rows do
        local currentX = paddingX -- Track X position for proper column placement
        local totalRowWidth = 0

        -- Calculate total width of the row
        for col = 1, cols do
            totalRowWidth = totalRowWidth + cellWidths[col]
        end

        -- Create row highlight (inactive by default)
        local rowHighlight = parent:CreateTexture(nil, "BACKGROUND")
        rowHighlight:SetColorTexture(0.2, 0.6, 1, 0.3) -- Light blue with transparency
        rowHighlight:SetHeight(cellHeight) -- Set row height
        rowHighlight:SetPoint("TOPLEFT", parent, "TOPLEFT", paddingX, -paddingY - (row - 1) * cellHeight)
        rowHighlight:SetPoint("TOPRIGHT", parent, "TOPLEFT", paddingX + totalRowWidth, -paddingY - (row - 1) * cellHeight)
        rowHighlight:Hide() -- Hide by default

        for col = 1, cols do
            local cellWidth = cellWidths[col]

            -- Create cell background
            local cellBG = parent:CreateTexture(nil, "BACKGROUND")
            cellBG:SetSize(cellWidth, cellHeight)
            cellBG:SetPoint("TOPLEFT", parent, "TOPLEFT", currentX, -paddingY - (row - 1) * cellHeight)
            cellBG:SetColorTexture(0, 0, 0, 0.3) -- Slightly shaded background for visibility

            -- Create cell text
            local cellText = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            cellText:SetPoint("LEFT", cellBG, "LEFT", cellPadding, 0) -- Left padding
            cellText:SetWidth(cellWidth - (2 * cellPadding)) -- **Prevents text from wrapping**
            cellText:SetWordWrap(false) -- **Forces text to stay in one line**
            cellText:SetText(data[row][col])

            -- Create borders (same as before)
            local borderThickness = 1
            local top = parent:CreateTexture(nil, "OVERLAY")
            top:SetColorTexture(1, 1, 1, 1)
            top:SetPoint("TOPLEFT", cellBG, "TOPLEFT", 0, 0)
            top:SetPoint("TOPRIGHT", cellBG, "TOPRIGHT", 0, 0)
            top:SetHeight(borderThickness)

            local bottom = parent:CreateTexture(nil, "OVERLAY")
            bottom:SetColorTexture(1, 1, 1, 1)
            bottom:SetPoint("BOTTOMLEFT", cellBG, "BOTTOMLEFT", 0, 0)
            bottom:SetPoint("BOTTOMRIGHT", cellBG, "BOTTOMRIGHT", 0, 0)
            bottom:SetHeight(borderThickness)

            local left = parent:CreateTexture(nil, "OVERLAY")
            left:SetColorTexture(1, 1, 1, 1)
            left:SetPoint("TOPLEFT", cellBG, "TOPLEFT", 0, 0)
            left:SetPoint("BOTTOMLEFT", cellBG, "BOTTOMLEFT", 0, 0)
            left:SetWidth(borderThickness)

            local right = parent:CreateTexture(nil, "OVERLAY")
            right:SetColorTexture(1, 1, 1, 1)
            right:SetPoint("TOPRIGHT", cellBG, "TOPRIGHT", 0, 0)
            right:SetPoint("BOTTOMRIGHT", cellBG, "BOTTOMRIGHT", 0, 0)
            right:SetWidth(borderThickness)

            -- Move X position for the next column
            currentX = currentX + cellWidth

            -- Mouseover event to highlight row
            cellBG:SetScript("OnEnter", function()
                rowHighlight:Show() -- Show row highlight
            end)
            cellBG:SetScript("OnLeave", function()
                rowHighlight:Hide() -- Hide row highlight when mouse leaves
            end)
        end
    end
end



-- Create a title text above the table
local tabTitle = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
tabTitle:SetPoint("TOP", frame, "TOP", 0, -30) -- Position at the top
tabTitle:SetText("") -- Start empty


-- Create tab buttons
-- Store the currently selected button
local selectedButton = nil  
-- Increase the size of tab buttons and adjust the font size
local tabButtonWidth = 150  -- Set the desired width for the tab buttons
local tabButtonHeight = 40  -- Set the desired height for the tab buttons
local fontSize = 16  -- Increase font size for better visibility

for i, tab in ipairs(tabs) do
    local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    button:SetSize(tabButtonWidth, tabButtonHeight)  -- Set button size
    button:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -30 - (i - 1) * (tabButtonHeight + 10))  -- Adjust the spacing between buttons
    button:SetText(tab.name)

    -- Add a background texture for the button
    local bgTexture = button:CreateTexture(nil, "BACKGROUND")
    bgTexture:SetAllPoints()
    bgTexture:SetColorTexture(0.2, 0.6, 1, 0.5) -- Default color (light blue with transparency)
    button.bg = bgTexture -- Attach the background texture for easy access



    -- Add a texture for highlighting (when the button is clicked)
    local highlightTexture = button:CreateTexture(nil, "BACKGROUND")
    highlightTexture:SetColorTexture(0.2, 0.6, 1, 0.8) -- Lighter blue for active state
    highlightTexture:SetAllPoints()
    highlightTexture:Hide() -- Hide by default
    button.highlight = highlightTexture -- Attach to button for easy access

    -- Create tab frame, ensuring it doesn’t overlap the buttons
    local tabFrame = CreateFrame("Frame", nil, frame)
    tabFrame:SetSize(frame:GetWidth() - 160, frame:GetHeight() - 50)  -- Reduced width to account for button width
    tabFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 160, -30)  -- Moved to the right to prevent overlap
    tabFrame:Hide()

    button:SetScript("OnClick", function()
        -- Hide all tab frames
        for _, tf in pairs(tabFrames) do tf:Hide() end
        tabFrame:Show()

        -- Update tab title text
        tabTitle:SetText(tab.name)

        -- Reset the background color of the previously selected button
        if selectedButton then 
            selectedButton.bg:SetColorTexture(0.2, 0.6, 1, 0.5) -- Reset to default color
            selectedButton.highlight:Hide() -- Hide highlight texture
        end
        
        -- Highlight the clicked button and change its background color
        button.bg:SetColorTexture(0.2, 0.8, 1, 1) -- Change background color to a solid blue
        button.highlight:Show() -- Show the highlight
        selectedButton = button
    end)

    -- Load data from Data.lua
    local data = addonTable[tab.key]
    if data then CreateTable(tabFrame, data) end

    tabButtons[i] = button
    tabFrames[i] = tabFrame
end


-- Slash command
SLASH_RILR1 = "/rilr"
SlashCmdList["RILR"] = function() frame:SetShown(not frame:IsShown()) end

-- map and addon section code
local LDB = LibStub:GetLibrary("LibDataBroker-1.1", true)
local LDBIcon = LibStub:GetLibrary("LibDBIcon-1.0", true)


function RuDeItemLevelReference_ToggleFrame()
    if frame:IsShown() then
        frame:Hide()
    else
        frame:Show()
    end
end

local dataObject = LDB:NewDataObject("RuDeItemLevelReference", {
    type = "launcher",
    text = "RuDe Item Level Reference",
    icon = "Interface\\AddOns\\RuDeItemLevelReference\\icon.tga",
    OnClick = function(_, button)
        if button == "LeftButton" then
            if RuDeItemLevelReference_ToggleFrame then
                RuDeItemLevelReference_ToggleFrame()
            else
                print("Error: RuDeItemLevelReference_ToggleFrame is not defined.")
            end
        elseif button == "RightButton" then
            if Settings and Settings.OpenToCategory then
                Settings.OpenToCategory("RuDe Item Level Reference")
            else
                print("Error: Cannot open settings. WoW version might be outdated.")
            end
        end
    end,
})





LDBIcon:Register("RuDeItemLevelReference", dataObject, RuDeItemLevelReferenceDB or {})




if not RuDeItemLevelReferenceFrame then
    RuDeItemLevelReferenceFrame = CreateFrame("Frame", "RuDeItemLevelReferenceFrame", UIParent)
end



local function CreateOptionsPanel()
    -- Ensure the frame exists
    if not RuDeItemLevelReferenceFrame then
        RuDeItemLevelReferenceFrame = CreateFrame("Frame", "RuDeItemLevelReferenceFrame", UIParent)
    end

    RuDeItemLevelReferenceFrame.name = "RuDe Item Level Reference"

    -- Create a FontString for the message
    local message = RuDeItemLevelReferenceFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    message:SetPoint("TOPLEFT", 20, -20) -- Position inside the frame
    message:SetText("Enter /rilr to open the chart")

    -- Register the settings panel
    local category = Settings.RegisterCanvasLayoutCategory(RuDeItemLevelReferenceFrame, "RuDe Item Level Reference")
    category.ID = "RuDeItemLevelReference"

    Settings.RegisterAddOnCategory(category)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addonName)
    if addonName == "RuDeItemLevelReference" then
        CreateOptionsPanel()
    end
end)
