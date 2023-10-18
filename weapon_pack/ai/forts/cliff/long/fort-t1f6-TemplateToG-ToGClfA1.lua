-- Fort recorded for AI replay
CREATE_NODE = 1
DESTROY_NODE = 2
CREATE_LINK = 3
DESTROY_LINK = 4
CREATE_DEVICE = 5
DESTROY_DEVICE = 6
FortTeam = 1; FortId = 6; FortPos = { x = -9000.000000, y = -4900.000000 }; RequiredMods = { "weapon_pack", };

Fort =
{
{ Type = CREATE_DEVICE, GroundPosition = { x = -9334.26, y = -4900.00 }, LinkT = 1.57, DeviceSaveName = "mine" },
{ Type = CREATE_DEVICE, GroundPosition = { x = -9461.86, y = -4900.00 }, LinkT = 1.57, DeviceSaveName = "mine" },
{ Type = CREATE_NODE, OriginalNodeAId = 366, PosA = { x = -8702.51, y = -4692.92 }, OriginalNodeBId = 10000, NewNodePos = { x = -8600.00, y = -4650.00 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10000, PosA = {x = -8599.91, y = -4650.15 }, OriginalNodeBId = 365, PosB = { x = -8601.01, y = -4791.65 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 356, PosA = { x = -8901.89, y = -4697.33 }, OriginalNodeBId = 10001, NewNodePos = { x = -8901.89, y = -4600.54 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 357, PosA = {x = -9000.00, y = -4700.00 }, OriginalNodeBId = 10001, PosB = { x = -8901.89, y = -4600.54 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 356, PosA = { x = -8901.89, y = -4697.33 }, OriginalNodeBId = 10002, NewNodePos = { x = -9000.00, y = -4600.54 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10001, PosA = {x = -8901.89, y = -4600.54 }, OriginalNodeBId = 10002, PosB = { x = -9000.00, y = -4600.54 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10001, PosA = { x = -8901.98, y = -4600.28 }, OriginalNodeBId = 10003, NewNodePos = { x = -8802.72, y = -4600.28 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10001, PosA = {x = -8901.98, y = -4600.28 }, OriginalNodeBId = 364, PosB = { x = -8802.72, y = -4694.64 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 364, PosA = {x = -8802.72, y = -4694.64 }, OriginalNodeBId = 10003, PosB = { x = -8802.72, y = -4600.28 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10003, PosA = { x = -8802.83, y = -4599.78 }, OriginalNodeBId = 10004, NewNodePos = { x = -8702.85, y = -4599.83 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10003, PosA = {x = -8802.83, y = -4599.78 }, OriginalNodeBId = 366, PosB = { x = -8702.86, y = -4691.98 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 366, PosA = {x = -8702.86, y = -4691.98 }, OriginalNodeBId = 10004, PosB = { x = -8702.85, y = -4599.83 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10004, PosA = {x = -8702.99, y = -4599.10 }, OriginalNodeBId = 10000, PosB = { x = -8600.54, y = -4648.25 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 363, PosA = { x = -8600.83, y = -4890.51 }, OriginalNodeBId = 10005, NewNodePos = { x = -8600.83, y = -5041.79 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 355, PosA = {x = -8700.61, y = -4892.32 }, OriginalNodeBId = 10005, PosB = { x = -8600.83, y = -5041.79 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 354, PosA = {x = -8700.53, y = -5041.79 }, OriginalNodeBId = 10005, PosB = { x = -8600.83, y = -5041.79 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 354, PosA = { x = -8700.44, y = -5041.17 }, OriginalNodeBId = 10006, NewNodePos = { x = -8700.44, y = -5183.56 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10005, PosA = { x = -8600.66, y = -5040.85 }, OriginalNodeBId = 10007, NewNodePos = { x = -8600.65, y = -5183.56 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10005, PosA = {x = -8600.66, y = -5040.85 }, OriginalNodeBId = 10006, PosB = { x = -8700.44, y = -5183.56 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10006, PosA = {x = -8700.44, y = -5183.56 }, OriginalNodeBId = 10007, PosB = { x = -8600.65, y = -5183.56 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10006, PosA = {x = -8701.00, y = -5182.03 }, OriginalNodeBId = 361, PosB = { x = -8799.39, y = -5143.35 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 361, PosA = { x = -8799.40, y = -5143.41 }, OriginalNodeBId = 10008, NewNodePos = { x = -8799.40, y = -5246.82 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 348, PosA = {x = -8899.29, y = -5147.59 }, OriginalNodeBId = 10008, PosB = { x = -8799.40, y = -5246.82 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 359, PosA = {x = -8898.23, y = -5246.82 }, OriginalNodeBId = 10008, PosB = { x = -8799.40, y = -5246.82 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10006, PosA = {x = -8701.11, y = -5181.93 }, OriginalNodeBId = 10008, PosB = { x = -8799.21, y = -5246.31 }, MaterialSaveName = "bracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10002, PosA = { x = -9000.00, y = -4600.54 }, OriginalNodeBId = 10001, PosB = { x = -8902.61, y = -4599.41 }, LinkT = 0.52, DeviceSaveName = "armoury" },
{ Type = CREATE_NODE, OriginalNodeAId = 359, PosA = { x = -8898.07, y = -5246.56 }, OriginalNodeBId = 10009, NewNodePos = { x = -8898.07, y = -5344.71 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 360, PosA = {x = -9000.00, y = -5250.00 }, OriginalNodeBId = 10009, PosB = { x = -8898.07, y = -5344.71 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 359, PosA = { x = -8898.07, y = -5246.56 }, OriginalNodeBId = 10010, NewNodePos = { x = -9000.00, y = -5344.71 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10009, PosA = {x = -8898.07, y = -5344.71 }, OriginalNodeBId = 10010, PosB = { x = -9000.00, y = -5344.71 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10008, PosA = { x = -8799.14, y = -5246.04 }, OriginalNodeBId = 10011, NewNodePos = { x = -8799.13, y = -5344.43 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10008, PosA = {x = -8799.14, y = -5246.04 }, OriginalNodeBId = 10009, PosB = { x = -8897.98, y = -5344.43 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10009, PosA = {x = -8897.98, y = -5344.43 }, OriginalNodeBId = 10011, PosB = { x = -8799.13, y = -5344.43 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10011, PosA = { x = -8799.04, y = -5343.96 }, OriginalNodeBId = 10012, NewNodePos = { x = -8703.58, y = -5343.35 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10012, PosA = {x = -8703.57, y = -5343.21 }, OriginalNodeBId = 10006, PosB = { x = -8701.06, y = -5181.36 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10012, PosA = {x = -8703.56, y = -5342.68 }, OriginalNodeBId = 10008, PosB = { x = -8799.07, y = -5245.52 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10007, PosA = { x = -8601.35, y = -5181.50 }, OriginalNodeBId = 10013, NewNodePos = { x = -8601.35, y = -5342.56 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10007, PosA = {x = -8601.35, y = -5181.50 }, OriginalNodeBId = 10012, PosB = { x = -8703.53, y = -5342.56 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10012, PosA = {x = -8703.53, y = -5342.56 }, OriginalNodeBId = 10013, PosB = { x = -8601.35, y = -5342.56 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 356, PosA = {x = -8902.27, y = -4696.36 }, OriginalNodeBId = 10003, PosB = { x = -8803.91, y = -4597.58 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 364, PosA = {x = -8803.45, y = -4692.31 }, OriginalNodeBId = 10004, PosB = { x = -8704.05, y = -4596.44 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 346, PosA = {x = -8899.59, y = -5047.60 }, OriginalNodeBId = 361, PosB = { x = -8799.63, y = -5141.83 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 352, PosA = {x = -8800.31, y = -5042.52 }, OriginalNodeBId = 10006, PosB = { x = -8701.15, y = -5179.98 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 354, PosA = {x = -8700.58, y = -5038.25 }, OriginalNodeBId = 10007, PosB = { x = -8601.38, y = -5179.94 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10013, PosA = {x = -8600.83, y = -5340.71 }, OriginalNodeBId = 10006, PosB = { x = -8701.14, y = -5179.76 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 365, PosA = {x = -8601.18, y = -4785.92 }, OriginalNodeBId = 10000, PosB = { x = -8601.57, y = -4644.25 }, MaterialSaveName = "door" },
{ Type = CREATE_NODE, OriginalNodeAId = 10011, PosA = { x = -8798.38, y = -5342.68 }, OriginalNodeBId = 10014, NewNodePos = { x = -8798.38, y = -5485.09 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10012, PosA = { x = -8702.74, y = -5340.78 }, OriginalNodeBId = 10015, NewNodePos = { x = -8702.74, y = -5485.09 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10012, PosA = {x = -8702.74, y = -5340.78 }, OriginalNodeBId = 10014, PosB = { x = -8798.38, y = -5485.09 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10014, PosA = {x = -8798.38, y = -5485.09 }, OriginalNodeBId = 10015, PosB = { x = -8702.74, y = -5485.09 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10009, PosA = { x = -8897.31, y = -5343.35 }, OriginalNodeBId = 10016, NewNodePos = { x = -8897.28, y = -5484.34 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10011, PosA = {x = -8798.33, y = -5341.61 }, OriginalNodeBId = 10016, PosB = { x = -8897.28, y = -5484.34 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10016, PosA = {x = -8897.28, y = -5484.34 }, OriginalNodeBId = 10014, PosB = { x = -8799.90, y = -5483.62 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10010, PosA = {x = -9000.00, y = -5344.71 }, OriginalNodeBId = 10016, PosB = { x = -8897.16, y = -5483.82 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10009, PosA = { x = -8897.19, y = -5343.03 }, OriginalNodeBId = 10017, NewNodePos = { x = -8999.99, y = -5483.86 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10016, PosA = {x = -8897.16, y = -5483.82 }, OriginalNodeBId = 10017, PosB = { x = -8999.99, y = -5483.86 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10015, PosA = {x = -8704.23, y = -5483.99 }, OriginalNodeBId = 10013, PosB = { x = -8600.34, y = -5339.27 }, MaterialSaveName = "bracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10011, PosA = { x = -8798.01, y = -5340.94 }, OriginalNodeBId = 10012, PosB = { x = -8702.41, y = -5339.56 }, LinkT = 0.69, DeviceSaveName = "flak" },
{ Type = CREATE_LINK, OriginalNodeAId = 10013, PosA = {x = -8600.07, y = -5338.66 }, OriginalNodeBId = 10015, PosB = { x = -8703.89, y = -5483.39 }, MaterialSaveName = "door" },
{ Type = CREATE_LINK, OriginalNodeAId = 363, PosA = {x = -8600.63, y = -4885.16 }, OriginalNodeBId = 354, PosB = { x = -8700.65, y = -5036.53 }, MaterialSaveName = "bracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 355, PosA = { x = -8700.61, y = -4888.03 }, OriginalNodeBId = 363, PosB = { x = -8600.55, y = -4885.29 }, LinkT = 0.45, DeviceSaveName = "rocketemp" },
{ Type = CREATE_LINK, OriginalNodeAId = 363, PosA = {x = -8600.55, y = -4885.15 }, OriginalNodeBId = 10005, PosB = { x = -8600.35, y = -5035.87 }, MaterialSaveName = "door" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10017, PosA = { x = -8999.66, y = -5483.14 }, OriginalNodeBId = 10016, PosB = { x = -8896.71, y = -5483.27 }, LinkT = 0.49, DeviceSaveName = "turbine" },
{ Type = CREATE_DEVICE, GroundPosition = { x = -9589.46, y = -4900.00 }, LinkT = 1.57, DeviceSaveName = "mine" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 345, PosA = { x = -9000.00, y = -5050.00 }, OriginalNodeBId = 346, PosB = { x = -8899.69, y = -5047.07 }, LinkT = 0.46, DeviceSaveName = "battery" },
{ Type = CREATE_NODE, OriginalNodeAId = 10000, PosA = { x = -8602.03, y = -4642.49 }, OriginalNodeBId = 10018, NewNodePos = { x = -8600.33, y = -4492.50 }, MaterialSaveName = "door" },
{ Type = CREATE_LINK, OriginalNodeAId = 10004, PosA = {x = -8705.13, y = -4594.35 }, OriginalNodeBId = 10018, PosB = { x = -8601.22, y = -4491.94 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10003, PosA = { x = -8805.07, y = -4595.92 }, OriginalNodeBId = 10019, NewNodePos = { x = -8805.00, y = -4492.38 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10004, PosA = { x = -8705.41, y = -4593.87 }, OriginalNodeBId = 10020, NewNodePos = { x = -8705.33, y = -4492.38 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10004, PosA = {x = -8705.41, y = -4593.87 }, OriginalNodeBId = 10019, PosB = { x = -8805.00, y = -4492.38 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10019, PosA = {x = -8805.00, y = -4492.38 }, OriginalNodeBId = 10020, PosB = { x = -8705.33, y = -4492.38 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10020, PosA = {x = -8705.31, y = -4491.78 }, OriginalNodeBId = 10018, PosB = { x = -8601.78, y = -4490.78 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10019, PosA = { x = -8805.13, y = -4491.73 }, OriginalNodeBId = 10021, NewNodePos = { x = -8903.67, y = -4491.75 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10019, PosA = {x = -8805.13, y = -4491.73 }, OriginalNodeBId = 10001, PosB = { x = -8903.69, y = -4598.03 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10001, PosA = {x = -8903.69, y = -4598.03 }, OriginalNodeBId = 10021, PosB = { x = -8903.67, y = -4491.75 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10021, PosA = {x = -8903.85, y = -4491.28 }, OriginalNodeBId = 10002, PosB = { x = -9000.00, y = -4600.54 }, MaterialSaveName = "bracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10020, PosA = { x = -8705.70, y = -4491.17 }, OriginalNodeBId = 10018, PosB = { x = -8602.18, y = -4490.12 }, LinkT = 0.23, DeviceSaveName = "flak" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 349, PosA = { x = -9000.00, y = -5150.00 }, OriginalNodeBId = 348, PosB = { x = -8899.33, y = -5146.02 }, LinkT = 0.50, DeviceSaveName = "munitions" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10016, PosA = { x = -8896.11, y = -5482.64 }, OriginalNodeBId = 10014, PosB = { x = -8798.63, y = -5481.67 }, LinkT = 0.44, DeviceSaveName = "turbine" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10014, PosA = { x = -8798.53, y = -5481.33 }, OriginalNodeBId = 10015, PosB = { x = -8702.91, y = -5481.68 }, LinkT = 0.51, DeviceSaveName = "turbine" },
{ Type = CREATE_NODE, OriginalNodeAId = 10016, PosA = { x = -8895.75, y = -5482.23 }, OriginalNodeBId = 10022, NewNodePos = { x = -8895.78, y = -5624.78 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10017, PosA = { x = -8998.82, y = -5482.29 }, OriginalNodeBId = 10023, NewNodePos = { x = -8998.86, y = -5624.78 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10017, PosA = {x = -8998.82, y = -5482.29 }, OriginalNodeBId = 10022, PosB = { x = -8895.78, y = -5624.78 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10022, PosA = {x = -8895.78, y = -5624.78 }, OriginalNodeBId = 10023, PosB = { x = -8998.86, y = -5624.78 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10014, PosA = { x = -8798.38, y = -5480.47 }, OriginalNodeBId = 10024, NewNodePos = { x = -8798.36, y = -5624.19 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10016, PosA = {x = -8895.80, y = -5481.76 }, OriginalNodeBId = 10024, PosB = { x = -8798.36, y = -5624.19 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10024, PosA = {x = -8798.36, y = -5624.19 }, OriginalNodeBId = 10022, PosB = { x = -8897.57, y = -5624.11 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10015, PosA = { x = -8703.02, y = -5480.75 }, OriginalNodeBId = 10025, NewNodePos = { x = -8703.07, y = -5623.66 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10015, PosA = {x = -8703.02, y = -5480.75 }, OriginalNodeBId = 10024, PosB = { x = -8798.04, y = -5623.67 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10024, PosA = {x = -8798.04, y = -5623.67 }, OriginalNodeBId = 10025, PosB = { x = -8703.07, y = -5623.66 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10022, PosA = {x = -8896.49, y = -5623.62 }, OriginalNodeBId = 10023, PosB = { x = -8999.57, y = -5623.06 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10022, PosA = {x = -8896.04, y = -5623.52 }, OriginalNodeBId = 10024, PosB = { x = -8796.85, y = -5622.92 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10024, PosA = {x = -8797.10, y = -5623.03 }, OriginalNodeBId = 10025, PosB = { x = -8702.14, y = -5622.61 }, MaterialSaveName = "bracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10023, PosA = { x = -8999.33, y = -5623.08 }, OriginalNodeBId = 10022, PosB = { x = -8896.25, y = -5623.56 }, LinkT = 0.48, DeviceSaveName = "turbine" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10022, PosA = { x = -8896.50, y = -5623.13 }, OriginalNodeBId = 10024, PosB = { x = -8797.27, y = -5622.87 }, LinkT = 0.44, DeviceSaveName = "turbine" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10024, PosA = { x = -8797.16, y = -5622.60 }, OriginalNodeBId = 10025, PosB = { x = -8702.19, y = -5622.31 }, LinkT = 0.53, DeviceSaveName = "sandbags" },
{ Type = CREATE_NODE, OriginalNodeAId = 10024, PosA = { x = -8796.64, y = -5622.25 }, OriginalNodeBId = 10026, NewNodePos = { x = -8796.66, y = -5676.81 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10025, PosA = { x = -8701.67, y = -5621.75 }, OriginalNodeBId = 10027, NewNodePos = { x = -8701.69, y = -5676.81 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10025, PosA = {x = -8701.67, y = -5621.75 }, OriginalNodeBId = 10026, PosB = { x = -8796.66, y = -5676.81 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10026, PosA = {x = -8796.66, y = -5676.81 }, OriginalNodeBId = 10027, PosB = { x = -8701.69, y = -5676.81 }, MaterialSaveName = "bracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10026, PosA = { x = -8796.16, y = -5676.20 }, OriginalNodeBId = 10027, PosB = { x = -8701.19, y = -5675.96 }, LinkT = 0.48, DeviceSaveName = "sandbags" },
{ Type = CREATE_LINK, OriginalNodeAId = 10025, PosA = {x = -8700.97, y = -5620.54 }, OriginalNodeBId = 10027, PosB = { x = -8700.84, y = -5675.39 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10024, PosA = {x = -8796.09, y = -5621.57 }, OriginalNodeBId = 10026, PosB = { x = -8796.03, y = -5675.84 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10009, PosA = {x = -8895.73, y = -5340.37 }, OriginalNodeBId = 10014, PosB = { x = -8797.70, y = -5478.42 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10015, PosA = {x = -8702.14, y = -5478.23 }, OriginalNodeBId = 10011, PosB = { x = -8796.39, y = -5337.20 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10025, PosA = {x = -8700.79, y = -5620.26 }, OriginalNodeBId = 10014, PosB = { x = -8797.51, y = -5478.10 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10014, PosA = {x = -8797.20, y = -5477.78 }, OriginalNodeBId = 10022, PosB = { x = -8894.26, y = -5621.97 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10016, PosA = {x = -8894.43, y = -5479.99 }, OriginalNodeBId = 10023, PosB = { x = -8997.44, y = -5621.89 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 346, PosA = { x = -8899.78, y = -5046.23 }, OriginalNodeBId = 352, PosB = { x = -8800.72, y = -5038.93 }, LinkT = 0.86, DeviceSaveName = "cannon20mm" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10001, PosA = { x = -8904.36, y = -4596.95 }, OriginalNodeBId = 10003, PosB = { x = -8806.19, y = -4593.82 }, LinkT = 0.99, DeviceSaveName = "rocketemp" },
{ Type = CREATE_LINK, OriginalNodeAId = 10005, PosA = {x = -8600.02, y = -5031.47 }, OriginalNodeBId = 10006, PosB = { x = -8699.66, y = -5173.97 }, MaterialSaveName = "door" },
{ Type = CREATE_LINK, OriginalNodeAId = 354, PosA = {x = -8700.74, y = -5032.73 }, OriginalNodeBId = 10007, PosB = { x = -8599.44, y = -5172.60 }, MaterialSaveName = "door" },
{ Type = CREATE_LINK, OriginalNodeAId = 10005, PosA = {x = -8600.02, y = -5031.02 }, OriginalNodeBId = 10007, PosB = { x = -8599.43, y = -5172.40 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 366, PosA = {x = -8704.95, y = -4683.33 }, OriginalNodeBId = 10000, PosB = { x = -8603.53, y = -4637.43 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 365, PosA = {x = -8601.24, y = -4779.45 }, OriginalNodeBId = 366, PosB = { x = -8704.95, y = -4683.33 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 362, PosA = {x = -8701.17, y = -4783.37 }, OriginalNodeBId = 366, PosB = { x = -8704.95, y = -4683.33 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 358, PosA = {x = -8800.72, y = -4788.94 }, OriginalNodeBId = 366, PosB = { x = -8704.95, y = -4683.33 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 362, PosA = {x = -8701.17, y = -4783.37 }, OriginalNodeBId = 10000, PosB = { x = -8603.53, y = -4637.43 }, MaterialSaveName = "door" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10010, PosA = { x = -9000.00, y = -5344.71 }, OriginalNodeBId = 10009, PosB = { x = -8895.35, y = -5339.57 }, LinkT = 0.98, DeviceSaveName = "upgrade" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10006, PosA = { x = -8699.51, y = -5173.17 }, OriginalNodeBId = 10007, PosB = { x = -8599.33, y = -5171.90 }, LinkT = 0.40, DeviceSaveName = "rocketemp" },
{ Type = CREATE_LINK, OriginalNodeAId = 10011, PosA = {x = -8795.75, y = -5335.70 }, OriginalNodeBId = 10006, PosB = { x = -8699.49, y = -5172.97 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10007, PosA = {x = -8599.27, y = -5171.53 }, OriginalNodeBId = 10013, PosB = { x = -8596.91, y = -5331.97 }, MaterialSaveName = "door" },
{ Type = CREATE_LINK, OriginalNodeAId = 362, PosA = {x = -8701.13, y = -4782.41 }, OriginalNodeBId = 355, PosB = { x = -8700.84, y = -4883.36 }, MaterialSaveName = "shield" },
{ Type = CREATE_LINK, OriginalNodeAId = 10006, PosA = {x = -8699.43, y = -5172.76 }, OriginalNodeBId = 10011, PosB = { x = -8795.67, y = -5335.49 }, MaterialSaveName = "armour" },
{ Type = CREATE_LINK, OriginalNodeAId = 10011, PosA = {x = -8795.61, y = -5335.28 }, OriginalNodeBId = 10014, PosB = { x = -8796.19, y = -5476.34 }, MaterialSaveName = "armour" },
{ Type = CREATE_LINK, OriginalNodeAId = 10021, PosA = {x = -8905.90, y = -4489.80 }, OriginalNodeBId = 10003, PosB = { x = -8806.76, y = -4592.84 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10003, PosA = {x = -8806.82, y = -4592.71 }, OriginalNodeBId = 10020, PosB = { x = -8708.01, y = -4487.69 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10020, PosA = {x = -8708.15, y = -4487.41 }, OriginalNodeBId = 10000, PosB = { x = -8603.97, y = -4635.83 }, MaterialSaveName = "backbracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10001, PosA = { x = -8904.88, y = -4596.24 }, OriginalNodeBId = 10003, PosB = { x = -8806.96, y = -4592.39 }, LinkT = 0.99, DeviceSaveName = "rocket" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10020, PosA = { x = -8708.32, y = -4487.12 }, OriginalNodeBId = 10018, PosB = { x = -8604.87, y = -4485.28 }, LinkT = 0.23, DeviceSaveName = "shotgun" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10006, PosA = { x = -8699.33, y = -5172.18 }, OriginalNodeBId = 10007, PosB = { x = -8599.12, y = -5170.73 }, LinkT = 0.40, DeviceSaveName = "rocket" },
{ Type = CREATE_NODE, OriginalNodeAId = 10018, PosA = { x = -8604.87, y = -4485.28 }, OriginalNodeBId = 10028, NewNodePos = { x = -8604.87, y = -4379.26 }, MaterialSaveName = "bracing" },
{ Type = CREATE_NODE, OriginalNodeAId = 10020, PosA = { x = -8708.32, y = -4487.12 }, OriginalNodeBId = 10029, NewNodePos = { x = -8708.32, y = -4379.26 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10020, PosA = {x = -8708.32, y = -4487.12 }, OriginalNodeBId = 10028, PosB = { x = -8604.87, y = -4379.26 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10028, PosA = {x = -8604.87, y = -4379.26 }, OriginalNodeBId = 10029, PosB = { x = -8708.32, y = -4379.26 }, MaterialSaveName = "bracing" },
{ Type = CREATE_LINK, OriginalNodeAId = 10029, PosA = {x = -8708.86, y = -4378.52 }, OriginalNodeBId = 10019, PosB = { x = -8808.15, y = -4488.17 }, MaterialSaveName = "bracing" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10029, PosA = { x = -8709.15, y = -4378.18 }, OriginalNodeBId = 10028, PosB = { x = -8605.69, y = -4378.05 }, LinkT = 0.44, DeviceSaveName = "machinegun" },
{ Type = CREATE_LINK, OriginalNodeAId = 10018, PosA = {x = -8606.03, y = -4483.28 }, OriginalNodeBId = 10028, PosB = { x = -8606.69, y = -4376.94 }, MaterialSaveName = "door" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10017, PosA = { x = -8996.34, y = -5478.89 }, OriginalNodeBId = 10016, PosB = { x = -8892.75, y = -5478.53 }, LinkT = 0.49, DeviceSaveName = "turbine2" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10016, PosA = { x = -8892.70, y = -5478.47 }, OriginalNodeBId = 10014, PosB = { x = -8795.52, y = -5475.62 }, LinkT = 0.44, DeviceSaveName = "turbine2" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 355, PosA = { x = -8701.00, y = -4882.35 }, OriginalNodeBId = 363, PosB = { x = -8600.91, y = -4877.92 }, LinkT = 0.45, DeviceSaveName = "rocket" },
{ Type = CREATE_DEVICE, OriginalNodeAId = 10014, PosA = { x = -8795.50, y = -5475.58 }, OriginalNodeBId = 10015, PosB = { x = -8700.01, y = -5474.79 }, LinkT = 0.51, DeviceSaveName = "turbine2" },
}