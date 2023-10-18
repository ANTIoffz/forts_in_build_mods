dofile("scripts/forts.lua")

Faction = "Asia"
StringGroup = "SpeedDemon"

DescPassive =
{
	"FastBuild",
	"FastScrap",
	"FastRepair",
	"FastEMPRepair",
	"RepairCost",
}

DescActive =
{
	"FastReload",
}

GaugeDamageHitpoints = 3150
GaugeAttackHitpoints = 9000

isActive = false

WeaponsToMark =
{
	"machinegun",
	"minigun",
	"sniper",
	"sniper2",
	"mortar",
	"mortar2",
	"missile2",
	"cannon",
	"laser",
	"buzzsaw",
	"smokebomb",
	"magnabeam",
	"howitzer",
}

CommanderApplyModBase = function()
	for k,v in ipairs(WeaponsToMark) do
		AddDeviceNodeEffect(teamId, v, "Root", path .. "/effects/reload_icon.lua", false)
	end
end
RegisterApplyMod(CommanderApplyModBase)

function OnRestart()
	isActive = false
end

function OnActivation(active)
	if GetLocalTeamId()%MAX_SIDES ~= teamId then return end

	isActive = active

	for k,v in ipairs(WeaponsToMark) do
		ConfigureDeviceNodeEffect(teamId, v, "Root", active, false)
	end
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
	if oldTeamId%MAX_SIDES == teamId or newTeamId%MAX_SIDES == teamId then
		if TrackingType(saveName, WeaponsToMark) then ConfigureDeviceNodeEffect(newTeamId, saveName, "Root", isActive and newTeamId%MAX_SIDES == teamId, false) end
	end
end

function OnDeviceCompleted(deviceTeamId, deviceId, saveName)
	OnDeviceTeamUpdated(0, deviceTeamId, deviceId, saveName)
end
