local T, C, L = unpack(Tukui)

if C.classbar.soulShards[1] ~= true or T.myclass ~= "WARLOCK" then return end

local tbWidth, tbHeight = C.classbar.soulShards[2], C.classbar.soulShards[3]
	
local mover = CreateFrame("Frame", "TukuiSoulShardsMover", UIParent)
mover:Width(tbWidth)
mover:Height(tbHeight)
mover:Point("TOP", UIParent, "CENTER", 0, -15)
mover:SetTemplate()
mover:SetBackdropBorderColor(1,0,0)
mover:SetClampedToScreen(true)
mover:SetMovable(true)
mover:SetFrameStrata("HIGH")
mover:Hide()
mover:FontString("Text", C.media.font, 12)
mover.Text:SetPoint("CENTER", TukuiSoulShardsMover, "CENTER", 0, 0)
mover.Text:SetText(L.mover_cbsshards)
tinsert(T.AllowFrameMoving, mover)

local sshards = CreateFrame("Frame", "TukuiSoulShards", UIParent)
sshards:Width(tbWidth)
sshards:Height(tbHeight)
sshards:CreateBorder(false, true)
sshards:Point("CENTER", mover)
	
	
	local shards = {}
	for i=1,3 do
			shards[i] = CreateFrame("Frame", "TukuiSoulShards_Shard"..i, sshards)
			shards[i]:SetWidth((tbWidth-2) / 3)
			shards[i]:SetHeight(tbHeight)
			--shards[i]:CreateBackdrop("Default")
			shards[i]:SetTemplate()
			shards[i].tex = shards[i]:CreateTexture(nil, "OVERLAY")
			shards[i].tex:SetTexture(C.media.normTex)
			shards[i].tex:SetVertexColor(148/255, 130/255, 201/255)
			shards[i].tex:AllPoints(shards[i])
		if i==1 then
			shards[i]:SetPoint("LEFT", sshards, "LEFT", 0, 0)
		else
			shards[i]:SetPoint("LEFT", shards[i-1], "RIGHT", 1, 0)
		end
	end
	local function UpdateShards()
		local numShards = UnitPower("player", SPELL_POWER_SOUL_SHARDS)
			for i = 1, 3 do
			if (i <= numShards) then
				shards[i].tex:Show()
			else
				shards[i].tex:Hide()
			end
		end
	end

	sshards:RegisterEvent("UNIT_POWER")
	sshards:RegisterEvent("PLAYER_ENTERING_WORLD")
	sshards:SetScript("OnEvent", UpdateShards)

	local vehicle = CreateFrame("Frame")
	vehicle:RegisterEvent("VEHICLE_UPDATE")
	vehicle:SetScript("OnEvent", function()
		if UnitHasVehicleUI("player") then
			sshards:Hide()
		else
		sshards:Show()
	end
end)
