dofile("scripts/forts.lua")

Faction = "Asia"
StringGroup = "Overclocker"

DescPassive =
{
	"UpgradeSpeed",
	"RepairStationStorage",
	"DeviceDowngrade",
}

DescActive =
{
	"ProductionBoost",
}

MetalProducersToMark =
{
	["mine"] = "Mine",
	["mine2"] = "Mine2",
}

EnergyProducersToMark =
{
	["turbine"] = "Turbine",
	["turbine2"] = "Turbine2",
}

GaugeDamageHitpoints = 1.1*4050
GaugeAttackHitpoints = 1.1*10080

CommanderActivationDuration = 0.7*20

isActive = false

CommanderApplyModBase = function()
	for saveName,nodeName in pairs(MetalProducersToMark) do
		AddDeviceNodeEffect(teamId, saveName, nodeName, path .. "/effects/ore_icon.lua", false)
	end

	for saveName,nodeName in pairs(EnergyProducersToMark) do
		AddDeviceNodeEffect(teamId, saveName, nodeName, path .. "/effects/energy_icon.lua", false)
	end
end
RegisterApplyMod(CommanderApplyModBase)

function OnActivation(active)
	if GetLocalTeamId()%MAX_SIDES ~= teamId then return end

	isActive = active

	for saveName,nodeName in pairs(MetalProducersToMark) do
		ConfigureDeviceNodeEffect(teamId, saveName, nodeName, active, false)
	end

	for saveName,nodeName in pairs(EnergyProducersToMark) do
		ConfigureDeviceNodeEffect(teamId, saveName, nodeName, active, false)
	end
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, deviceSaveName)
	if oldTeamId%MAX_SIDES == teamId or newTeamId%MAX_SIDES == teamId then
		local active = isActive and newTeamId%MAX_SIDES == teamId

		for saveName,nodeName in pairs(MetalProducersToMark) do
			if saveName == deviceSaveName then
				ConfigureDeviceNodeEffect(newTeamId, saveName, nodeName, active, false)
			end
		end

		for saveName,nodeName in pairs(EnergyProducersToMark) do
			if saveName == deviceSaveName then
				ConfigureDeviceNodeEffect(newTeamId, saveName, nodeName, active, false)
			end
		end
	end
end

function OnDeviceCompleted(deviceTeamId, deviceId, saveName)
	OnDeviceTeamUpdated(0, deviceTeamId, deviceId, saveName)
end
