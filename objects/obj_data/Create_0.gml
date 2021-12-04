/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6ED02889
/// @DnDArgument : "code" "//damage - 0$(13_10)//statusDeal - 1$(13_10)//statusType - 2$(13_10)//statusOperator - 3$(13_10)//statusInt - 4$(13_10)//statusTarget - 5$(13_10)$(13_10)//MOVES INITIALIZATION$(13_10)//$(13_10)//fire moves$(13_10)burnBiteList = [5, true, "BURN", undefined, undefined, "ENEMY"]$(13_10)flameTackleList = [10, false, undefined, undefined, undefined, undefined]$(13_10)$(13_10)fireMoveMap = ds_map_create()$(13_10)$(13_10)ds_map_add(fireMoveMap, "Burn Bite", burnBiteList)$(13_10)ds_map_add(fireMoveMap, "Flame Tackle", flameTackleList)$(13_10)$(13_10)//water moves$(13_10)waterWhipList = [6, true, "SPEED", "MINUS", 2, "ENEMY"]$(13_10)hydroBashList = [7.5, false, undefined, undefined, undefined, undefined]$(13_10)$(13_10)waterMoveMap = ds_map_create()$(13_10)$(13_10)ds_map_add(waterMoveMap, "Water Whip", waterWhipList)$(13_10)ds_map_add(waterMoveMap, "Hydro Bash", hydroBashList)$(13_10)$(13_10)//move chart$(13_10)moveMap = ds_map_create()$(13_10)$(13_10)ds_map_add(moveMap, "Fire", fireMoveMap)$(13_10)ds_map_add(moveMap, "Water", waterMoveMap)$(13_10)//////$(13_10)$(13_10)//STATUS DEAL TO EFFECT MAPPING$(13_10)//$(13_10)dealEffectMap = ds_map_create()$(13_10)$(13_10)ds_map_add(dealEffectMap, "BURN", "BURNT")$(13_10)//////$(13_10)$(13_10)//TYPE INDEX$(13_10)//$(13_10)typeIndex = ds_map_create()$(13_10)ds_map_add(typeIndex, "Lumen", 0)$(13_10)ds_map_add(typeIndex, "Nox", 1)$(13_10)ds_map_add(typeIndex, "Fire", 2)$(13_10)ds_map_add(typeIndex, "Glace", 3)$(13_10)ds_map_add(typeIndex, "Adamant", 4)$(13_10)ds_map_add(typeIndex, "Water", 5)$(13_10)ds_map_add(typeIndex, "Nature", 6)$(13_10)ds_map_add(typeIndex, "Zeal", 7)$(13_10)ds_map_add(typeIndex, "Lightning", 8)$(13_10)ds_map_add(typeIndex, "Air", 9)$(13_10)ds_map_add(typeIndex, "Chrono", 10)$(13_10)ds_map_add(typeIndex, "Space", 11)$(13_10)//////$(13_10)$(13_10)//DEFENSE MULTIPLIERS$(13_10)//$(13_10)//fur species defense chart$(13_10)furFireDefense = [1,1,0.5,1,1,2]$(13_10)furGlaceDefense = [1,1,2,1,1,1]$(13_10)furWaterDefense = [1,1,1,1,1,0]$(13_10)furDefenseMultiplier = ds_map_create()$(13_10)$(13_10)ds_map_add(furDefenseMultiplier, "Fire", furFireDefense)$(13_10)ds_map_add(furDefenseMultiplier, "Glace", furGlaceDefense)$(13_10)ds_map_add(furDefenseMultiplier, "Water", furWaterDefense)$(13_10)$(13_10)//scale species defense chart$(13_10)scaleGlaceDefense = [0.5,0.5,1.5,1,1,0.5]$(13_10)scaleWaterDefense = [1,1,0.5,1,1,0]$(13_10)scaleLightningDefense = [0.5,1,0.5,1,1,0.5]$(13_10)scaleDefenseMultiplier = ds_map_create()$(13_10)$(13_10)ds_map_add(scaleDefenseMultiplier, "Glace", scaleGlaceDefense)$(13_10)ds_map_add(scaleDefenseMultiplier, "Water", scaleWaterDefense)$(13_10)ds_map_add(scaleDefenseMultiplier, "Lightning", scaleLightningDefense)$(13_10)$(13_10)//defense chart initialize$(13_10)defenseMultiplier = ds_map_create()$(13_10)ds_map_add(defenseMultiplier, "Fur", furDefenseMultiplier)$(13_10)ds_map_add(defenseMultiplier, "Scale", scaleDefenseMultiplier)$(13_10)//////"
//damage - 0
//statusDeal - 1
//statusType - 2
//statusOperator - 3
//statusInt - 4
//statusTarget - 5

