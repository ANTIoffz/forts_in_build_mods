dofile("scripts/forts.lua")

Faction = "Russia"
StringGroup = "Miser"

DescPassive =
{
	"MineProduction",
	"TurbineProduction",
	"DeviceReclaim",
	"StructureReclaim",
}

DescActive =
{
	"FireCost",
}

GaugeDamageHitpoints = 3150
GaugeAttackHitpoints = 9000

isActive = false

CommanderApplyModBase = function()
	local sideId = 1 -- can't be local team, for consistency of enumeration
	local count = GetDeviceTypeCount(sideId) - 1
	for i = 0, count do
		local saveName = GetDeviceTypeSaveNameByIndex(i, sideId)
		if IsDeviceTypeAWeapon(saveName, sideId) then
			AddDeviceNodeEffect(teamId, saveName, "Root", path .. "/effects/dollarsign_icon.lua", false)
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)

function OnRestart()
	isActive = false
end

function OnActivation(active)
	if GetLocalTeamId()%MAX_SIDES ~= teamId then return end

	isActive = active

	local sideId = 1
	for i = 0, GetDeviceTypeCount(sideId) - 1 do
		local saveName = GetDeviceTypeSaveNameByIndex(i, sideId)
		if IsDeviceTypeAWeapon(saveName, sideId) then
			ConfigureDeviceNodeEffect(teamId, saveName, "Root", active, false)
		end
	end
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
	if oldTeamId%MAX_SIDES == sideId or newTeamId%MAX_SIDES == teamId then
		if IsDeviceTypeAWeapon(saveName, 1) then
			ConfigureDeviceNodeEffect(newTeamId, saveName, "Root", isActive and newTeamId%MAX_SIDES == teamId, false)
		end
	end
end

function OnDeviceCompleted(deviceTeamId, deviceId, saveName)
	OnDeviceTeamUpdated(0, deviceTeamId, deviceId, saveName)
end
