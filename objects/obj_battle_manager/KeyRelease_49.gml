/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30D4D534
/// @DnDArgument : "code" "//execute state change on attack$(13_10)$(13_10)if (currentState == BATTLE_PLAYER_TURN)$(13_10){$(13_10)	p1AbilityUsed = obj_red.redMoves[0]$(13_10)	p1AbilityType = obj_red.redMovesType[0]$(13_10)	$(13_10)	getMoveSet = ds_map_find_value(obj_data.moveMap, p1AbilityType)$(13_10)	getMoveList = ds_map_find_value(getMoveSet, p1AbilityUsed)$(13_10)	$(13_10)	baseDamage = getMoveList[0]$(13_10)	p1AbilityPierce = getMoveList[6]$(13_10)	$(13_10)	redLvl = obj_red.redLevel$(13_10)	redSpecies = obj_red.redRace$(13_10)	$(13_10)	specIndex = ds_map_find_value(obj_data.speciesIndex, redSpecies)$(13_10)	attackList = ds_map_find_value(obj_data.attackMultiplier, p1AbilityType)$(13_10)	$(13_10)	attMult = attackList[specIndex]$(13_10)	show_debug_message("Att Mult Value: " + string(attMult))$(13_10)	$(13_10)	blueSpecies = obj_blue.blueRace$(13_10)	blueType = obj_blue.blueAffinity$(13_10)	$(13_10)	typeMap = ds_map_find_value(obj_data.defenseMultiplier,blueSpecies)$(13_10)	typeList = ds_map_find_value(typeMap, blueType)$(13_10)	offTypeIndex = ds_map_find_value(obj_data.typeIndex, p1AbilityType)$(13_10)	$(13_10)	defMult = typeList[offTypeIndex]$(13_10)	show_debug_message("Def Mult Value: " + string(defMult))$(13_10)	show_debug_message("Off Type Index Value: " + string(offTypeIndex))$(13_10)	show_debug_message("Base Damage Value: " + string(baseDamage))$(13_10)	$(13_10)	p1DamageDeal = baseDamage*attMult*defMult*(redLvl/4)$(13_10)	show_debug_message("Damage Deal Value: " + string(p1DamageDeal))$(13_10)	$(13_10)	if (p2PierceCount >= 10)$(13_10)	{$(13_10)		prob = irandom(100)$(13_10)		if (prob > 60)$(13_10)		{$(13_10)			p1Crit = true$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (p1Crit = true)$(13_10)	{$(13_10)		p1DamageDeal *= 1.5$(13_10)		show_debug_message("Critical Damage Value: " + string(p1DamageDeal))$(13_10)	}$(13_10)	$(13_10)	if (getMoveList[1] == true)$(13_10)	{$(13_10)		if (p2StatusEffect != ds_map_find_value(obj_data.dealEffectMap, getMoveList[2]))$(13_10)		{$(13_10)			p1StatusDeal = getMoveList[1]$(13_10)			p1StatusType = getMoveList[2]$(13_10)			p1StatusOperator = getMoveList[3]$(13_10)			p1StatusInt = getMoveList[4]$(13_10)			p1StatusTarget = getMoveList[5]$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	p1Acc = irandom(p2)$(13_10)	show_debug_message("P1 Acc Value: " + string(p1Acc))$(13_10)	$(13_10)	if (defMult >= 2)$(13_10)	{$(13_10)		p1SE = true$(13_10)	}$(13_10)	$(13_10)	currentState = BATTLE_CHECK_STATE$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)$(13_10)else if (currentState == BATTLE_ENEMY_TURN)$(13_10){$(13_10)	p2AbilityUsed = obj_blue.blueMoves[0]$(13_10)	p2AbilityType = obj_blue.blueMovesType[0]$(13_10)	$(13_10)	getMoveSet = ds_map_find_value(obj_data.moveMap, p2AbilityType)$(13_10)	getMoveList = ds_map_find_value(getMoveSet, p2AbilityUsed)$(13_10)	$(13_10)	baseDamage = getMoveList[0]	$(13_10)	p2AbilityPierce = getMoveList[6]$(13_10)	$(13_10)	blueLvl = obj_blue.blueLevel$(13_10)	blueSpecies = obj_blue.blueRace$(13_10)	$(13_10)	specIndex = ds_map_find_value(obj_data.speciesIndex, blueSpecies)$(13_10)	attackList = ds_map_find_value(obj_data.attackMultiplier, p2AbilityType)$(13_10)	$(13_10)	attMult = attackList[specIndex]$(13_10)	show_debug_message("Att Mult Value: " + string(attMult))$(13_10)	$(13_10)	redSpecies = obj_red.redRace$(13_10)	redType = obj_red.redAffinity$(13_10)	$(13_10)	typeMap = ds_map_find_value(obj_data.defenseMultiplier,redSpecies)$(13_10)	typeList = ds_map_find_value(typeMap, redType)$(13_10)	offTypeIndex = ds_map_find_value(obj_data.typeIndex, p2AbilityType)$(13_10)	$(13_10)	defMult = typeList[offTypeIndex]$(13_10)	show_debug_message("Def Mult Value: " + string(defMult))$(13_10)	show_debug_message("Off Type Index Value: " + string(offTypeIndex))$(13_10)	show_debug_message("Base Damage Value: " + string(baseDamage))$(13_10)	$(13_10)	p2DamageDeal = baseDamage*attMult*defMult*(blueLvl/4)$(13_10)	show_debug_message("Damage Deal Value: " + string(p2DamageDeal))$(13_10)	$(13_10)	if (p1PierceCount >= 10)$(13_10)	{$(13_10)		prob = irandom(100)$(13_10)		if (prob > 60)$(13_10)		{$(13_10)			p2Crit = true$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (p2Crit = true)$(13_10)	{$(13_10)		p2DamageDeal *= 1.5$(13_10)		show_debug_message("Critical Damage Value: " + string(p2DamageDeal))$(13_10)	}$(13_10)	$(13_10)	if (getMoveList[1] == true)$(13_10)	{$(13_10)		if (p1StatusEffect != ds_map_find_value(obj_data.dealEffectMap, getMoveList[2]))$(13_10)		{$(13_10)			p2StatusDeal = getMoveList[1]$(13_10)			p2StatusType = getMoveList[2]$(13_10)			p2StatusOperator = getMoveList[3]$(13_10)			p2StatusInt = getMoveList[4]$(13_10)			p2StatusTarget = getMoveList[5]$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	p2Acc = irandom(p1)$(13_10)	show_debug_message("P2 Acc Value: " + string(p2Acc))$(13_10)	$(13_10)	if (defMult >= 2)$(13_10)	{$(13_10)		p2SE = true$(13_10)	}$(13_10)	$(13_10)	currentState = BATTLE_CHECK_STATE$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}"
//execute state change on attack

