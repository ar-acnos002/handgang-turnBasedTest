/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C44984B
/// @DnDArgument : "code" "//execute state change on default$(13_10)if (currentState == BATTLE_PLAYER_TURN)$(13_10){$(13_10)	p1Pass = true$(13_10)	currentState = BATTLE_CHECK_STATE$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)else if (currentState == BATTLE_ENEMY_TURN)$(13_10){$(13_10)	p2Pass = true$(13_10)	currentState = BATTLE_CHECK_STATE$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)$(13_10)else if (currentState == BATTLE_PLAYER_ACTION)$(13_10){$(13_10)	if (p1SE == true)$(13_10)	{$(13_10)		battleMessage = "It was super effective"$(13_10)							$(13_10)		p1SE = false$(13_10)	}$(13_10)	else if (p1Crit == true)$(13_10)	{$(13_10)		battleMessage = "It was a critical hit"$(13_10)		$(13_10)		p1Crit = false$(13_10)		$(13_10)		p2PierceCount = 0$(13_10)	}$(13_10)	else if (holdState == BATTLE_ENEMY_STATUS_INIT)$(13_10)	{$(13_10)		currentState = BATTLE_CHECK_STATE$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		battleMessage = ""$(13_10)		currentState = BATTLE_CHECK_STATE$(13_10)		ds_queue_dequeue(battleQueue)$(13_10)	}$(13_10)}$(13_10)else if (currentState == BATTLE_ENEMY_ACTION)$(13_10){$(13_10)	if (p2SE == true)$(13_10)	{$(13_10)		battleMessage = "It was super effective"$(13_10)							$(13_10)		p2SE = false$(13_10)	}$(13_10)	else if (p2Crit == true)$(13_10)	{$(13_10)		battleMessage = "It was a critical hit"$(13_10)		$(13_10)		p2Crit = false$(13_10)		$(13_10)		p1PierceCount = 0$(13_10)	}$(13_10)	else if (holdState == BATTLE_PLAYER_STATUS_INIT)$(13_10)	{$(13_10)		currentState = BATTLE_CHECK_STATE$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		battleMessage = ""$(13_10)		currentState = BATTLE_CHECK_STATE$(13_10)		ds_queue_dequeue(battleQueue)$(13_10)	}$(13_10)}$(13_10)$(13_10)else if (currentState == BATTLE_PLAYER_STATUS_INIT)$(13_10){$(13_10)	battleMessage = ""$(13_10)	currentState = BATTLE_CHECK_STATE$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)else if (currentState == BATTLE_ENEMY_STATUS_INIT)$(13_10){$(13_10)	battleMessage = ""$(13_10)	currentState = BATTLE_CHECK_STATE$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}$(13_10)$(13_10)else if (currentState == BATTLE_PLAYER_FAINT)$(13_10){$(13_10)	battleMessage = "Blue wins"$(13_10)	$(13_10)	ds_queue_clear(battleQueue)$(13_10)	currentState = BATTLE_END$(13_10)}$(13_10)else if (currentState == BATTLE_ENEMY_FAINT)$(13_10){$(13_10)	battleMessage = "Red wins"$(13_10)	$(13_10)	ds_queue_clear(battleQueue)$(13_10)	currentState = BATTLE_END$(13_10)}$(13_10)$(13_10)else if (currentState == BATTLE_END)$(13_10){$(13_10)	game_end()$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	battleMessage = ""$(13_10)	currentState = BATTLE_CHECK_STATE$(13_10)	ds_queue_dequeue(battleQueue)$(13_10)}"
//execute state change on default
if (currentState == BATTLE_PLAYER_TURN)
{
	p1Pass = true
	currentState = BATTLE_CHECK_STATE
	ds_queue_dequeue(battleQueue)
}
else if (currentState == BATTLE_ENEMY_TURN)
{
	p2Pass = true
	currentState = BATTLE_CHECK_STATE
	ds_queue_dequeue(battleQueue)
}

else if (currentState == BATTLE_PLAYER_ACTION)
{
	if (p1SE == true)
	{
		battleMessage = "It was super effective"
							
		p1SE = false
	}
	else if (p1Crit == true)
	{
		battleMessage = "It was a critical hit"
		
		p1Crit = false
		
		p2PierceCount = 0
	}
	else if (holdState == BATTLE_ENEMY_STATUS_INIT)
	{
		currentState = BATTLE_CHECK_STATE
	}
	else
	{
		battleMessage = ""
		currentState = BATTLE_CHECK_STATE
		ds_queue_dequeue(battleQueue)
	}
}
else if (currentState == BATTLE_ENEMY_ACTION)
{
	if (p2SE == true)
	{
		battleMessage = "It was super effective"
							
		p2SE = false
	}
	else if (p2Crit == true)
	{
		battleMessage = "It was a critical hit"
		
		p2Crit = false
		
		p1PierceCount = 0
	}
	else if (holdState == BATTLE_PLAYER_STATUS_INIT)
	{
		currentState = BATTLE_CHECK_STATE
	}
	else
	{
		battleMessage = ""
		currentState = BATTLE_CHECK_STATE
		ds_queue_dequeue(battleQueue)
	}
}

else if (currentState == BATTLE_PLAYER_STATUS_INIT)
{
	battleMessage = ""
	currentState = BATTLE_CHECK_STATE
	ds_queue_dequeue(battleQueue)
}
else if (currentState == BATTLE_ENEMY_STATUS_INIT)
{
	battleMessage = ""
	currentState = BATTLE_CHECK_STATE
	ds_queue_dequeue(battleQueue)
}

else if (currentState == BATTLE_PLAYER_FAINT)
{
	battleMessage = "Blue wins"
	
	ds_queue_clear(battleQueue)
	currentState = BATTLE_END
}
else if (currentState == BATTLE_ENEMY_FAINT)
{
	battleMessage = "Red wins"
	
	ds_queue_clear(battleQueue)
	currentState = BATTLE_END
}

else if (currentState == BATTLE_END)
{
	game_end()
}

else
{
	battleMessage = ""
	currentState = BATTLE_CHECK_STATE
	ds_queue_dequeue(battleQueue)
}