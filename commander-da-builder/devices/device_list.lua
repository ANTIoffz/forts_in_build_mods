multiplier = 0.8333
battery = FindDevice("battery")
if battery then
	battery.BuildTimeComplete = multiplier*battery.BuildTimeComplete
end

store = FindDevice("store")
if store then
	store.BuildTimeComplete = multiplier*store.BuildTimeComplete
end

CommanderApplyModBase = function()
	if architect_ApplyMod then architect_ApplyMod() end

	local multiplier = 0.25
	if active then
		for k, device in ipairs(Devices) do
			if device.Prerequisite ~= "upgrade" then
				device.BuildTimeComplete = multiplier*(device.BuildTimeComplete or 1)
			end
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)