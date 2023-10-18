dofile("scripts/forts.lua")

Faction = "Asia"
StringGroup = "Architect"

DescPassive =
{
	"CheapBracing",
	"CheapBackBracing",
	"BatteryCapacity",
	"StoreCapacity",
	"StructureSpeed",
	"StorageBuildSpeed",
}

DescActive =
{
	"DeviceSpeed",
	"StructureSpeed",
}


GaugeDamageHitpoints = 3150
GaugeAttackHitpoints = 9000
CommanderActivationDuration = 30

function OnActivation(active)
	if GetLocalTeamId()%MAX_SIDES ~= teamId then return end
	
	if active then
		AddSpriteControl("materials", "highlight_intro_m", "commander-activated-intro", ANCHOR_CENTER_CENTER, Vec3(128, 128), Vec3(0, 0), false, "Normal")
		AddSpriteControl("devices", "highlight_intro_d", "commander-activated-intro", ANCHOR_CENTER_CENTER, Vec3(128, 128), Vec3(0, 0), false, "Normal")
		AddSpriteControl("tech", "highlight_intro_t", "commander-activated-intro", ANCHOR_CENTER_CENTER, Vec3(128, 128), Vec3(0, 0), false, "Normal")
		AddSpriteControl("weapons", "highlight_intro_w", "commander-activated-intro", ANCHOR_CENTER_CENTER, Vec3(128, 128), Vec3(0, 0), false, "Normal")

		SetControlLayoutX("", "highlight_intro_m", "ParentMiddleX")
		SetControlLayoutY("", "highlight_intro_m", "ParentMiddleY")
		SetControlLayoutX("", "highlight_intro_d", "ParentMiddleX")
		SetControlLayoutY("", "highlight_intro_d", "ParentMiddleY")
		SetControlLayoutX("", "highlight_intro_t", "ParentMiddleX")
		SetControlLayoutY("", "highlight_intro_t", "ParentMiddleY")
		SetControlLayoutX("", "highlight_intro_w", "ParentMiddleX")
		SetControlLayoutY("", "highlight_intro_w", "ParentMiddleY")

		SetSpriteAdditive("materials", "highlight_intro_m", true)
		SetSpriteAdditive("devices", "highlight_intro_d", true)
		SetSpriteAdditive("tech", "highlight_intro_t", true)
		SetSpriteAdditive("weapons", "highlight_intro_w", true)

		AddSpriteControl("materials", "highlight_m", "commander-button-highlight", ANCHOR_CENTER_CENTER, Vec3(118, 27.4), Vec3(0, 0), false, "Normal")
		AddSpriteControl("devices", "highlight_d", "commander-button-highlight", ANCHOR_CENTER_CENTER, Vec3(118, 27.4), Vec3(0, 0), false, "Normal")
		AddSpriteControl("tech", "highlight_t", "commander-button-highlight", ANCHOR_CENTER_CENTER, Vec3(118, 27.4), Vec3(0, 0), false, "Normal")
		AddSpriteControl("weapons", "highlight_w", "commander-button-highlight", ANCHOR_CENTER_CENTER, Vec3(118, 27.4), Vec3(0, 0), false, "Normal")

		SetControlLayoutX("", "highlight_m", "ParentMiddleX")
		SetControlLayoutY("", "highlight_m", "ParentMiddleY - 2")
		SetControlLayoutX("", "highlight_d", "ParentMiddleX")
		SetControlLayoutY("", "highlight_d", "ParentMiddleY - 2")
		SetControlLayoutX("", "highlight_t", "ParentMiddleX")
		SetControlLayoutY("", "highlight_t", "ParentMiddleY - 2")
		SetControlLayoutX("", "highlight_w", "ParentMiddleX")
		SetControlLayoutY("", "highlight_w", "ParentMiddleY - 2")
		
		SetSpriteAdditive("materials", "highlight_m", true)
		SetSpriteAdditive("devices", "highlight_d", true)
		SetSpriteAdditive("tech", "highlight_t", true)
		SetSpriteAdditive("weapons", "highlight_w", true)
	else
		DeleteControl("", "highlight_intro_m")
		DeleteControl("", "highlight_intro_d")
		DeleteControl("", "highlight_intro_t")
		DeleteControl("", "highlight_intro_w")

		DeleteControl("", "highlight_m")
		DeleteControl("", "highlight_d")
		DeleteControl("", "highlight_t")
		DeleteControl("", "highlight_w")
	end
end
