multiplier = 0.5
KickbackMean = multiplier*KickbackMean
KickbackStdDev = multiplier*KickbackStdDev

if active then
	-- takes the same amount of total time to fit the effect, just shoots faster
	RoundPeriod = 0.093
	RoundsEachBurst = 9

	HeatPeriod = 1.9
end
