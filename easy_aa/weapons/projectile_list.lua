
for i = 1,#Projectiles do
	local p = Projectiles[i]
	if p.ProjectileShootDownRadius then
		p.ProjectileShootDownRadius = 2*p.ProjectileShootDownRadius
	end
end
