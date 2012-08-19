local T, C, L = unpack(Tukui)

local ENABLE_MOVE = false --Used for MoveUI

local function MoveUI()
	if InCombatLockdown() then return end
	if ENABLE_MOVE then ENABLE_MOVE = false else ENABLE_MOVE = true end
	
	if TukuiSoulShardsMover then
		if ENABLE_MOVE then
				TukuiSoulShardsMover:Show()
			else
				TukuiSoulShardsMover:Hide()
		end
	end
	
	if TukuiHolyPowerMover then
		if ENABLE_MOVE then
				TukuiHolyPowerMover:Show()
			else
				TukuiHolyPowerMover:Hide()
		end
	end
	
	if TukuiRuneBarsMover then
		if ENABLE_MOVE then
				TukuiRuneBarsMover:Show()
			else
				TukuiRuneBarsMover:Hide()
		end
	end
	
	if TukuiTotemTimersMover then
		if ENABLE_MOVE then
				TukuiTotemTimersMover:Show()
			else
				TukuiTotemTimersMover:Hide()
		end
	end
	
	if TukuiComboPointsMover then
		if ENABLE_MOVE then
				TukuiComboPointsMover:Show()
			else
				TukuiComboPointsMover:Hide()
		end
	end
	
	if TukuiEclpiseBarMover then
		if ENABLE_MOVE then
				TukuiEclpiseBarMover:Show()
			else
				TukuiEclpiseBarMover:Hide()
		end
	end
	
	if TukuiTargetCastbarMover then
		if ENABLE_MOVE then
				TukuiTargetCastbarMover:Show()
			else
				TukuiTargetCastbarMover:Hide()
		end
	end
	
	if TukuiPlayerCastbarMover then
		if ENABLE_MOVE then
				TukuiPlayerCastbarMover:Show()
			else
				TukuiPlayerCastbarMover:Hide()
		end
	end
	
	if DebuffsMover then
		if ENABLE_MOVE then
				DebuffsMover:Show()
			else
				DebuffsMover:Hide()
		end
	end
	
end
	
hooksecurefunc(_G.SlashCmdList, "MOVING", MoveUI)