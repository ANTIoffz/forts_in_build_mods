function AddOverclockerDowngrade(sourceDevice, sourceUpgrade, targetSaveName)
	if (sourceUpgrade.Downgrade) or (sourceUpgrade.CanDowngrade == false) then
		return
	end
	local targetDevice = nil
	if FindWeapon then
		targetDevice = FindWeapon(targetSaveName)
	else
		targetDevice = FindDevice(targetSaveName)
	end
	if targetDevice then
		if not targetDevice.Upgrades then
			targetDevice.Upgrades = {}
		end
		for k,targetUpgrade in pairs(targetDevice.Upgrades) do
			if targetUpgrade.SaveName == sourceDevice.SaveName then
				return
			end
		end
		table.insert(targetDevice.Upgrades,
		{
			Downgrade = true,
			TransferReloadProgress = sourceDevice.TransferReloadProgress,
			SaveName = sourceDevice.SaveName,
			MetalCost = -sourceUpgrade.MetalCost,
			EnergyCost = -sourceUpgrade.EnergyCost,
			BuildDuration = 4,
			Button = "hud-context-downgrade",
		})
	end
end

function AddDowngrades(list)
	-- add downgrades for all upgrades
	for i,sourceDevice in ipairs(list) do
		if sourceDevice.Upgrades then
			for j,sourceUpgrade in pairs(sourceDevice.Upgrades) do
				AddOverclockerDowngrade(sourceDevice, sourceUpgrade, sourceUpgrade.SaveName)
			end
			if sourceDevice.ProxyUpgrades then
				for j,sourceUpgrade in pairs(sourceDevice.ProxyUpgrades) do
					AddOverclockerDowngrade(sourceDevice, sourceUpgrade, sourceUpgrade.SaveName)
				end
			end
		end
	end
end
