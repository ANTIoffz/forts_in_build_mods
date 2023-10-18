if active then
	RoundsEachBurst = (RoundsEachBurst or 1) + 1
	RetriggerFireEffect = true
	ReloadTime = 1.5*ReloadTime
	RoundPeriod = 0.15
end

FireStdDev = FireStdDev*2
FireStdDevAuto = FireStdDevAuto*2
