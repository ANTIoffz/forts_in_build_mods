dofile("scripts/forts.lua")

Faction = "BPO"
StringGroup = "Seep"

DescPassive =
{
	"WarheadBurst",
	"SiloDelay",
	"MissileReturn",
	"InvisiblePainting",
	"MissileTargets",
	"SmokeLargerLonger",
}

DescActive =
{
	"ThrustIncrease",
	"ArmouredSwarm",
	"ArmouredEMP",
	"ArmouredRocket",
}

CommanderActivationDuration = 20

GaugeDamageHitpoints = 3000
GaugeAttackHitpoints = 12000


if MarkDevicesOnActive then
	WeaponsToMark =
	{
		"missile",
		"missileinv",
		"missile2",
		"missile2inv",
	}

	MarkDevicesOnActive(WeaponsToMark, path .. "/effects/fast_icon.lua")
end
