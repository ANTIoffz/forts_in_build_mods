dofile("scripts/forts.lua")

Faction = "BPO"
StringGroup = "Shockenaugh"

DescPassive =
{
	"ShieldsAbsorb",
	"GroupSize",
	"BarrelsEnabled",
	"GroupBuzzsaw",
	"CheapBatteries",
}

DescActive =
{
	"TurbinesDisabled",
	"Cannon20mmAsCannon",
	"FirebeamAsLaser",
}

CommanderActivationDuration = 10

GaugeDamageHitpoints = 3150
GaugeAttackHitpoints = 9000

function DisableDevice(id)
	if DeviceExists(id) then
		local pos = GetDeviceCentrePosition(id)
		SpawnEffect("effects/device_disabled.lua", pos)
		EMPDevice(id, CommanderActivationDuration)
		ScheduleCall(CommanderActivationDuration, ReenableDevice, id)
	end
end

function ReenableDevice(id)
	if DeviceExists(id) then
		local pos = GetDeviceCentrePosition(id)
		SpawnEffect("effects/device_enabled.lua", pos)
	end
end

function OnActivation(active)
	--Log("Shockenaugh OnActivation " .. tostring(active) .. ", " .. teamId)

	local enemySideId = 3 - teamId

	--Log("enemy " .. enemySideId)

	if active then
		-- discover turbines and their lateral range
		local minX = 10000000
		local maxX = -10000000
		local devices = {}
		local count = GetDeviceCountSide(enemySideId)
		for i=0,count do
			local id = GetDeviceIdSide(enemySideId, i)
			local deviceTeamId = GetDeviceTeamIdActual(id)
			local saveName = GetDeviceType(id)
			if saveName ~= "reactor" and GetDeviceProductionRate(deviceTeamId, saveName).energy > 0 and IsDeviceFullyBuilt(id) then
				local pos = GetDeviceCentrePosition(id)
				if pos.x < minX then
					minX = pos.x
				end
				if pos.x > maxX then
					maxX = pos.x
				end
				table.insert(devices, id)
			end
		end

		-- in small games most turbines will be disabled
		-- in large games half of the turbines will be disabled
		local minDevices = 6
		local maxDevices = 24
		local minProportion = 1
		local maxProportion = 0.5
		local count = #devices
		
		local proportion = minProportion
		if count > minDevices and count < maxDevices then
			local t = (count - minDevices)/(maxDevices - minDevices)
			proportion = minProportion + t*(maxProportion - minProportion)
		elseif count >= maxDevices then
			proportion = maxProportion
		end

		-- remove some of the devices to prevent being too suppressive in large games
		local newCount = math.floor(proportion*count)
		while newCount < count do
			local i = GetRandomInteger(1, #devices, "Shockenaugh select")
			table.remove(devices, i)
			newCount = newCount + 1
		end

		-- schedule the discovered turbines for disable in a wave
		local speed = 2000
		local startX = minX
		if teamId == 2 then
			startX = maxX
			speed = -speed
		end
		for k,id in ipairs(devices) do
			local pos = GetDeviceCentrePosition(id)
			local delay = (pos.x - startX)/speed
			ScheduleCall(delay, DisableDevice, id)
		end
	end
end
