
CommanderApplyModBase = function()
	-- adjust repair field size
	if RepairFieldRadius and NodeEffects then
		RepairFieldRadius = 1.5*RepairFieldRadius

		for k,v in ipairs(NodeEffects) do
			if v.NodeName == "Active" then
				v.EffectPath = "mods/repair_station/effects/repairfieldactive_large.lua"
			end
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)