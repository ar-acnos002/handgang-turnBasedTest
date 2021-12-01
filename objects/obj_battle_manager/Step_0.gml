/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CB919D3
/// @DnDArgument : "code" "p1 = obj_red.redSpeedStat$(13_10)p2 = obj_blue.blueSpeedStat$(13_10)$(13_10)turn = max(p1, p2)$(13_10)$(13_10)queueSize = ds_queue_size(battleQueue)$(13_10)$(13_10)if (queueSize == 30)$(13_10){$(13_10)	ds_queue_clear(battleQueue)$(13_10)}$(13_10)	$(13_10)if (turn == p1)$(13_10){$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ACTION)$(13_10)}$(13_10)else if (turn == p2)$(13_10){$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ACTION)$(13_10)}"
p1 = obj_red.redSpeedStat
p2 = obj_blue.blueSpeedStat

turn = max(p1, p2)

queueSize = ds_queue_size(battleQueue)

if (queueSize == 30)
{
	ds_queue_clear(battleQueue)
}
	
if (turn == p1)
{
	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)
	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)
	ds_queue_enqueue(battleQueue, BATTLE_ACTION)
}
else if (turn == p2)
{
	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)
	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)
	ds_queue_enqueue(battleQueue, BATTLE_ACTION)
}