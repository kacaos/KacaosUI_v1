local T, C, L = unpack(Tukui)

---------------------------------------------------------------
-- Panels
---------------------------------------------------------------
-- I want to hide some panels, because I don't like it
local panels = {TukuiInfoRight, TukuiInfoLeftLineVertical, TukuiInfoRightLineVertical, TukuiCubeLeft, TukuiCubeRight, TukuiLineToABLeft, TukuiLineToABRight, TukuiLineToPetActionBarBackground}
for _, panel in pairs(panels) do
	panel:Kill()
end

-- bottom panel
local ibottom = CreateFrame("Frame", "InfoBottom", UIParent)
ibottom:CreatePanel("Default", T.screenwidth, 13, "BOTTOM", UIParent, "BOTTOM", 0, 0)
ibottom:SetFrameStrata("BACKGROUND")
ibottom:SetBackdropColor(.06,.06,.06,.7)

-- chatbackround left
local clWidth = C.chat.chatbackgroundwidth
local clHeight = C.chat.chatbackgroundheight
if C.chat.chatbackground then
local chatbleft = CreateFrame("Frame", "ChatBackgroundLeft", UIParent)
chatbleft:CreatePanel("Default", clWidth, clHeight, "BOTTOMLEFT", UIParent, "BOTTOMLEFT", 3, 18)
chatbleft:SetFrameLevel(0)
chatbleft:SetFrameStrata("BACKGROUND")
chatbleft:SetBackdropColor(.06,.06,.06,.7)
else
local chatbleft = CreateFrame("Frame", "ChatBackgroundLeft", UIParent)
chatbleft:CreatePanel("Default", clWidth, clHeight, "BOTTOMLEFT", UIParent, "BOTTOMLEFT", 3, 18)
chatbleft:SetAlpha(0)

TukuiInfoLeft:ClearAllPoints()
TukuiInfoLeft:SetPoint("BOTTOM", ChatBackgroundLeft, "TOP", 0, 1)
TukuiInfoLeft:Width(ChatBackgroundLeft:GetWidth())
TukuiInfoLeft:Height(12)
TukuiInfoLeft:SetAlpha(0)
end

-- TukuiInfoLeft as chattabpanel - and editbox over the chatbackground
if C.chat.chattab then
	TukuiInfoLeft:ClearAllPoints()
	TukuiInfoLeft:SetPoint("BOTTOM", ChatBackgroundLeft, "TOP", 0, 1)
	TukuiInfoLeft:Width(ChatBackgroundLeft:GetWidth())
	TukuiInfoLeft:Height(12)
	TukuiInfoLeft:SetBackdropColor(.06,.06,.06,.7)
else
	TukuiInfoLeft:ClearAllPoints()
	TukuiInfoLeft:SetPoint("BOTTOM", ChatBackgroundLeft, "TOP", 0, 1)
	TukuiInfoLeft:Width(ChatBackgroundLeft:GetWidth())
	TukuiInfoLeft:Height(12)
	TukuiInfoLeft:SetAlpha(0)
end

-- minimap stat (time default)
local minimapstat = CreateFrame("Frame", "MinimapStat", TukuiMinimap)
minimapstat:CreatePanel("Default", 50, 15, "TOP", TukuiMinimap, "TOP", 0, 13)
minimapstat:SetFrameLevel(2)
minimapstat:SetFrameStrata("HIGH")
minimapstat:SetBackdropColor(0,0,0,0)
minimapstat:SetBackdropBorderColor(0,0,0,0)

local fadeout = CreateFrame("Frame")
fadeout:RegisterEvent("PLAYER_ENTERING_WORLD")
fadeout:RegisterEvent("PLAYER_REGEN_ENABLED")
fadeout:RegisterEvent("PLAYER_REGEN_DISABLED")
fadeout:SetScript("OnEvent", function(self, event)
	if event == "PLAYER_REGEN_ENABLED" then
			MinimapStat:Show()
	elseif event == "PLAYER_REGEN_DISABLED" then
			MinimapStat:Hide()
	end
end)

if C.chat.fadeout then
local fadeout = CreateFrame("Frame")
fadeout:RegisterEvent("PLAYER_ENTERING_WORLD")
fadeout:RegisterEvent("PLAYER_REGEN_ENABLED")
fadeout:RegisterEvent("PLAYER_REGEN_DISABLED")
fadeout:SetScript("OnEvent", function(self, event)
	if event == "PLAYER_REGEN_ENABLED" then
			MinimapStat:Show()
			ChatBackgroundLeft:Show()
			TukuiInfoLeft:Show()
	elseif event == "PLAYER_REGEN_DISABLED" then
			MinimapStat:Hide()
			ChatBackgroundLeft:Hide()
			TukuiInfoLeft:Hide()
	end
end)
end

----------------------------------------------------------
-- Vehicle Exit Button
----------------------------------------------------------

-- exit button panel (left to bar1)
local evbpl = CreateFrame("Frame", "ExitVehicleButtonPanelLeft", UIParent)
evbpl:CreatePanel("Default", 15, 24, "LEFT", TukuiBar1, "LEFT", -17, 0)
evbpl:SetFrameLevel(2)
evbpl:SetFrameStrata("HIGH")
evbpl:SetBackdropBorderColor(0,0,0,0)
evbpl:SetBackdropColor(0,0,0,0)

