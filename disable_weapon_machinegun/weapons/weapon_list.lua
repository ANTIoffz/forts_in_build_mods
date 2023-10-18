local w = FindWeapon("machinegun")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end

local w = FindWeapon("minigun")
if w then
	w.Enabled = true
	w.Prerequisite = nil
end
