
RegisterApplyMod(function()
	if ReloadTime > 4 then
		ReloadTime = 2
	else
		ReloadTime = 0.5*ReloadTime
	end

	if dlc2_Ammunition then
		for i=1,#dlc2_Ammunition do
			if dlc2_Ammunition[i].ReloadTime then
				if dlc2_Ammunition[i].ReloadTime > 4 then
					dlc2_Ammunition[i].ReloadTime = 2
				else
					dlc2_Ammunition[i].ReloadTime = 0.5*dlc2_Ammunition[i].ReloadTime
				end
			end
		end
	end

	CanOverheat = nil
end)