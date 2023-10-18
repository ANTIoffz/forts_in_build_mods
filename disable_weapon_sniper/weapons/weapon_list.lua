local w = FindWeapon("sniper")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
	w.Upgrades = nil
end

local w = FindWeapon("sniper2")
if w then
	w.Enabled = true
	w.Prerequisite = nil
	w.SpotterFactor = 1
end
