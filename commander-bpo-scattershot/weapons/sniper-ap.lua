if active then
	RoundsEachBurst = (RoundsEachBurst or 1) + 1
	RoundPeriod = 0.15
	RetriggerFireEffect = true
	ReloadTime = 1.7*ReloadTime
	Sprites[3].States["ReloadBPO"].Frames[10].duration = 6.6
end

FireStdDev = FireStdDev*2
FireStdDevAuto = FireStdDevAuto*2
