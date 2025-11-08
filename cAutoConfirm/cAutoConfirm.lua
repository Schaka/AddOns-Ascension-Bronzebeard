--[[-----------------------------------------------------
	cAutoConfirm
	Copyright (c) 2008, Chimaine of EU-Blackrock
	All rights reserved.
]]-------------------------------------------------------

cAutoConfirm = CreateFrame("Frame", "cAutoConfirmFrame")

-------------------------------------------------------
--	Config
-------------------------------------------------------
local cfg = {
	activeInGroup = false, -- true or false. If true, will also auto confirm items in a party or raid. BE CAREFULL!!!
}

-------------------------------------------------------
--	do not edit from here on!
-------------------------------------------------------
local curLootSlots = {}
local curSlot

-------------------------------------------------------
--	Utility functions
-------------------------------------------------------
local function print(text)
	DEFAULT_CHAT_FRAME:AddMessage(GetAddOnMetadata("cAutoConfirm", "Title") .. text)
end

local function AutoConfirmIsAllowed()
	if (GetNumRaidMembers() > 0) or (GetNumPartyMembers() > 0) then
		if cfg.activeInGroup == false then
			return false
		elseif cfg.activeInGroup == true then
			return true
		end
	else
		return true
	end
end

-------------------------------------------------------
--	Event Handler
-------------------------------------------------------
function cAutoConfirm:LOOT_BIND_CONFIRM()
	if AutoConfirmIsAllowed() then
		StaticPopup_Hide("LOOT_BIND")
		curLootSlots[#curLootSlots+1] = arg1
	end
end

function cAutoConfirm:LOOT_SLOT_CLEARED()
	if AutoConfirmIsAllowed() then
		for i, v in ipairs(curLootSlots) do
			if v == curSlot then
				curLootSlots[i] = nil
				curSlot = nil
			end
		end
	end
end

if cfg.activeInGroup then
	-- One time warning
	function cAutoConfirm:LOOT_OPENED()
		print("|cffff0000WARNING!|r: cAutoConfirm in group is |cffff0000active!|r")
		self:UnregisterEvent("LOOT_OPENED")
	end
	cAutoConfirm:RegisterEvent("LOOT_OPENED")
end

-------------------------------------------------------
--	Registering Events
-------------------------------------------------------
cAutoConfirm:RegisterEvent("LOOT_BIND_CONFIRM")
cAutoConfirm:RegisterEvent("LOOT_SLOT_CLEARED")

cAutoConfirm:SetScript("OnEvent", function(self, event, ...)
	self[event](self, event, ...)
end)

cAutoConfirm:SetScript("OnUpdate", function()
	for _, v in ipairs(curLootSlots) do
		curSlot = v
		ConfirmLootSlot(v)
	end
end)

