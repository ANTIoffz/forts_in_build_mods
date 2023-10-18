local firebeam = FindProjectile("firebeam")

if firebeam then
	-- Firebeam goes for 3.2s, up from 2.5s normally
	-- Reduce the damage so that bracing isn't a one-shot
	-- applies about the same direct damage as normal Firebeam, but more fire damage
	firebeam.ProjectileDamage = 39
	-- increase depth in bracing
	firebeam.MinPenetration = firebeam.MinPenetration + 20
end
