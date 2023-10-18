dofile("scripts/forts.lua")

Faction = ""
StringGroup = "EagleEye"

DescPassive =
{
	"SniperBuildSpeed",
	"SniperGroups",
	"SniperDeviation",
	"SniperReload",
	"MinigunAntiAir",
	"MinigunSpinUp",
	"LaserSights",
}

DescActive =
{
	"ExplosiveRounds",
	"MachineGunExtraRounds",
}

GaugeDamageHitpoints = 2250
GaugeAttackHitpoints = 9000
CommanderActivationDuration = 12

WeaponsToMark =
{
	"minigun",
	"sniper",
	"sniper2",
}

WeaponsWithSights =
{
	"sniper",
	"sniper2",
	"minigun",
	"cannon",
	"20mmcannon",
	"flak",
	"shotgun",
}

isActive = false

CommanderApplyModBase = function()
	for k,v in ipairs(WeaponsToMark) do
		AddDeviceNodeEffect(teamId, v, "Root", path .. "/effects/explosives_icon.lua", false)
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
		if TrackingType(saveName, WeaponsToMark) then
			ConfigureDeviceNodeEffect(newTeamId, saveName, "Root", isActive and newTeamId%MAX_SIDES == teamId, false)
		end
	end
end

function OnDeviceCompleted(deviceTeamId, deviceId, saveName)
	OnDeviceTeamUpdated(0, deviceTeamId, deviceId, saveName)
end

function TryShowTip(saveName)
	local id = GetLocalSelectedDeviceId()
	if id > 0 and not tipShown then
		local currSaveName = GetDeviceType(id)
		if saveName == currSaveName and TrackingType(saveName, WeaponsWithSights) then
			if IsDeviceFullyBuilt(id) then
				ShowTip("ui/textures/HUD/tips/Tip-LaserSight.dds", "TipAdjustLaserSights")
				tipShown = true
			elseif IsDeviceFullyBuilt(id) then
				ScheduleCall(3, TryShowTip, saveName)
			end
		end
	end
end

function OnDeviceSelected(saveName)
	if TipsEnabled() and GetLocalTeamId()%MAX_SIDES == teamId and not tipShown and TrackingType(saveName, WeaponsWithSights) then
		ScheduleCall(3, TryShowTip, saveName)
	end
end
