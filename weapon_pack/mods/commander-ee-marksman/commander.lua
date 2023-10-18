WP_WeaponsToMark =
{
	"shotgun",
}

Base_OnActivation = OnActivation
Base_OnDeviceTeamUpdated = OnDeviceTeamUpdated

CommanderApplyModWeaponPack = function()
	for k,v in ipairs(WP_WeaponsToMark) do
		AddDeviceNodeEffect(teamId, v, "Root", path .. "/effects/explosives_icon.lua", false)
	end
end
RegisterApplyMod(CommanderApplyModWeaponPack)

function OnActivation(active)
	if GetLocalTeamId()%MAX_SIDES ~= teamId then return end

	Base_OnActivation(active)

	for k,v in ipairs(WP_WeaponsToMark) do
		ConfigureDeviceNodeEffect(teamId, v, "Root", active, false)
	end
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
	Base_OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)

	if oldTeamId%MAX_SIDES == teamId or newTeamId%MAX_SIDES == teamId then
		if TrackingType(saveName, WP_WeaponsToMark) then
			ConfigureDeviceNodeEffect(newTeamId, saveName, "Root", isActive and newTeamId%MAX_SIDES == teamId, false)
		end
	end
end
