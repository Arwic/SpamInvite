local SI = LibStub("AceAddon-3.0"):NewAddon("SpamInvite", "AceConsole-3.0", "AceEvent-3.0");

function SI:CHAT_MSG_CHANNEL(self, message, sender, ...)
    if message == "1" then
        if GetNumGroupMembers() < 5 then
            SI:Print("Invited:", sender)
            InviteUnit(sender)
        end
    end
end

function SI:OnEnable()
    self:RegisterEvent("CHAT_MSG_CHANNEL")
    self:Print("Loaded")
end