if (currentState == BATTLE_PLAYER_TURN)
{
	p1AbilityUsed = obj_red.redMoves[0]
	p1AbilityType = obj_red.redMovesType[0]
	
	getMoveSet = ds_map_find_value(obj_data.moveMap, p1AbilityType)
	getMoveList = ds_map_find_value(getMoveSet, p1AbilityUsed)
	
	baseDamage = getMoveList[0]
	p1AbilityPierce = getMoveList[6]
	
	redLvl = obj_red.redLevel
	redSpecies = obj_red.redRace
	
	specIndex = ds_map_find_value(obj_data.speciesIndex, redSpecies)
	attackList = ds_map_find_value(obj_data.attackMultiplier, p1AbilityType)
	
	attMult = attackList[specIndex]
	show_debug_message("Att Mult Value: " + string(attMult))
	
	blueSpecies = obj_blue.blueRace
	blueType = obj_blue.blueAffinity
	
	typeMap = ds_map_find_value(obj_data.defenseMultiplier,blueSpecies)
	typeList = ds_map_find_value(typeMap, blueType)
	offTypeIndex = ds_map_find_value(obj_data.typeIndex, p1AbilityType)
	
	defMult = typeList[offTypeIndex]
	show_debug_message("Def Mult Value: " + string(defMult))
	show_debug_message("Off Type Index Value: " + string(offTypeIndex))
	show_debug_message("Base Damage Value: " + string(baseDamage))
	
	p1DamageDeal = baseDamage*attMult*defMult*(redLvl/4)
	show_debug_message("Damage Deal Value: " + string(p1DamageDeal))
	
	if (p2PierceCount >= 10)
	{
		prob = irandom(100)
		if (prob > 60)
		{
			p1Crit = true
		}
	}
	
	if (p1Crit = true)
	{
		p1DamageDeal *= 1.5
		show_debug_message("Critical Damage Value: " + string(p1DamageDeal))
	}
	
	if (getMoveList[1] == true)
	{
		if (p2StatusEffect != ds_map_find_value(obj_data.dealEffectMap, getMoveList[2]))
		{
			p1StatusDeal = getMoveList[1]
			p1StatusType = getMoveList[2]
			p1StatusOperator = getMoveList[3]
			p1StatusInt = getMoveList[4]
			p1StatusTarget = getMoveList[5]
		}
	}
	
	p1Acc = irandom(p2)
	show_debug_message("P1 Acc Value: " + string(p1Acc))
	
	if (defMult >= 2)
	{
		p1SE = true
	}
	
	currentState = BATTLE_CHECK_STATE
	ds_queue_dequeue(battleQueue)
}

