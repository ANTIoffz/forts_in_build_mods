if ReloadTime >= 9 or EagleEyeReloadBank and (EagleEyeReloadBank.Max == nil or EagleEyeReloadBank.Max > 0) then
	ReloadBank =
	{
		Max = EagleEyeReloadBank and EagleEyeReloadBank.Max or 1,
		ReloadTime = EagleEyeReloadBank and EagleEyeReloadBank.ReloadTime or 3,
		BaseMult = 1.25,
		IndexMult = 0.2,
		EnergyMult = 1,
		MetalMult = 1,
	}
end
