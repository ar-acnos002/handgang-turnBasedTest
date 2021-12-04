/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CB919D3
/// @DnDArgument : "code" "//current state$(13_10)$(13_10)currentState = ds_queue_head(battleQueue)$(13_10)$(13_10)if (ds_queue_size(battleQueue) == 0)$(13_10){$(13_10)	if (p1StatusEffect != "")$(13_10)	{$(13_10)	}$(13_10)	if (p2StatusEffect != "")$(13_10)	{$(13_10)		if (p2StatusEffect == "BURNT")$(13_10)		{$(13_10)			if (p2StatusTurns > 0)$(13_10)			{$(13_10)				ds_queue_enqueue(battleQueue, BATTLE_ENEMY_STATUS)$(13_10)				battleMessage = "Blue burns this turn"$(13_10)				p2Health -= 0.0625*obj_blue.blueHealth$(13_10)				p2StatusTurns -= 1$(13_10)				if (p2StatusTurns == 0)$(13_10)				{$(13_10)					p2StatusEffect = ""$(13_10)				}$(13_10)				show_debug_message(string(p2StatusTurns))$(13_10)				show_debug_message(p2StatusEffect)$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	turn = max(p1, p2)$(13_10)	$(13_10)	if (turn == p1)$(13_10)	{$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)$(13_10)	}$(13_10)	else if (turn == p2)$(13_10)	{$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)$(13_10)	}$(13_10)}$(13_10)$(13_10)if (p1Health <= 0)$(13_10){$(13_10)	p1Health = 0$(13_10)		$(13_10)	battleMessage = "Blue wins"$(13_10)	$(13_10)	ds_queue_clear(battleQueue)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_END)$(13_10)}$(13_10)else if (p2Health <= 0)$(13_10){$(13_10)	p2Health = 0$(13_10)		$(13_10)	battleMessage = "Red wins"$(13_10)	$(13_10)	ds_queue_clear(battleQueue)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_END)$(13_10)}$(13_10)$(13_10)else if (ds_list_find_index(BATTLE_ACTION, currentState) != -1)$(13_10){$(13_10)	if (currentState == BATTLE_PLAYER_ACTION)$(13_10)	{$(13_10)		if (p1DamageDeal != 0)$(13_10)		{$(13_10)			battleMessage = "Red used " + p1AbilityUsed$(13_10)			$(13_10)			p2Health -= p1DamageDeal$(13_10)		$(13_10)			p1DamageDeal = 0$(13_10)		}$(13_10)		if (p1StatusDeal == true)$(13_10)		{$(13_10)			if (p1StatusType == "BURN")$(13_10)			{$(13_10)				p2StatusEffect = "BURNT"$(13_10)				p2StatusTurns = 3$(13_10)				$(13_10)				p1StatusType = undefined$(13_10)			}$(13_10)			$(13_10)			p1StatusDeal = false$(13_10)		}$(13_10)	}$(13_10)	else if (currentState == BATTLE_ENEMY_ACTION)$(13_10)	{$(13_10)		if (p2DamageDeal != 0)$(13_10)		{$(13_10)			battleMessage = "Blue used " + p2AbilityUsed$(13_10)			$(13_10)			p1Health -= p2DamageDeal$(13_10)		$(13_10)			p2DamageDeal = 0$(13_10)		}$(13_10)		if (p2StatusDeal == true)$(13_10)		{$(13_10)			if  (p2StatusType == "SPEED")$(13_10)			{$(13_10)				if (p2StatusOperator == "MINUS")$(13_10)				{$(13_10)					if (p2StatusTarget == "ENEMY")$(13_10)					{$(13_10)						p1 -= p2StatusInt$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)			$(13_10)			p2StatusDeal = false$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)queueSize = ds_queue_size(battleQueue)"
//current state

currentState = ds_queue_head(battleQueue)

if (ds_queue_size(battleQueue) == 0)
{
	if (p1StatusEffect != "")
	{
	}
	if (p2StatusEffect != "")
	{
		if (p2StatusEffect == "BURNT")
		{
			if (p2StatusTurns > 0)
			{
				ds_queue_enqueue(battleQueue, BATTLE_ENEMY_STATUS)
				battleMessage = "Blue burns this turn"
				p2Health -= 0.0625*obj_blue.blueHealth
				p2StatusTurns -= 1
				if (p2StatusTurns == 0)
				{
					p2StatusEffect = ""
				}
				show_debug_message(string(p2StatusTurns))
				show_debug_message(p2StatusEffect)
			}
		}
	}
	
	turn = max(p1, p2)
	
	if (turn == p1)
	{
		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)
		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)
		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)
		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)
	}
	else if (turn == p2)
	{
		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)
		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)
		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)
		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)
	}
}

if (p1Health <= 0)
{
	p1Health = 0
		
	battleMessage = "Blue wins"
	
	ds_queue_clear(battleQueue)
	ds_queue_enqueue(battleQueue, BATTLE_END)
}
else if (p2Health <= 0)
{
	p2Health = 0
		
	battleMessage = "Red wins"
	
	ds_queue_clear(battleQueue)
	ds_queue_enqueue(battleQueue, BATTLE_END)
}

else if (ds_list_find_index(BATTLE_ACTION, currentState) != -1)
{
	if (currentState == BATTLE_PLAYER_ACTION)
	{
		if (p1DamageDeal != 0)
		{
			battleMessage = "Red used " + p1AbilityUsed
			
			p2Health -= p1DamageDeal
		
			p1DamageDeal = 0
		}
		if (p1StatusDeal == true)
		{
			if (p1StatusType == "BURN")
			{
				p2StatusEffect = "BURNT"
				p2StatusTurns = 3
				
				p1StatusType = undefined
			}
			
			p1StatusDeal = false
		}
	}
	else if (currentState == BATTLE_ENEMY_ACTION)
	{
		if (p2DamageDeal != 0)
		{
			battleMessage = "Blue used " + p2AbilityUsed
			
			p1Health -= p2DamageDeal
		
			p2DamageDeal = 0
		}
		if (p2StatusDeal == true)
		{
			if  (p2StatusType == "SPEED")
			{
				if (p2StatusOperator == "MINUS")
				{
					if (p2StatusTarget == "ENEMY")
					{
						p1 -= p2StatusInt
					}
				}
			}
			
			p2StatusDeal = false
		}
	}
}

queueSize = ds_queue_size(battleQueue)