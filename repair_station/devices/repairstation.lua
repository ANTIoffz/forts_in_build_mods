ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 40.0
HitPoints = 60
EnergyProductionRate = -10
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 0
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
DisruptClearRadius = 500
DisruptClearRate = 26
RepairFieldRadius = 270
RepairFieldPeriod = 1
RepairEffect = path .. "/effects/repairfieldrepair.lua"
ActivateEffect = path .. "/effects/repairfieldactivate.lua"
DeactivateEffect = path .. "/effects/repairfielddeactivate.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sign_anim",

		States =
		{
			Normal =
			{
				Frames = { texture = path.. "/devices/repairstation/ExtinguisherArm_00000.dds" },
			},
			
			Activate =
			{
				Frames = { texture = path.. "/devices/repairstation/ExtinguisherArm_00000.dds" },
				NextState = "Active",
			},
			
			Active =
			{
				Frames =
				{
					{ texture = path.. "/devices/repairstation/RepairStationSign_00000.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00001.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00002.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00003.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00004.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00005.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00006.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00007.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00008.dds" },
					{ texture = path.. "/devices/repairstation/RepairStationSign_00009.dds" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			
			Deactivate =
			{
				Frames = { texture = path.. "/devices/repairstation/ExtinguisherArm_00000.dds" },
				NextState = "Normal",
			},
			
		},
	},
	{
		Name = "repair_anim",

		States =
		{
			Normal = { Frames = { { texture = path.. "/devices/repairstation/RepairArm_00000.dds" }, mipmap = true, }, },
			Activate =
			{
				Frames =
				{
					{ texture = path.. "/devices/repairstation/RepairArm_00000.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00001.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00002.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00003.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00004.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00005.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00006.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00007.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00008.dds" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			
			Active =
			{
				Frames =
				{
					{ texture = path.. "/devices/repairstation/RepairArm_00010.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00011.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00012.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00013.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00014.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00015.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00016.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00017.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00018.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00019.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00020.dds" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			
			Deactivate =
			{
				Frames =
				{
					{ texture = path.. "/devices/repairstation/RepairArm_00032.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00033.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00034.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00035.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00036.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00037.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00038.dds" },
					{ texture = path.. "/devices/repairstation/RepairArm_00039.dds" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "extinguisher_anim",
		States =
		{
			Normal = { Frames = { { texture = path.. "/devices/repairstation/ExtinguisherArm_00000.dds" }, mipmap = true, }, },
			Activate =
			{
				Frames =
				{
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00000" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00001" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00002" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00003" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00005" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00006" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00007" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00008" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			Active = { Frames = { { texture = path.. "/devices/repairstation/ExtinguisherArm_00009.dds" }, mipmap = true, }, },
			Deactivate =
			{
				Frames =
				{
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00072" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00073" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00074" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00075" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00076" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00077" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00078" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00079" },
					{ texture = path.. "/devices/repairstation/ExtinguisherArm_00080" },					

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "repairstation-base",
		States =
		{
			Normal = { Frames = { { texture = path.. "/devices/repairstation/active.dds" }, mipmap = true, }, },
			Activate = { Frames = { { texture = path.. "/devices/repairstation/active.dds" }, duration = 0.5, mipmap = true, }, NextState = "Active", },
			Active = { Frames = { { texture = path.. "/devices/repairstation/active.dds" }, mipmap = true, }, },
			Deactivate = { Frames = { { texture = path.. "/devices/repairstation/active.dds" }, duration = 0.5, mipmap = true, }, NextState = "Normal", },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Idle",
		EffectPath = path .. "/effects/repairfieldidle.lua",
		Automatic = false,
	},
	{
		NodeName = "Active",
		EffectPath = path .. "/effects/repairfieldactive.lua",
		Automatic = false,
	},
	{
		NodeName = "Extinguish",
		EffectPath = path .. "/effects/repairfieldextinguish.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "RepairStation",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "repairstation-base",
	
	ChildrenInFront =
	{
		{
			Name = "sign",
			Angle = 0,
			Pivot = { -0.01, -0.15 },
			PivotOffset = { 0, 0 },
			Sprite = "sign_anim",
			UserData = 40,
		},
		{
			Name = "Idle",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Active",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Extinguish",
			Angle = 0,
			Pivot = { 0.6, 0 },
			PivotOffset = { 0, 0 },
		},
	},
	
	ChildrenBehind =
	{
		{
			Name = "repair_arm",
			Angle = 0,
			Pivot = { -0.45, 0 },
			PivotOffset = { 0, 0 },
			Sprite = "repair_anim",
			UserData = 60,
		},
		{
			Name = "extinguisher_arm",
			Angle = 0,
			Pivot = { 0.48, 0.02 },
			PivotOffset = { 0, 0 },
			Sprite = "extinguisher_anim",
			UserData = 80,
		},
	},
}