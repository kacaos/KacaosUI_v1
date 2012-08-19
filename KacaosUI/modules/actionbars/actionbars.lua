local T, C, L = unpack(Tukui)
if not C.actionbar.enable == true then return end
if C.actionbar.style ~= 1 then return end
---------------------------------------------------------------
-- Action Bars
---------------------------------------------------------------

-- move main bar
TukuiBar1:ClearAllPoints()
TukuiBar1:SetPoint("BOTTOM", 0, 2)
TukuiBar1:SetFrameLevel(2)
TukuiBar1:SetWidth((T.buttonsize * 14) + (T.buttonspacing * 15))
TukuiBar1:SetHeight((T.buttonsize * 1) + (T.buttonspacing * 2))
TukuiBar4:ClearAllPoints()
TukuiBar4:SetPoint("BOTTOMLEFT", TukuiBar1, 0, 0)

-- Kill backdrop of bars
TukuiBar2:SetBackdrop(nil)
TukuiBar3:SetBackdrop(nil)
TukuiBar4:SetBackdrop(nil)
TukuiBar5:SetBackdrop(nil)
TukuiBar1:SetBackdrop(nil)
TukuiPetBar:SetBackdrop(nil)

-- if the option I added earlier is enabled do this
if C.actionbar.allbars then
	-- Now, I want relocate some action bars
	TukuiBar2:ClearAllPoints()
	TukuiBar3:ClearAllPoints()
	TukuiBar5:ClearAllPoints()
	TukuiBar2:Point("BOTTOMLEFT", TukuiBar4, "TOPLEFT", 0, -3000)
	TukuiBar3:Point("BOTTOMRIGHT", TukuiBar4, "TOPRIGHT", 0, -3000)
	TukuiBar5:Point("BOTTOMLEFT", TukuiBar2, "TOPLEFT", 0, 4000)
	

	-- bar5 horizontal right
	for i= 1, 12 do
		local b = _G["MultiBarRightButton"..i]
		local b2 = _G["MultiBarRightButton"..i-1]
		b:SetSize(20, 20)
		b:ClearAllPoints()
		b:SetFrameStrata("BACKGROUND")
		b:SetFrameLevel(15)
		
		if i == 1 then
			b:SetPoint("TOPRIGHT", TukuiPetBar, -38, 30)
		else
			b:SetPoint("TOP", b2, "BOTTOM", 0, -T.buttonspacing)
		end
		
	end

	

	-- bar3 horizontal right
	for i= 1, 12 do
		local b3 = _G["MultiBarBottomLeftButton"..i]
		local b4 = _G["MultiBarBottomLeftButton"..i-1]
		b3:SetSize(T.buttonsize, T.buttonsize)
		b3:ClearAllPoints()
		b3:SetFrameStrata("BACKGROUND")
		b3:SetFrameLevel(15)
		
		if i == 1 then
			b3:SetPoint("TOPRIGHT", TukuiPetBar, -68, 30)
		else
			b3:SetPoint("TOP", b4, "BOTTOM", 0, -T.buttonspacing)
		end
	end
	
	-- bar2 horizontal right
	for i= 1, 12 do
		local b5 = _G["MultiBarBottomRightButton"..i]
		local b6 = _G["MultiBarBottomRightButton"..i-1]
		b5:SetSize(T.buttonsize, T.buttonsize)
		b5:ClearAllPoints()
		b5:SetFrameStrata("BACKGROUND")
		b5:SetFrameLevel(15)
		b5:SetAlpha(1)
		
		if i == 1 then
			b5:SetPoint("TOPRIGHT", TukuiPetBar, -98, 30)
		else
			b5:SetPoint("TOP", b6, "BOTTOM", 0, -T.buttonspacing)
		end
	end
	
	
	if C.actionbar.bar4 then
	TukuiBar4:Show()

	TukuiBar1:ClearAllPoints()
	TukuiBar1:SetPoint("BOTTOM", 27, 2)

	else

	-- bar4 extra buttons right to bar1
	for i= 1, 12 do
		local b7 = _G["MultiBarLeftButton"..i]
		local b8 = _G["MultiBarLeftButton"..i-1]
		b7:SetSize(T.buttonsize, T.buttonsize)
		b7:ClearAllPoints()
		b7:SetFrameStrata("BACKGROUND")
		b7:SetFrameLevel(15)

		if i == 1 then
		b7:SetPoint("LEFT", _G["ActionButton12"], "RIGHT", T.buttonspacing, 0)
		elseif i == 3 then
		b7:SetPoint("TOP", _G["ActionButton8"], "TOP", -64, 25)
		else
		b7:SetPoint("LEFT", b8, "RIGHT", T.buttonspacing, 0)
		end
		
		-- kill button 3-12 from bar4
		MultiBarLeftButton3:Kill()
		MultiBarLeftButton4:Kill()
		MultiBarLeftButton5:Kill()
		MultiBarLeftButton6:Kill()
		MultiBarLeftButton7:Kill()
		MultiBarLeftButton8:Kill()
		MultiBarLeftButton9:Kill()
		MultiBarLeftButton10:Kill()
		MultiBarLeftButton11:Kill()
		MultiBarLeftButton12:Kill()
	end
