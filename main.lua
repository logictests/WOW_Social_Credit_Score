local SCS = CreateFrame("Frame")
SCS:SetScript('OnEvent', function(self, event, ...) self[event](self, ...) end)
C_ChatInfo.RegisterAddonMessagePrefix("SCS")
SCS:RegisterEvent("CHAT_MSG_ADDON")

SLASH_SCS1 = "/scs"
SlashCmdList["SCS"] = function (msg, editbox)
	SCS:SendTheMessage(msg)
end

function SCS:SendTheMessage(theText)
  C_ChatInfo.SendAddonMessage("SCS",theText,"WHISPER","Sociopath")
  print("sent it")
end

function SCS:CHAT_MSG_ADDON(thePrefix,theMessage)
  print(thePrefix,theMessage)
end
