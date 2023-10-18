
-- add downgrades for all upgrades
for i,sourceDevice in ipairs(Devices) do
	if sourceDevice.Upgrades then
		for j,sourceUpgrade in pairs(sourceDevice.Upgrades) do
			if not sourceUpgrade.Downgrade then
				local targetSaveName = sourceUpgrade.SaveName
				local targetDevice = FindDevice(targetSaveName)
				if targetDevice then
					if not targetDevice.Upgrades then
						targetDevice.Upgrades = {}
					end
					local downgradeExists = false
					for k,targetUpgrade in pairs(targetDevice.Upgrades) do
						if targetUpgrade.SaveName == sourceDevice.SaveName then
							downgradeExists = true
							break
						end
					end
					if not downgradeExists then
						table.insert(targetDevice.Upgrades,
						{
							Downgrade = true,
							SaveName = sourceDevice.SaveName,
							MetalCost = -sourceUpgrade.MetalCost,
							EnergyCost = -sourceUpgrade.EnergyCost,
							BuildDuration = 4,
							Button = "hud-context-downgrade",
						})
					end
				end
			end
		end
		local upgradeSaveName = device
	end
end

CommanderApplyModBase = function()
	local multiplierUpgrade = 0.5

	for k, device in ipairs(Devices) do
		if device.Upgrades then
			for i, upgradeParams in pairs(device.Upgrades) do
				if not upgradeParams.Downgrade then
					local upgrade = FindDevice(upgradeParams.SaveName)
					if upgrade then
						upgradeParams.BuildDuration = multiplierUpgrade*(upgradeParams.BuildDuration or upgrade.BuildTimeComplete or 0)
					end
				end
			end
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)