/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6ED02889
/// @DnDArgument : "code" "//type index$(13_10)typeIndex = ds_map_create()$(13_10)$(13_10)ds_map_add(typeIndex, "Lumen", 0)$(13_10)ds_map_add(typeIndex, "Nox", 1)$(13_10)ds_map_add(typeIndex, "Fire", 2)$(13_10)ds_map_add(typeIndex, "Glace", 3)$(13_10)ds_map_add(typeIndex, "Adamant", 4)$(13_10)ds_map_add(typeIndex, "Water", 5)$(13_10)ds_map_add(typeIndex, "Nature", 6)$(13_10)ds_map_add(typeIndex, "Zeal", 7)$(13_10)ds_map_add(typeIndex, "Lightning", 8)$(13_10)ds_map_add(typeIndex, "Air", 9)$(13_10)ds_map_add(typeIndex, "Chrono", 10)$(13_10)ds_map_add(typeIndex, "Space", 11)$(13_10)$(13_10)//fur species defense chart$(13_10)furFireList = [1,1,0.5,1,1,2]$(13_10)furGlaceList = [1,1,2,1,1,1]$(13_10)furWaterList = [1,1,1,1,1,0]$(13_10)furDefenseMultiplier = ds_map_create()$(13_10)$(13_10)ds_map_add(furDefenseMultiplier, "Fire", furFireList)$(13_10)ds_map_add(furDefenseMultiplier, "Glace", furGlaceList)$(13_10)ds_map_add(furDefenseMultiplier, "Water", furWaterList)$(13_10)$(13_10)//scale species defense chart$(13_10)scaleGlaceList = [0.5,0.5,1.5,1,1,0.5]$(13_10)scaleWaterList = [1,1,0.5,1,1,0]$(13_10)scaleLightningList = [0.5,1,0.5,1,1,0.5]$(13_10)scaleDefenseMultiplier = ds_map_create()$(13_10)$(13_10)ds_map_add(scaleDefenseMultiplier, "Glace", scaleGlaceList)$(13_10)ds_map_add(scaleDefenseMultiplier, "Water", scaleWaterList)$(13_10)ds_map_add(scaleDefenseMultiplier, "Lightning", scaleLightningList)$(13_10)$(13_10)//defense chart initialize$(13_10)defenseMultiplier = ds_map_create()$(13_10)$(13_10)ds_map_add(defenseMultiplier, "Fur", furDefenseMultiplier)$(13_10)ds_map_add(defenseMultiplier, "Scale", scaleDefenseMultiplier)"
//type index
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

//fur species defense chart
furFireList = [1,1,0.5,1,1,2]
furGlaceList = [1,1,2,1,1,1]
furWaterList = [1,1,1,1,1,0]
furDefenseMultiplier = ds_map_create()

ds_map_add(furDefenseMultiplier, "Fire", furFireList)
ds_map_add(furDefenseMultiplier, "Glace", furGlaceList)
ds_map_add(furDefenseMultiplier, "Water", furWaterList)

//scale species defense chart
scaleGlaceList = [0.5,0.5,1.5,1,1,0.5]
scaleWaterList = [1,1,0.5,1,1,0]
scaleLightningList = [0.5,1,0.5,1,1,0.5]
scaleDefenseMultiplier = ds_map_create()

ds_map_add(scaleDefenseMultiplier, "Glace", scaleGlaceList)
ds_map_add(scaleDefenseMultiplier, "Water", scaleWaterList)
ds_map_add(scaleDefenseMultiplier, "Lightning", scaleLightningList)

//defense chart initialize
defenseMultiplier = ds_map_create()

ds_map_add(defenseMultiplier, "Fur", furDefenseMultiplier)
ds_map_add(defenseMultiplier, "Scale", scaleDefenseMultiplier)