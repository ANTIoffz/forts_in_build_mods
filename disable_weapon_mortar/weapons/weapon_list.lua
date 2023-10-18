local w = FindWeapon("mortar")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
	w.Upgrades = nil
end

-- make heavy mortar available from workshop directly
local w = FindWeapon("mortar2")
if w then
	w.Enabled = true
	w.Prerequisite = "workshop"
end
