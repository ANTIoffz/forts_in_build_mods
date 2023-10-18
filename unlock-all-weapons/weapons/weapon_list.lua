
RegisterApplyMod(function()
	-- enable all weapons
	for k,v in ipairs(Weapons) do
		if not v.CommanderCommon and not v.ExcludeUnlockAll then
			v.Enabled = true
			v.Prerequisite = nil
		end
	end
end)
