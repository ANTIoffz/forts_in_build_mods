local factory = FindDevice("factory")
if factory then
	factory.BuildTimeComplete = 120
end

local turbine = FindDevice("turbine")
if turbine then
	turbine.Upgrades["turbine2"].MetalCost = 100
end

local turbine2 = FindDevice("turbine2")
if turbine2 then
	turbine2.BuildTimeComplete = 15
	if turbine then
		turbine2.MetalCost = turbine.MetalCost + 100
	end
end

local mine = FindDevice("mine")
if mine then
	mine.Upgrades["mine2"].MetalCost = 75
end

local mine2 = FindDevice("mine2")
if mine2 and mine then
	mine2.MetalCost = mine.MetalCost + 75
end
