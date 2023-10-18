
CommanderApplyModBase = function()
	local multiplier = 0.5
	if active then
		if Projectile ~= "missile" then
			ReloadTime = multiplier*ReloadTime
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)