else if (currentState == BATTLE_ENEMY_TURN)
{
	p2AbilityUsed = obj_blue.blueMoves[0]
	p2AbilityType = obj_blue.blueMovesType[0]
	
	getMoveSet = ds_map_find_value(obj_data.moveMap, p2AbilityType)
	getMoveList = ds_map_find_value(getMoveSet, p2AbilityUsed)
	
	baseDamage = getMoveList[0]	
	p2AbilityPierce = getMoveList[6]
	
	blueLvl = obj_blue.blueLevel
	blueSpecies = obj_blue.blueRace
	
	specIndex = ds_map_find_value(obj_data.speciesIndex, blueSpecies)
	attackList = ds_map_find_value(obj_data.attackMultiplier, p2AbilityType)
	
	attMult = attackList[specIndex]
	show_debug_message("Att Mult Value: " + string(attMult))
	
	redSpecies = obj_red.redRace
	redType = obj_red.redAffinity
	
	typeMap = ds_map_find_value(obj_data.defenseMultiplier,redSpecies)
	typeList = ds_map_find_value(typeMap, redType)
	offTypeIndex = ds_map_find_value(obj_data.typeIndex, p2AbilityType)
	
	defMult = typeList[offTypeIndex]
	show_debug_message("Def Mult Value: " + string(defMult))
	show_debug_message("Off Type Index Value: " + string(offTypeIndex))
	show_debug_message("Base Damage Value: " + string(baseDamage))
	
	p2DamageDeal = baseDamage*attMult*defMult*(blueLvl/4)
	show_debug_message("Damage Deal Value: " + string(p2DamageDeal))
	
	if (p1PierceCount >= 10)
	{
		prob = irandom(100)
		if (prob > 60)
		{
			p2Crit = true
		}
	}
	
	if (p2Crit = true)
	{
		p2DamageDeal *= 1.5
		show_debug_message("Critical Damage Value: " + string(p2DamageDeal))
	}
	
	if (getMoveList[1] == true)
	{
		if (p1StatusEffect != ds_map_find_value(obj_data.dealEffectMap, getMoveList[2]))
		{
			p2StatusDeal = getMoveList[1]
			p2StatusType = getMoveList[2]
			p2StatusOperator = getMoveList[3]
			p2StatusInt = getMoveList[4]
			p2StatusTarget = getMoveList[5]
		}
	}
	
	p2Acc = irandom(p1)
	show_debug_message("P2 Acc Value: " + string(p2Acc))
	
	if (defMult >= 2)
	{
		p2SE = true
	}
	
	currentState = BATTLE_CHECK_STATE
	ds_queue_dequeue(battleQueue)
}