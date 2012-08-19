local T, C, L = unpack(Tukui)

if C.classbar.totemTimers[1] ~= true or T.myclass ~= "SHAMAN" then return end

local tbWidth, tbHeight = C.classbar.totemTimers[2], C.classbar.totemTimers[3]
local total = 0
local delay = 0.01
local GetTotemInfo, SetValue, GetTime = GetTotemInfo, SetValue, GetTime

-- In the order, fire, earth, water, air
local colors = {
[1] = {.58,.23,.10},
[2] = {.23,.45,.13},
[3] = {.19,.48,.60},
[4] = {.42,.18,.74},
}

local mover = CreateFrame("Frame", "TukuiTotemTimersMover", UIParent)
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
mover.Text:SetPoint("CENTER", TukuiTotemTimersMover, "CENTER", 0, 0)
mover.Text:SetText(L.mover_cbtotem)
tinsert(T.AllowFrameMoving, mover)

local tTimers = CreateFrame("Frame", "TukuiTotemTimers", UIParent)
tTimers:Width(tbWidth)
tTimers:Height(tbHeight)
tTimers:Point("CENTER", mover)


local totems = {}


for i=1,4 do
totems[i] = CreateFrame("StatusBar", "TukuiTotemTimers_TotemBar"..i, tTimers)
totems[i]:SetWidth((tbWidth-3) / 4)
totems[i]:SetHeight(tbHeight)
if totems[i]:GetHeight() > totems[i]:GetWidth() then
totems[i]:SetOrientation("VERTICAL")
else
totems[i]:SetOrientation("HORIZONTAL")
end
totems[i]:SetStatusBarTexture(C.media.normTex)
totems[i]:CreateBackdrop("ThinTransparent", true)

totems[i]:FontString("timer", C.media.pixelfont, 8, "MONOCHROMEOUTLINE")
totems[i].timer:SetPoint("CENTER", 0, 0)
end

-- re-arrange the order
totems[2]:Point("LEFT", tTimers, "LEFT", 0, 0)
totems[1]:Point("LEFT", totems[2], "RIGHT", 1, 0)
totems[3]:Point("LEFT", totems[1], "RIGHT", 1, 0)
totems[4]:Point("LEFT", totems[3], "RIGHT", 1, 0)

function ToClock(seconds)
seconds = ceil(tonumber(seconds))
if(seconds <= 0) then
return " "
elseif seconds < 600 then
local d, h, m, s = ChatFrame_TimeBreakDown(seconds)
return format("%01d:%02d", m, s)
elseif(seconds < 3600) then
local d, h, m, s = ChatFrame_TimeBreakDown(seconds);
return format("%02d:%02d", m, s)
else
return "1 hr+"
end
end

local function GetTimeLeft(slot)
local havetotem, name, startTime, duration, totemIcon = GetTotemInfo(slot)
return (duration-(GetTime() - startTime))
end

local function UpdateSlot()
for slot=1, 4 do
local havetotem, name, startTime, duration, totemIcon = GetTotemInfo(slot)
totems[slot]:SetStatusBarColor(unpack(colors[slot]))
totems[slot]:SetValue(0)

totems[slot].ID = slot

-- If we have a totems then set his value
if(havetotem) then
if(duration >= 0) then
totems[slot]:SetMinMaxValues(0, duration)
totems[slot]:SetValue(GetTimeLeft(slot)) -- -(GetTime() - startTime))
totems[slot].timer:SetText()
-- Status bar update
totems[slot]:SetScript("OnUpdate",function(self,elapsed)
total = total + elapsed
if total >= delay then
total = 0
havetotem, name, startTime, duration, totemIcon = GetTotemInfo(self.ID)
if (GetTimeLeft(slot) >= 0) then --(GetTime() - startTime) <= 0) then
self:SetValue(GetTimeLeft(slot))
totems[slot].timer:SetText(ToClock(GetTimeLeft(slot)))
else
self:SetValue(0)
totems[slot].timer:SetText(" ")
end
end
end)
else
-- There's no need to update because it doesn't have any duration
totems[slot]:SetScript("OnUpdate",nil)
totems[slot]:SetValue(0)
end
else
-- No totems = no time
totems[slot]:SetValue(0)
end
end
end

tTimers:RegisterEvent("PLAYER_ENTERING_WORLD")
tTimers:RegisterEvent("PLAYER_TOTEM_UPDATE")
tTimers:SetScript("OnEvent", UpdateSlot)

local vehicle = CreateFrame("Frame")
vehicle:RegisterEvent("VEHICLE_UPDATE")
vehicle:SetScript("OnEvent", function()
if UnitHasVehicleUI("player") then
tTimers:Hide()
else
tTimers:Show()
end
end)