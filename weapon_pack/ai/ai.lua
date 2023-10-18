data.AntiAirErrorStdDev["flak"] = Balance(2, 1)
data.AntiAirOpenDoor["flak"] = { ["mortar"] = false, }
data.AntiAirFireProbability["flak"] = Balance(0.8, 0.9)

data.AntiAirErrorStdDev["shotgun"] = Balance(3, 1)
data.AntiAirOpenDoor["shotgun"] = { ["mortar"] = false, }
data.AntiAirFireProbability["shotgun"] = Balance(0.1, 0.2)

-- AA treats flaming mortars the same as regular mortars
for weapon,targets in pairs(data.AntiAirOpenDoor) do
	if targets["mortar"] ~= nil then
		targets["flamingmortar"] = targets["mortar"]
	end
end

AntiAirFireProbabilityHumanAssist["flak"] = data.AntiAirFireProbability["flak"]
AntiAirFireProbabilityHumanAssist["shotgun"] = 0

UpgradeSource["shotgun"] = "flak"
UpgradeSource["rocket"] = "rocketemp"

FireErrorStdDev["flak"] = Balance(3, 1)
FireErrorStdDev["shotgun"] = Balance(3, 1)
FireErrorStdDev["rocketemp"] = Balance(2, 0.5)
FireErrorStdDev["rocket"] = Balance(2, 0.5)
FireErrorStdDev["cannon20mm"] = Balance(6, 1.5)
FireErrorStdDev["firebeam"] = Balance(3, 0.5)

data.OffensiveFireProbability["flak"] = 0
data.OffensiveFireProbability["shotgun"] = Balance(0.5, 0.8)
data.OffensiveFireProbability["rocketemp"] = Balance(0.5, 0.8)
data.OffensiveFireProbability["rocket"] = Balance(0.5, 0.8)
data.OffensiveFireProbability["cannon20mm"] = Balance(0.5, 0.8)
data.OffensiveFireProbability["firebeam"] = Balance(0.3, 0.8)

data.FireDuringRebuildProbability["flak"] = 0
data.FireDuringRebuildProbability["shotgun"] = Balance(0.5, 0.8)
data.FireDuringRebuildProbability["rocketemp"] = Balance(0.5, 0.8)
data.FireDuringRebuildProbability["rocket"] = Balance(0.5, 0.8)
data.FireDuringRebuildProbability["cannon20mm"] = Balance(0.5, 0.8)
data.FireDuringRebuildProbability["firebeam"] = Balance(0.3, 0.8)

data.ProjectileHitpoints["shotgun"] = 100
data.ProjectileHitpoints["rocketemp"] = 410
data.ProjectileHitpoints["rocket"] = 410
data.ProjectileHitpoints["cannon20mm"] = 410
data.ProjectileHitpoints["firebeam"] = 1600

data.IgnoreProtectionProbability["shotgun"] = Balance(0.3, 0.7)
data.IgnoreProtectionProbability["rocketemp"] = Balance(0.5, 0.8)
data.IgnoreProtectionProbability["rocket"] = Balance(0.5, 0.8)
data.IgnoreProtectionProbability["cannon20mm"] = Balance(0.5, 0.8)
data.IgnoreProtectionProbability["firebeam"] = Balance(0.8, 1.0)

data.WeaponTargetStructureAttempts["shotgun"] = 0

-- add grouping affinities to existing weapons with new weapons

SetGroupingAffinity("minigun", "cannon20mm", 0.6)
SetGroupingAffinity("mortar", "rocketemp", 0.8)
SetGroupingAffinity("mortar", "rocket", 0.8)
SetGroupingAffinity("mortar2", "rocketemp", 0.8)
SetGroupingAffinity("mortar2", "rocket", 0.8)