//MOVES INITIALIZATION
//
//fire moves
burnBiteList = [5, true, "BURN", undefined, undefined, "ENEMY"]
flameTackleList = [10, false, undefined, undefined, undefined, undefined]

fireMoveMap = ds_map_create()

ds_map_add(fireMoveMap, "Burn Bite", burnBiteList)
ds_map_add(fireMoveMap, "Flame Tackle", flameTackleList)

//water moves
waterWhipList = [6, true, "SPEED", "MINUS", 2, "ENEMY"]
hydroBashList = [7.5, false, undefined, undefined, undefined, undefined]

waterMoveMap = ds_map_create()

ds_map_add(waterMoveMap, "Water Whip", waterWhipList)
ds_map_add(waterMoveMap, "Hydro Bash", hydroBashList)

//move chart
moveMap = ds_map_create()

ds_map_add(moveMap, "Fire", fireMoveMap)
ds_map_add(moveMap, "Water", waterMoveMap)
//////

//STATUS DEAL TO EFFECT MAPPING
//
dealEffectMap = ds_map_create()

ds_map_add(dealEffectMap, "BURN", "BURNT")
//////

//TYPE INDEX
//
typeIndex = ds_map_create()
ds_map_add(typeIndex, "Lumen", 0)
ds_map_add(typeIndex, "Nox", 1)
ds_map_add(typeIndex, "Fire", 2)
ds_map_add(typeIndex, "Glace", 3)
ds_map_add(typeIndex, "Adamant", 4)
ds_map_add(typeIndex, "Water", 5)
ds_map_add(typeIndex, "Nature", 6)
ds_map_add(typeIndex, "Zeal", 7)
ds_map_add(typeIndex, "Lightning", 8)
ds_map_add(typeIndex, "Air", 9)
ds_map_add(typeIndex, "Chrono", 10)
ds_map_add(typeIndex, "Space", 11)
//////

//DEFENSE MULTIPLIERS
//
//fur species defense chart
furFireDefense = [1,1,0.5,1,1,2]
furGlaceDefense = [1,1,2,1,1,1]
furWaterDefense = [1,1,1,1,1,0]
furDefenseMultiplier = ds_map_create()

ds_map_add(furDefenseMultiplier, "Fire", furFireDefense)
ds_map_add(furDefenseMultiplier, "Glace", furGlaceDefense)
ds_map_add(furDefenseMultiplier, "Water", furWaterDefense)

//scale species defense chart
scaleGlaceDefense = [0.5,0.5,1.5,1,1,0.5]
scaleWaterDefense = [1,1,0.5,1,1,0]
scaleLightningDefense = [0.5,1,0.5,1,1,0.5]
scaleDefenseMultiplier = ds_map_create()

ds_map_add(scaleDefenseMultiplier, "Glace", scaleGlaceDefense)
ds_map_add(scaleDefenseMultiplier, "Water", scaleWaterDefense)
ds_map_add(scaleDefenseMultiplier, "Lightning", scaleLightningDefense)

//defense chart initialize
defenseMultiplier = ds_map_create()
ds_map_add(defenseMultiplier, "Fur", furDefenseMultiplier)
ds_map_add(defenseMultiplier, "Scale", scaleDefenseMultiplier)
//////