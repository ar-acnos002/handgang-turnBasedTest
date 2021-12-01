/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30D4D534
/// @DnDArgument : "code" "//execute state change on attack$(13_10)$(13_10)if (currentState == BATTLE_PLAYER_TURN)$(13_10){$(13_10)	p1AbilityUsed = obj_red.redMoves[0]$(13_10)$(13_10)	p1DamageDeal = 7*1.5$(13_10)	$(13_10)	battleMessage = "Red used " + p1AbilityUsed$(13_10)	$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)$(13_10)else if (currentState == BATTLE_ENEMY_TURN)$(13_10){$(13_10)	p2AbilityUsed = obj_blue.blueMoves[0]$(13_10)	$(13_10)	p2DamageDeal = 6*2$(13_10)	$(13_10)	p2StatusDeal = true$(13_10)	$(13_10)	battleMessage = "Blue used " + p2AbilityUsed$(13_10)	$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}"
//execute state change on attack

if (currentState == BATTLE_PLAYER_TURN)
{
	p1AbilityUsed = obj_red.redMoves[0]

	p1DamageDeal = 7*1.5
	
	battleMessage = "Red used " + p1AbilityUsed
	
	ds_queue_dequeue(battleQueue)
}

else if (currentState == BATTLE_ENEMY_TURN)
{
	p2AbilityUsed = obj_blue.blueMoves[0]
	
	p2DamageDeal = 6*2
	
	p2StatusDeal = true
	
	battleMessage = "Blue used " + p2AbilityUsed
	
	ds_queue_dequeue(battleQueue)
}