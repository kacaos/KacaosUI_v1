local T, C, L = unpack(Tukui)

local function style(self)
	local name = self:GetName()

	--> fixing a taint issue while changing totem flyout button in combat.
	if name:match("MultiCast") then return end

	--> don't skin the boss encounter extra button to match texture (4.3 patch)
	--> http://www.tukui.org/storage/viewer.php?id=913811extrabar.jpg
	if name:match("ExtraActionButton") then return end

	local Count = _G[name.."Count"]
	local HotKey = _G[name.."HotKey"]
	local Border = _G[name.."Panel"]

	Count:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
	Count:SetShadowOffset(0,0)
	HotKey:SetFont(C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
	HotKey:SetShadowOffset(0,0)

	Border:ThickBorder()
	Border:AllPoints(self)
	Border:SetTemplate("Transparent")
end
hooksecurefunc("ActionButton_Update", style)