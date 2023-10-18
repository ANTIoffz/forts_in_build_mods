
CommanderApplyModBase = function()
	if ScattershotExclude then
		return
	end

	if active then
		if RoundsEachBurst and RoundsEachBurst > 1 then
			local mult = 0.35
			if UniformSpray then
				FireStdDevSpray = mult*(FireStdDevSpray or 0)
			else
				FireStdDev = mult*(FireStdDev or 0)
				FireStdDevAuto = mult*(FireStdDevAuto or 0)
			end
		else
			FireStdDev = 0
			FireStdDevAuto = 0
		end
		KickbackMean = 0
		KickbackStdDev = 0
		MaxVisibilityHeight = 0
		if HeatPeriod then
			CoolPeriod = HeatPeriod*1.1
		end
	else
		local multiplier = 1.2
		FireStdDev = multiplier*(FireStdDev or 0)
		FireStdDevAuto = multiplier*(FireStdDevAuto or 0)
		KickbackMean = multiplier*(KickbackMean or 0)
		KickbackStdDev = multiplier*(KickbackStdDev or 0)
	end
end
RegisterApplyMod(CommanderApplyModBase)
