local w = FindWeapon("rocketemp")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
	w.Upgrades = nil
end

w = FindWeapon("rocket")
if w then
	w.Enabled = true
	w.Prerequisite = "armoury"
end
