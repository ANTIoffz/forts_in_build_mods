battery = FindDevice("battery")
if battery then
	battery.MetalCost = 105
end

if not capture then
	barrel = FindDevice("barrel")
	if barrel then
		barrel.MetalCost = 200
		barrel.EnergyCost = 2000

		barrel.Enabled = true
		barrel.NoReclaim = nil
		barrel.BuildTimeComplete = 15
	end
end
