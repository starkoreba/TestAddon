local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "PLAYER_ENTERING_WORLD") then
		local _, instanceType = ...
        if(instanceType == "party") then
            SendChatMessage("Hey all, bon jeu!", "PARTY")
        end
    end
end)
