local w = FindWeapon("missile")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end

-- make warhead available from workshop directly
local w = FindWeapon("missile2")
if w then
	w.Enabled = true
	w.Prerequisite = "workshop"
end

local w = FindWeapon("missile2inv")
if w then
	w.Enabled = true
	w.Prerequisite = "workshop"
end
