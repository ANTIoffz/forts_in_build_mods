
CommanderApplyModBase = function()
	for k, device in ipairs(Weapons) do
		if device.MetalReclaimMax ~= 0 then
			device.MetalReclaimMax = 1
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)