SetGroupingAffinity("missile", "shotgun", 0.3)
SetGroupingAffinity("missile", "cannon20mm", 0.3)
SetGroupingAffinity("missile2", "cannon20mm", 0.5)
SetGroupingAffinity("missileinv", "cannon20mm", 0.5)
SetGroupingAffinity("missile2", "cannon20mm", 0.5)
SetGroupingAffinity("missile2inv", "cannon20mm", 0.5)
SetGroupingAffinity("missile", "rocket", 0.3)
SetGroupingAffinity("missile2", "rocket", 0.5)
SetGroupingAffinity("missileinv", "rocket", 0.5)
SetGroupingAffinity("missile2", "rocket", 0.5)
SetGroupingAffinity("missile2inv", "rocket", 0.5)
SetGroupingAffinity("missile", "rocketemp", 0.3)
SetGroupingAffinity("missile2", "rocketemp", 0.5)
SetGroupingAffinity("missileinv", "rocketemp", 0.5)
SetGroupingAffinity("missile2", "rocketemp", 0.5)
SetGroupingAffinity("missile2inv", "rocketemp", 0.5)

SetGroupingAffinity("cannon", "cannon20mm", 0.5)

SetGroupingAffinity("laser", "cannon20mm", 0.5)
SetGroupingAffinity("laser", "firebeam", 0.3)

data.GroupingAffinity["shotgun"] = { ["alone"] = 1, ["shotgun"] = 0.5, ["missile"] = 0.3, }
data.GroupingAffinity["rocketemp"] = { ["alone"] = 1, ["mortar"] = 0.8, ["mortar2"] = 0.8, ["missile"] = 0.5, ["missile2"] = 0.5, ["rocket"] = 0.6, ["rocketemp"] = 0.6, }
data.GroupingAffinity["rocket"] = { ["alone"] = 1, ["mortar"] = 0.8, ["mortar2"] = 0.8, ["missile"] = 0.5, ["missile2"] = 0.5, ["rocket"] = 0.6, ["rocketemp"] = 0.6, }
data.GroupingAffinity["cannon20mm"] = { ["alone"] = 1, ["minigun"] = 0.5, ["missile"] = 0.5, ["missile2"] = 0.5, ["cannon"] = 0.5, ["cannon20mm"] = 0.8, }
data.GroupingAffinity["firebeam"] = { ["alone"] = 1, ["minigun"] = 0.5, ["missile"] = 0.5, ["missile2"] = 0.5, ["cannon"] = 0.5, ["cannon20mm"] = 0.5, ["laser"] = 0.3, }

ShootableProjectile["rocketemp"] = true
ShootableProjectile["rocket"] = true
ShootableProjectile["flamingrocketemp"] = true
ShootableProjectile["flamingrocket"] = true

ShootableProjectile["flamingmissile"] = true
ShootableProjectile["flamingmissile2"] = true
ShootableProjectile["flamingmortar"] = true
ShootableProjectile["flamingmortar2"] = true

ShootableProjectile["damagedmissile2"] = true
ShootableProjectile["flamingdamagedmissile2"] = true

InsertAheadOf(SmallArmsPriorities, "flak", "machinegun")
InsertAheadOf(SmallArmsPriorities, "shotgun", "mine2")
InsertAheadOf(SmallArmsPriorities, "rocketemp", "shotgun")
InsertAheadOf(SmallArmsPriorities, "rocket", "rocketemp")
InsertAheadOf(SmallArmsPriorities, "firebeam", "reactor")
InsertAheadOf(SmallArmsPriorities, "cannon20mm", "reactor")
InsertAheadOf(HeavyArmsPriorities, "munitions", "factory")
InsertAheadOf(HeavyArmsPriorities, "armoury", "factory")

InsertAheadOf(HeavyArmsPriorities, "flak", "turbine2")
InsertAheadOf(HeavyArmsPriorities, "shotgun", "flak")
InsertAheadOf(HeavyArmsPriorities, "rocketemp", "turbine2")
InsertAheadOf(HeavyArmsPriorities, "rocket", "rocketemp")
InsertAheadOf(HeavyArmsPriorities, "firebeam", "turbine2")
InsertAheadOf(HeavyArmsPriorities, "cannon20mm", "turbine2")
InsertAheadOf(HeavyArmsPriorities, "munitions", "factory")
InsertAheadOf(HeavyArmsPriorities, "armoury", "factory")