-- exit button panel (right to bar1)
local evbpr = CreateFrame("Frame", "ExitVehicleButtonPanelRight", UIParent)
evbpr:CreatePanel("Default", 15, 24, "RIGHT", TukuiBar1, "RIGHT", 17, 0)
evbpr:SetFrameLevel(2)
evbpr:SetFrameStrata("HIGH")
evbpr:SetBackdropBorderColor(0,0,0,0)
evbpr:SetBackdropColor(0,0,0,0)

-- exit vehicle button on left side of bottom action bar
local vehicleleft = CreateFrame("Button", "TukuiExitVehicleButtonLeft", UIParent, "SecureHandlerClickTemplate")
vehicleleft:SetAllPoints(ExitVehicleButtonPanelLeft)
vehicleleft:SetFrameStrata(ExitVehicleButtonPanelLeft:GetFrameStrata())
vehicleleft:SetFrameLevel(ExitVehicleButtonPanelLeft:GetFrameLevel() + 1)
vehicleleft:SetTemplate("Default")
vehicleleft:SetBackdropBorderColor(75/255,  175/255, 76/255)
vehicleleft:RegisterForClicks("AnyUp")
vehicleleft:SetScript("OnClick", function() VehicleExit() end)
vehicleleft.text = T.SetFontString(vehicleleft, C.media.uffont, 20)
vehicleleft.text:Point("CENTER", 1, 1)
vehicleleft.text:SetText("|cff4BAF4Cv|r")
RegisterStateDriver(vehicleleft, "visibility", "[target=vehicle,exists] show;hide")

-- exit vehicle button on right side of bottom action bar
local vehicleright = CreateFrame("Button", "TukuiExitVehicleButtonRight", UIParent, "SecureHandlerClickTemplate")
vehicleright:SetAllPoints(ExitVehicleButtonPanelRight)
vehicleright:SetTemplate("Default")
vehicleright:SetFrameStrata(ExitVehicleButtonPanelRight:GetFrameStrata())
vehicleright:SetFrameLevel(ExitVehicleButtonPanelRight:GetFrameLevel() + 1)
vehicleright:SetBackdropBorderColor(75/255,  175/255, 76/255)
vehicleright:RegisterForClicks("AnyUp")
vehicleright:SetScript("OnClick", function() VehicleExit() end)
vehicleright.text = T.SetFontString(vehicleright, C.media.uffont, 20)
vehicleright.text:Point("CENTER", 1, 1)
vehicleright.text:SetText("|cff4BAF4Cv|r")
RegisterStateDriver(vehicleright, "visibility", "[target=vehicle,exists] show;hide")

---------------------------------------------------------------------------------
-- Data Text
---------------------------------------------------------------------------------

-- our own datatext position function because we made our custom panel
local DataTextPosition = function(f, t, o)
	local ibottom = InfoBottom
	local mstat = MinimapStat
	
	if o >= 1 and o <= 20 then
		-- 1 to 3 use a default tukui panel, no need to update
		-- just update 4 to 6
		if o == 4 then
			t:ClearAllPoints()
			t:SetParent(ibottom)
			t:SetHeight(ibottom:GetHeight())
			t:SetPoint("RIGHT", -290 ,0)
			t:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
			t:SetShadowOffset(0,0)
		elseif o == 5 then
			t:ClearAllPoints()
			t:SetParent(ibottom)
			t:SetHeight(ibottom:GetHeight())
			t:SetPoint("RIGHT", -170, 0)
			t:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
			t:SetShadowOffset(0,0)
		elseif o == 6 then
			t:ClearAllPoints()
			t:SetParent(ibottom)
			t:SetHeight(ibottom:GetHeight())
			t:SetPoint("RIGHT", -50, 0)
			t:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
			t:SetShadowOffset(0,0)			
		elseif o == 7 then
			t:ClearAllPoints()
			t:SetParent(ibottom)
			t:SetHeight(ibottom:GetHeight())
			t:SetPoint("LEFT", 50, 0)
			t:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
			t:SetShadowOffset(0,0)
		elseif o == 8 then
			t:ClearAllPoints()
			t:SetParent(ibottom)
			t:SetHeight(ibottom:GetHeight())
			t:SetPoint("LEFT", 170, 0)
			t:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
			t:SetShadowOffset(0,0)
		elseif o == 9 then
			t:ClearAllPoints()
			t:SetParent(ibottom)
			t:SetHeight(ibottom:GetHeight())
			t:SetPoint("LEFT", 290, 0)
			t:SetFont(C.media.pixelfont, 8,"MONOCHROMEOUTLINE")
			t:SetShadowOffset(0,0)
		elseif o == 10 then
			t:ClearAllPoints()
			t:SetParent(mstat)
			t:SetHeight(mstat:GetHeight())
			t:SetPoint("CENTER", -1, 0)	
			t:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
			t:SetShadowOffset(0,0)
		end
	else
		-- hide everything that we don't use and enabled by default on tukui
		f:Hide()
		t:Hide()
	end
end

-- Tukui DataText List
local datatext = {
	"Guild",
	"Friends",
	"Gold",
	"FPS",
	"System",
	"Bags",
	"Gold",
	"Time",
	"Durability",
	"Heal",
	"Damage",
	"Power",
	"Haste",
	"Crit",
	"Avoidance",
	"Armor",
	"Currency",
	"Hit",
	"Mastery",
	"MicroMenu",
	"Regen",
	"Talent",
	"CallToArms",
}

-- Overwrite & Update Show/Hide/Position of all Datatext
for _, data in pairs(datatext) do
	local t = "TukuiStat"
	local frame = _G[t..data]
	local text = _G[t..data.."Text"]

	if frame and frame.Option then
		DataTextPosition(frame, text, frame.Option)
	end
end