end
end

if C.actionbar.b2bottom then

	for i= 1, 12 do
		local b8 = _G["MultiBarBottomRightButton"..i]
		local b9 = _G["MultiBarBottomRightButton"..i-1]
		b8:SetSize(T.buttonsize, T.buttonsize)
		b8:ClearAllPoints()
		b8:SetFrameStrata("BACKGROUND")
		b8:SetFrameLevel(15)
		b8:SetAlpha(1)
		
		if i == 1 then
			b8:SetPoint("LEFT", TukuiBar4, 3, TukuiBar4:GetHeight()-17)
		else
			b8:SetPoint("LEFT", b9, "RIGHT", T.buttonspacing, 0)
		end
	end
end
	

-- if my new option is no enabled, hide them
if not C.actionbar.allbars then
	TukuiBar2:Hide()
	TukuiBar3:Hide()
	TukuiBar4:Hide()
	TukuiBar5:Hide()
end


-- sidebars on mouseover
if C.actionbar.sidebar1mouseover then
	TukuiBar5:OnMouseOver("MultiBarRightButton", 12, 0, 1)
else
	TukuiBar5:Show()
end

if C.actionbar.sidebar2mouseover then
	TukuiBar2:OnMouseOver("MultiBarBottomLeftButton", 12, 0, 1)
else
	TukuiBar2:Show()
end

if C.actionbar.sidebar3mouseover then
	TukuiBar3:OnMouseOver("MultiBarBottomRightButton", 12, 0, 1)
else
	TukuiBar3:Show()
end


-- move the pet bar
TukuiPetBar:ClearAllPoints()
TukuiPetBar:SetPoint("RIGHT", UIParent, -3, -39)

if C.unitframes.petshow == true then
local fadeout = CreateFrame("Frame")
fadeout:RegisterEvent("PLAYER_ENTERING_WORLD")
fadeout:RegisterEvent("PLAYER_REGEN_ENABLED")
fadeout:RegisterEvent("PLAYER_REGEN_DISABLED")
fadeout:SetScript("OnEvent", function(self, event)
	if event == "PLAYER_REGEN_ENABLED" then
			TukuiPetBar:SetAlpha(1)
	elseif event == "PLAYER_REGEN_DISABLED" then
			TukuiPetBar:SetAlpha(.25)
	end
end)
end

-- kill the show/hide button because they doesn't fit my new bar layout
TukuiBar2Button:Kill()
TukuiBar3Button:Kill()
TukuiBar3Button:Kill()
TukuiBar4Button:Kill()
TukuiBar5ButtonTop:Kill()
TukuiBar5ButtonBottom:Kill()


if not C.unitframes.style == 2 then
TukuiShiftBar:ClearAllPoints()
TukuiShiftBar:Point("BOTTOM", TukuiPlayer.Power, "TOP", 12, -8)
else
TukuiShiftBar:ClearAllPoints()
TukuiShiftBar:Point("BOTTOM", TukuiPlayer.Health, "TOP", 15, -8)
end