/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CB919D3
/// @DnDArgument : "code" "//current state$(13_10)$(13_10)currentState = ds_queue_head(battleQueue)$(13_10)$(13_10)if (currentState == BATTLE_END)$(13_10){$(13_10)	if (obj_red.redHealth <= 0)$(13_10)	{$(13_10)		battleMessage = "Red lost"$(13_10)	}$(13_10)	else if (obj_blue.blueHealth <= 0)$(13_10)	{$(13_10)		battleMessage = "Blue lost"$(13_10)	}$(13_10)}$(13_10)else if (currentState == BATTLE_ACTION)$(13_10){$(13_10)	if (p1DamageDeal != 0)$(13_10)	{$(13_10)		obj_blue.blueHealth -= p1DamageDeal$(13_10)		$(13_10)		p1DamageDeal = 0$(13_10)	}$(13_10)	if (p2DamageDeal != 0)$(13_10)	{$(13_10)		obj_red.redHealth -= p2DamageDeal$(13_10)		$(13_10)		p2DamageDeal = 0$(13_10)	}$(13_10)	if (p2StatusDeal == true)$(13_10)	{$(13_10)		obj_red.redSpeedStat -= 2$(13_10)	}$(13_10)}$(13_10)$(13_10)if (ds_queue_size(battleQueue) == 0)$(13_10){$(13_10)	if (obj_red.redHealth <= 0 || obj_blue.blueHealth <= 0)$(13_10)	{$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_END)$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		p1 = obj_red.redSpeedStat$(13_10)		p2 = obj_blue.blueSpeedStat$(13_10)$(13_10)		turn = max(p1, p2)$(13_10)	$(13_10)		if (turn == p1)$(13_10)		{$(13_10)			ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)			ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)			ds_queue_enqueue(battleQueue, BATTLE_ACTION)$(13_10)		}$(13_10)		else if (turn == p2)$(13_10)		{$(13_10)			ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)			ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)			ds_queue_enqueue(battleQueue, BATTLE_ACTION)$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)queueSize = ds_queue_size(battleQueue)"
//current state

currentState = ds_queue_head(battleQueue)

if (currentState == BATTLE_END)
{
	if (obj_red.redHealth <= 0)
	{
		battleMessage = "Red lost"
	}
	else if (obj_blue.blueHealth <= 0)
	{
		battleMessage = "Blue lost"
	}
}
else if (currentState == BATTLE_ACTION)
{
	if (p1DamageDeal != 0)
	{
		obj_blue.blueHealth -= p1DamageDeal
		
		p1DamageDeal = 0
	}
	if (p2DamageDeal != 0)
	{
		obj_red.redHealth -= p2DamageDeal
		
		p2DamageDeal = 0
	}
	if (p2StatusDeal == true)
	{
		obj_red.redSpeedStat -= 2
	}
}

if (ds_queue_size(battleQueue) == 0)
{
	if (obj_red.redHealth <= 0 || obj_blue.blueHealth <= 0)
	{
		ds_queue_enqueue(battleQueue, BATTLE_END)
	}
	else
	{
		p1 = obj_red.redSpeedStat
		p2 = obj_blue.blueSpeedStat

		turn = max(p1, p2)
	
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
	}
}

queueSize = ds_queue_size(battleQueue)