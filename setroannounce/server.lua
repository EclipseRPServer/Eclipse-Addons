message = ""
RegisterCommand('announce', function(source, args, user)
	if IsPlayerAceAllowed(source, "command") then
			for i,v in pairs(args) do
				message = message .. " " .. v
			end
			TriggerClientEvent("announce", -1, message)
			message = ""
    end
end)