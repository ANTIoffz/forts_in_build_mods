
RegisterApplyMod(function()
	for k,v in ipairs(Devices) do
		if not v.ExcludeUnlockAll then
			v.Enabled = true
			v.Prerequisite = nil
		end
	end
end)
