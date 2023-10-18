local w = FindWeapon("flak")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end

local w = FindWeapon("shotgun")
if w then
	w.Enabled = true
	w.Prerequisite = "armoury"
end
