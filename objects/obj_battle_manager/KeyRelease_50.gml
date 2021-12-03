/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53A9F7D3
/// @DnDArgument : "code" "//execute state change on attack$(13_10)$(13_10)if (currentState == BATTLE_PLAYER_TURN)$(13_10){$(13_10)	p1AbilityUsed = obj_red.redMoves[1]$(13_10)	$(13_10)	redType = obj_red.redAffinity$(13_10)	blueSpecies = obj_blue.blueRace$(13_10)	blueType = obj_blue.blueAffinity$(13_10)	$(13_10)	typeMap = ds_map_find_value(obj_data.defenseMultiplier,blueSpecies)$(13_10)	typeList = ds_map_find_value(typeMap, blueType)$(13_10)	offTypeIndex = ds_map_find_value(obj_data.typeIndex, redType)$(13_10)	$(13_10)	defMult = typeList[offTypeIndex]$(13_10)	show_debug_message("Def Mult Value: " + string(defMult))$(13_10)	show_debug_message("Off Type Index Value: " + string(offTypeIndex))$(13_10)$(13_10)	p1DamageDeal = 10*defMult$(13_10)	$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)$(13_10)else if (currentState == BATTLE_ENEMY_TURN)$(13_10){$(13_10)	p2AbilityUsed = obj_blue.blueMoves[1]$(13_10)	$(13_10)	blueType = obj_blue.blueAffinity$(13_10)	redSpecies = obj_red.redRace$(13_10)	redType = obj_red.redAffinity$(13_10)	$(13_10)	typeMap = ds_map_find_value(obj_data.defenseMultiplier,redSpecies)$(13_10)	typeList = ds_map_find_value(typeMap, redType)$(13_10)	offTypeIndex = ds_map_find_value(obj_data.typeIndex, blueType)$(13_10)	$(13_10)	defMult = typeList[offTypeIndex]$(13_10)	show_debug_message("Def Mult Value: " + string(defMult))$(13_10)	show_debug_message("Off Type Index Value: " + string(offTypeIndex))$(13_10)	$(13_10)	p2DamageDeal = 7.5*defMult$(13_10)	$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}"
//execute state change on attack

if (currentState == BATTLE_PLAYER_TURN)
{
	p1AbilityUsed = obj_red.redMoves[1]
	
	redType = obj_red.redAffinity
	blueSpecies = obj_blue.blueRace
	blueType = obj_blue.blueAffinity
	
	typeMap = ds_map_find_value(obj_data.defenseMultiplier,blueSpecies)
	typeList = ds_map_find_value(typeMap, blueType)
	offTypeIndex = ds_map_find_value(obj_data.typeIndex, redType)
	
	defMult = typeList[offTypeIndex]
	show_debug_message("Def Mult Value: " + string(defMult))
	show_debug_message("Off Type Index Value: " + string(offTypeIndex))

	p1DamageDeal = 10*defMult
	
	ds_queue_dequeue(battleQueue)
}

else if (currentState == BATTLE_ENEMY_TURN)
{
	p2AbilityUsed = obj_blue.blueMoves[1]
	
	blueType = obj_blue.blueAffinity
	redSpecies = obj_red.redRace
	redType = obj_red.redAffinity
	
	typeMap = ds_map_find_value(obj_data.defenseMultiplier,redSpecies)
	typeList = ds_map_find_value(typeMap, redType)
	offTypeIndex = ds_map_find_value(obj_data.typeIndex, blueType)
	
	defMult = typeList[offTypeIndex]
	show_debug_message("Def Mult Value: " + string(defMult))
	show_debug_message("Off Type Index Value: " + string(offTypeIndex))
	
	p2DamageDeal = 7.5*defMult
	
	ds_queue_dequeue(battleQueue)
}