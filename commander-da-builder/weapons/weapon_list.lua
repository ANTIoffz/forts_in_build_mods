
CommanderApplyModBase = function()
	for k, device in ipairs(Weapons) do
		if active and device.Prerequisite ~= "upgrade" then
			device.BuildTimeComplete = 0.25*device.BuildTimeComplete
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)