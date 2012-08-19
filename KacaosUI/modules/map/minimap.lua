local T, C, L = unpack(Tukui)

---------------------------------------------------------------
-- Minimap
---------------------------------------------------------------

-- Now, I want to move Minimap from right to left, by default.
TukuiMinimap:ClearAllPoints()
TukuiMinimap:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -6, 18)

-- show / hide button
local KacaosUI_Minimap_Button = CreateFrame("Frame", "MinimapToggle", UIParent)
KacaosUI_Minimap_Button:CreatePanel("Default", 70, 13, "RIGHT", Minimap, "LEFT", -5, -54)
KacaosUI_Minimap_Button:SetBackdropColor(.06,.06,.06, .7)
KacaosUI_Minimap_Button.t = KacaosUI_Minimap_Button:CreateFontString(KacaosUI_Minimap_Button, "OVERLAY")
KacaosUI_Minimap_Button.t:SetPoint("CENTER", KacaosUI_Minimap_Button, "CENTER", 0, 0)
KacaosUI_Minimap_Button.t:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
KacaosUI_Minimap_Button.t:SetShadowOffset(0,0)
KacaosUI_Minimap_Button.t:SetText("Minimap")
KacaosUI_Minimap_Button:HookScript("OnEnter", function(self)
          GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT", -75, 3)
		  GameTooltip:AddLine("Minimap", .6, .6, .6, .6, .6, 1)
          GameTooltip:AddLine("Show/Hide Minimap", 1, 1, 1, 1, 1, 1)
          GameTooltip:Show()
        end)
KacaosUI_Minimap_Button:HookScript("OnLeave", function(self) GameTooltip:Hide() end)
	KacaosUI_Minimap_Button:HookScript("OnEnter", function(self)
		self:SetBackdropBorderColor(148/255, 130/255, 201/255, 1)
	end)
	KacaosUI_Minimap_Button:HookScript("OnLeave", function(self)
		self:SetBackdropBorderColor(.06,.06,.06)
	end)
	
-- fade out infight
local fadeout = CreateFrame("Frame")
fadeout:RegisterEvent("PLAYER_ENTERING_WORLD")
fadeout:RegisterEvent("PLAYER_REGEN_ENABLED")
fadeout:RegisterEvent("PLAYER_REGEN_DISABLED")
fadeout:SetScript("OnEvent", function(self, event)
	if event == "PLAYER_REGEN_ENABLED" then
		KacaosUI_Minimap_Button:Show()
	elseif event == "PLAYER_REGEN_DISABLED" then
		KacaosUI_Minimap_Button:Hide()
	end
end)

KacaosUI_Minimap_Button:SetScript("OnMouseDown", function(self)

	if TukuiMinimap:IsShown() then
		TukuiMinimap:Hide()
		KacaosUI_Config_Button:ClearAllPoints()
		KacaosUI_Config_Button:Point("RIGHT", Minimap, "LEFT", 120, -39)
		KacaosUI_MoveUI_Button:ClearAllPoints()
		KacaosUI_MoveUI_Button:Point("RIGHT", Minimap, "LEFT", 120, -24)
		KacaosUI_stam_Button:ClearAllPoints()
		KacaosUI_stam_Button:Point("RIGHT", Minimap, "LEFT", 120, -9)
		KacaosUI_rl_Button:ClearAllPoints()
		KacaosUI_rl_Button:Point("RIGHT", Minimap, "LEFT", 120, 6)	
		KacaosUI_tb_Button:ClearAllPoints()
		KacaosUI_tb_Button:Point("RIGHT", Minimap, "LEFT", 120, 21)
		KacaosUI_Minimap_Button:ClearAllPoints()
		KacaosUI_Minimap_Button:Point("RIGHT", Minimap, "LEFT", 120, -54)
		KacaosUI_help_Button:ClearAllPoints()
		KacaosUI_help_Button:Point("RIGHT", Minimap, "LEFT", 120, 36)
	else
		TukuiMinimap:Show()
		KacaosUI_Config_Button:ClearAllPoints()
		KacaosUI_Config_Button:Point("RIGHT", Minimap, "LEFT", -5, -39)
		KacaosUI_MoveUI_Button:ClearAllPoints()
		KacaosUI_MoveUI_Button:Point("RIGHT", Minimap, "LEFT", -5, -24)
		KacaosUI_stam_Button:ClearAllPoints()
		KacaosUI_stam_Button:Point("RIGHT", Minimap, "LEFT", -5, -9)
		KacaosUI_rl_Button:ClearAllPoints()
		KacaosUI_rl_Button:Point("RIGHT", Minimap, "LEFT", -5, 6)	
		KacaosUI_tb_Button:ClearAllPoints()
		KacaosUI_tb_Button:Point("RIGHT", Minimap, "LEFT", -5, 21)
		KacaosUI_Minimap_Button:ClearAllPoints()
		KacaosUI_Minimap_Button:Point("RIGHT", Minimap, "LEFT", -5, -54)
		KacaosUI_help_Button:ClearAllPoints()
		KacaosUI_help_Button:Point("RIGHT", Minimap, "LEFT", -5, 36)
	end 
end)


-- I find the map too big, resize it!
TukuiMinimap:Size(120)
Minimap:Size(120)

-- I want to kill the panels datatext under map!
TukuiMinimapStatsLeft:Hide()
TukuiMinimapStatsRight:Hide()

-- moved the the top to get the raidutility shown
TukuiMinimapStatsRight:ClearAllPoints()
TukuiMinimapStatsRight:Point("TOPLEFT", UIParent, 450, 21)

-- shitty 3.3 flag to move
MiniMapInstanceDifficulty:ClearAllPoints()
MiniMapInstanceDifficulty:SetParent(Minimap)
MiniMapInstanceDifficulty:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 0, -1)

-- 4.0.6 Guild instance difficulty
GuildInstanceDifficulty:ClearAllPoints()
GuildInstanceDifficulty:SetParent(Minimap)
GuildInstanceDifficulty:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 0, -1)