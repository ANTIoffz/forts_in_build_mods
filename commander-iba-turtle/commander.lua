dofile("scripts/forts.lua")

Faction = "Russia"
StringGroup = "Armourdillo"

DescPassive =
{
	"ArmourCost",
	"ShieldRunCost",
	"DoorSpeed",
	"ArmourMass",
	"APMinigun",
	"RepairStation",
	"IncreasedRepairField",
}

DescActive =
{
	"RepairCost",
	"FastRepair",
	"APSniper",
	"SeeHiddenArmour",
	"SeeHiddenPortals",
}

CommanderActivationDuration = 10

GaugeDamageHitpoints = 4500
GaugeAttackHitpoints = 9000

function OnActivation(active)
	if GetLocalTeamId()%MAX_SIDES == teamId then
		if active then
			AddMouseAccessory("commander-turtle", "repair_icon", 0, 24, 42, 42)
		else
			DeleteMouseAccessory("commander-turtle")
		end
	end
	EnableFogOfWarShowArmour(teamId, active)
	
	if active then
		linkRepairCount = 0
		EnumerateLinks(teamId, "RepairEnumeratedLink", 0.9999, 0.9999, "", true)
	end
end

function RepairEnumeratedLink(nodeA, nodeB, saveName, relativeHealth, stress, segmentsOnFire, deviceId)
	RepairLink(nodeA, nodeB)
	linkRepairCount = linkRepairCount + 1

	if deviceId > 0
		and IsDeviceRepairable(deviceId)
		and IsDeviceAvailable(deviceId) then
		RepairDevice(deviceId)
	end
	
	-- continue enumeration
	return true
end

Sprites =
{
	{
		Name = "repair_icon",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/CPIcons-Repair.dds" },

					duration = 1,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}
