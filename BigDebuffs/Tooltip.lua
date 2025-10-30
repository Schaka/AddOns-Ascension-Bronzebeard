-- Scan Tooltip
BigDebuffsTooltip = CreateFrame("GameTooltip", "__BigDebuffsTooltip")
BigDebuffsTooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
BigDebuffsTooltip:AddFontStrings(BigDebuffsTooltip:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"), BigDebuffsTooltip:CreateFontString("$parentTextRight1", nil, "GameTooltipText"))

-- General Event
BigDebuffsTooltip:SetScript("OnEvent", function(Self, Event)
	Self:UnregisterEvent(Event)
	Self:SetScript("OnEvent", nil)
end)
BigDebuffsTooltip:RegisterEvent("PLAYER_ENTERING_WORLD")