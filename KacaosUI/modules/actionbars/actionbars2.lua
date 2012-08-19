local T, C, L = unpack(Tukui)
if not C.actionbar.enable == true then return end
if C.actionbar.style ~= 2 then return end

--move buttons
TukuiBar3Button:ClearAllPoints()
TukuiBar3Button:SetPoint("LEFT", ActionButton9, "RIGHT", 5, 15)
TukuiBar2Button:ClearAllPoints()
TukuiBar2Button:SetPoint("RIGHT", ActionButton4, "LEFT", -5, 15)
TukuiBar3Button.ClearAllPoints = T.dummy
TukuiBar3Button.SetPoint = T.dummy
TukuiBar2Button.ClearAllPoints = T.dummy
TukuiBar2Button.SetPoint = T.dummy

--kill buttons
TukuiBar4Button:Kill()
TukuiBar5ButtonTop:Kill()
TukuiBar5ButtonBottom:Kill()

-- Kill backdrop of bars
TukuiBar2:SetBackdrop(nil)
TukuiBar3:SetBackdrop(nil)
TukuiBar4:SetBackdrop(nil)
TukuiBar5:SetBackdrop(nil)
TukuiBar1:SetBackdrop(nil)
TukuiPetBar:SetBackdrop(nil)

-- sidebar on mouseover
if C.actionbar.sidebar1mouseover then
	TukuiBar5:OnMouseOver("MultiBarRightButton", 12, 0, 1)
else
	TukuiBar5:Show()
end

-- move the pet bar
TukuiPetBar:ClearAllPoints()
TukuiPetBar:SetPoint("RIGHT", UIParent, -3, -39)

--move bars
TukuiBar1:ClearAllPoints()
TukuiBar1:SetPoint("CENTER", UIParent, "CENTER", 0, -230)
TukuiBar4:ClearAllPoints()
TukuiBar4:SetPoint("CENTER", UIParent, "CENTER", 0, -230)
TukuiBar5:ClearAllPoints()
TukuiBar5:SetPoint("TOPRIGHT", TukuiPetBar, -38, 30)
TukuiBar3:ClearAllPoints()
TukuiBar3:SetPoint("TOPLEFT", MultiBarLeftButton9, "TOPRIGHT", 10, 3)
TukuiBar2:ClearAllPoints()
TukuiBar2:SetPoint("TOPRIGHT", MultiBarLeftButton4, "TOPLEFT", -10, 3)

-- kill some buttons for bar1 and bar4
MultiBarLeftButton1:Kill()
MultiBarLeftButton2:Kill()
MultiBarLeftButton3:Kill()
MultiBarLeftButton10:Kill()
MultiBarLeftButton11:Kill()
MultiBarLeftButton12:Kill()
ActionButton1:Kill()
ActionButton2:Kill()
ActionButton3:Kill()
ActionButton10:Kill()
ActionButton11:Kill()
ActionButton12:Kill()