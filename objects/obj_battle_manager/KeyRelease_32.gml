/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C44984B
/// @DnDArgument : "code" "//execute state change on default$(13_10)if (currentState == BATTLE_PLAYER_TURN)$(13_10){$(13_10)	battleMessage = "Red passed"$(13_10)}$(13_10)else if (currentState == BATTLE_ENEMY_TURN)$(13_10){$(13_10)	battleMessage = "Blue passed"$(13_10)}$(13_10)else if (currentState == BATTLE_ACTION)$(13_10){$(13_10)	battleMessage = ""$(13_10)	$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)else if (currentState == BATTLE_END)$(13_10){$(13_10)	game_end()$(13_10)}$(13_10)$(13_10)ds_queue_dequeue(battleQueue)"
//execute state change on default
if (currentState == BATTLE_PLAYER_TURN)
{
	battleMessage = "Red passed"
}
else if (currentState == BATTLE_ENEMY_TURN)
{
	battleMessage = "Blue passed"
}
else if (currentState == BATTLE_ACTION)
{
	battleMessage = ""
	
	ds_queue_dequeue(battleQueue)
}
else if (currentState == BATTLE_END)
{
	game_end()
}

ds_queue_dequeue(battleQueue)