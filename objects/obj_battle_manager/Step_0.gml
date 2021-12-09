/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AD89E89
/// @DnDArgument : "code" "//current state$(13_10)$(13_10)randomize()$(13_10)$(13_10)if (p1Health < 0)$(13_10){$(13_10)	p1Health = 0$(13_10)}$(13_10)if (p2Health < 0)$(13_10){$(13_10)	p2Health = 0$(13_10)}$(13_10)$(13_10)if (ds_queue_size(battleQueue) == 0)$(13_10){$(13_10)	while(!ds_queue_empty(statusQueue))$(13_10)	{$(13_10)		ds_queue_enqueue(battleQueue, ds_queue_dequeue(statusQueue))$(13_10)	}$(13_10)	$(13_10)	turn = max(p1, p2)$(13_10)	$(13_10)	if (turn == p1)$(13_10)	{$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)$(13_10)	}$(13_10)	else if (turn == p2)$(13_10)	{$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)$(13_10)		ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)$(13_10)	}$(13_10)}$(13_10)$(13_10)if (currentState == BATTLE_CHECK_STATE)$(13_10){$(13_10)	currentState = ds_queue_head(battleQueue)$(13_10)	$(13_10)	if (p1Health == 0)$(13_10)	{$(13_10)		battleMessage = "Red fainted"$(13_10)	$(13_10)		ds_queue_clear(battleQueue)$(13_10)		currentState = BATTLE_PLAYER_FAINT$(13_10)		holdState = ""$(13_10)	}$(13_10)	else if (p2Health == 0)$(13_10)	{$(13_10)		battleMessage = "Blue fainted"$(13_10)	$(13_10)		ds_queue_clear(battleQueue)$(13_10)		currentState = BATTLE_ENEMY_FAINT$(13_10)		holdState = ""$(13_10)	}$(13_10)	$(13_10)	if (holdState == BATTLE_PLAYER_STATUS_INIT)$(13_10)	{$(13_10)		if  (p2StatusType == "SPEED")$(13_10)		{$(13_10)			if (p2StatusOperator == "MINUS")$(13_10)			{$(13_10)				if (p2StatusTarget == "ENEMY")$(13_10)				{$(13_10)					battleMessage = "Red's speed decreased by " + string(p2StatusInt)$(13_10)					$(13_10)					p1 -= p2StatusInt$(13_10)				}$(13_10)			}$(13_10)			$(13_10)			currentState = holdState$(13_10)			holdState = ""$(13_10)		}$(13_10)		else if (p2StatusType == "BURN")$(13_10)		{$(13_10)			battleMessage = "Red got burned"$(13_10)					$(13_10)			p1StatusEffect = "BURNT"$(13_10)			p1StatusTurns = 3$(13_10)			ds_queue_enqueue(statusQueue, BATTLE_PLAYER_STATUS)$(13_10)				$(13_10)			p2StatusType = undefined$(13_10)			$(13_10)			currentState = holdState$(13_10)			holdState = ""$(13_10)		}$(13_10)			$(13_10)		p2StatusDeal = false$(13_10)	}$(13_10)	else if (holdState == BATTLE_ENEMY_STATUS_INIT)$(13_10)	{$(13_10)		if (p1StatusType == "BURN")$(13_10)		{$(13_10)			battleMessage = "Blue got burned"$(13_10)			$(13_10)			p2StatusEffect = "BURNT"$(13_10)			p2StatusTurns = 3$(13_10)			ds_queue_enqueue(statusQueue, BATTLE_ENEMY_STATUS)$(13_10)				$(13_10)			p1StatusType = undefined$(13_10)			$(13_10)			currentState = holdState$(13_10)			holdState = ""$(13_10)		}$(13_10)				$(13_10)		p1StatusDeal = false$(13_10)	}$(13_10)	$(13_10)	if (currentState == BATTLE_PLAYER_STATUS)$(13_10)	{$(13_10)		if (p1StatusEffect == "BURNT")$(13_10)		{$(13_10)			if (p1StatusTurns > 0)$(13_10)			{$(13_10)				battleMessage = "Red burns this turn"$(13_10)				p1Health -= 0.0625*p1MaxHealth$(13_10)				p1HealthBar = (p1Health/p1MaxHealth)*100$(13_10)				p1StatusTurns -= 1$(13_10)				if (p1StatusTurns == 0)$(13_10)				{$(13_10)					p1StatusEffect = ""$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					ds_queue_enqueue(statusQueue, BATTLE_PLAYER_STATUS)$(13_10)				}$(13_10)				show_debug_message(string(p1StatusTurns))$(13_10)				show_debug_message(p1StatusEffect)$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else if (currentState == BATTLE_ENEMY_STATUS)$(13_10)	{$(13_10)		if (p2StatusEffect == "BURNT")$(13_10)		{$(13_10)			if (p2StatusTurns > 0)$(13_10)			{$(13_10)				battleMessage = "Blue burns this turn"$(13_10)				p2Health -= 0.0625*p2MaxHealth$(13_10)				p2HealthBar = (p2Health/p2MaxHealth)*100$(13_10)				p2StatusTurns -= 1$(13_10)				if (p2StatusTurns == 0)$(13_10)				{$(13_10)					p2StatusEffect = ""$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					ds_queue_enqueue(statusQueue, BATTLE_ENEMY_STATUS)$(13_10)				}$(13_10)				show_debug_message(string(p2StatusTurns))$(13_10)				show_debug_message(p2StatusEffect)$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)$(13_10)	else if (ds_list_find_index(BATTLE_ACTION, currentState) != -1)$(13_10)	{$(13_10)		if (currentState == BATTLE_PLAYER_ACTION)$(13_10)		{$(13_10)			if (p1Pass == false)$(13_10)			{$(13_10)				if (p1DamageDeal != 0)$(13_10)				{$(13_10)					if (p1Acc > p1)$(13_10)					{$(13_10)						battleMessage = "Red used " + p1AbilityUsed + " ...but missed"$(13_10)				$(13_10)						p1DamageDeal = 0$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						battleMessage = "Red used " + p1AbilityUsed$(13_10)				$(13_10)						p2Health -= p1DamageDeal$(13_10)			$(13_10)						p2HealthBar = (p2Health/p2MaxHealth)*100$(13_10)						$(13_10)						p2PierceCount += p1AbilityPierce$(13_10)						$(13_10)						p1AbilityPierce = 0$(13_10)		$(13_10)						p1DamageDeal = 0$(13_10)					}$(13_10)				}$(13_10)				if (p1StatusDeal == true)$(13_10)				{$(13_10)					if (p1Acc > p1)$(13_10)					{$(13_10)						p1StatusDeal = false$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						holdState = BATTLE_ENEMY_STATUS_INIT$(13_10)					}$(13_10)				}$(13_10)		$(13_10)				p1Acc = 0$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				battleMessage = "Red passed"$(13_10)				$(13_10)				p1Pass = false$(13_10)			}$(13_10)		}$(13_10)		else if (currentState == BATTLE_ENEMY_ACTION)$(13_10)		{$(13_10)			if  (p2Pass == false)$(13_10)			{$(13_10)				if (p2DamageDeal != 0)$(13_10)				{$(13_10)					if (p2Acc > p2)$(13_10)					{$(13_10)						battleMessage = "Blue used " + p2AbilityUsed + " ...but missed"$(13_10)				$(13_10)						p2DamageDeal = 0$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						battleMessage = "Blue used " + p2AbilityUsed$(13_10)			$(13_10)						p1Health -= p2DamageDeal$(13_10)			$(13_10)						p1HealthBar = (p1Health/p1MaxHealth)*100$(13_10)						$(13_10)						p1PierceCount += p2AbilityPierce$(13_10)						$(13_10)						p2AbilityPierce = 0$(13_10)		$(13_10)						p2DamageDeal = 0$(13_10)					}$(13_10)				}$(13_10)				if (p2StatusDeal == true)$(13_10)				{$(13_10)					if (p2Acc > p2)$(13_10)					{$(13_10)						p2StatusDeal = false$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						holdState = BATTLE_PLAYER_STATUS_INIT$(13_10)					}$(13_10)				}$(13_10)		$(13_10)				p2Acc = 0$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				battleMessage = "Blue passed"$(13_10)				$(13_10)				p2Pass = false$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)queueSize = ds_queue_size(battleQueue)$(13_10)squeueSize = ds_queue_size(statusQueue)$(13_10)shead = ds_queue_head(statusQueue)"
//current state

randomize()

if (p1Health < 0)
{
	p1Health = 0
}
if (p2Health < 0)
{
	p2Health = 0
}

if (ds_queue_size(battleQueue) == 0)
{
	while(!ds_queue_empty(statusQueue))
	{
		ds_queue_enqueue(battleQueue, ds_queue_dequeue(statusQueue))
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

if (currentState == BATTLE_CHECK_STATE)
{
	currentState = ds_queue_head(battleQueue)
	
	if (p1Health == 0)
	{
		battleMessage = "Red fainted"
	
		ds_queue_clear(battleQueue)
		currentState = BATTLE_PLAYER_FAINT
		holdState = ""
	}
	else if (p2Health == 0)
	{
		battleMessage = "Blue fainted"
	
		ds_queue_clear(battleQueue)
		currentState = BATTLE_ENEMY_FAINT
		holdState = ""
	}
	
	if (holdState == BATTLE_PLAYER_STATUS_INIT)
	{
		if  (p2StatusType == "SPEED")
		{
			if (p2StatusOperator == "MINUS")
			{
				if (p2StatusTarget == "ENEMY")
				{
					battleMessage = "Red's speed decreased by " + string(p2StatusInt)
					
					p1 -= p2StatusInt
				}
			}
			
			currentState = holdState
			holdState = ""
		}
		else if (p2StatusType == "BURN")
		{
			battleMessage = "Red got burned"
					
			p1StatusEffect = "BURNT"
			p1StatusTurns = 3
			ds_queue_enqueue(statusQueue, BATTLE_PLAYER_STATUS)
				
			p2StatusType = undefined
			
			currentState = holdState
			holdState = ""
		}
			
		p2StatusDeal = false
	}
	else if (holdState == BATTLE_ENEMY_STATUS_INIT)
	{
		if (p1StatusType == "BURN")
		{
			battleMessage = "Blue got burned"
			
			p2StatusEffect = "BURNT"
			p2StatusTurns = 3
			ds_queue_enqueue(statusQueue, BATTLE_ENEMY_STATUS)
				
			p1StatusType = undefined
			
			currentState = holdState
			holdState = ""
		}
				
		p1StatusDeal = false
	}
	
	if (currentState == BATTLE_PLAYER_STATUS)
	{
		if (p1StatusEffect == "BURNT")
		{
			if (p1StatusTurns > 0)
			{
				battleMessage = "Red burns this turn"
				p1Health -= 0.0625*p1MaxHealth
				p1HealthBar = (p1Health/p1MaxHealth)*100
				p1StatusTurns -= 1
				if (p1StatusTurns == 0)
				{
					p1StatusEffect = ""
				}
				else
				{
					ds_queue_enqueue(statusQueue, BATTLE_PLAYER_STATUS)
				}
				show_debug_message(string(p1StatusTurns))
				show_debug_message(p1StatusEffect)
			}
		}
	}
	else if (currentState == BATTLE_ENEMY_STATUS)
	{
		if (p2StatusEffect == "BURNT")
		{
			if (p2StatusTurns > 0)
			{
				battleMessage = "Blue burns this turn"
				p2Health -= 0.0625*p2MaxHealth
				p2HealthBar = (p2Health/p2MaxHealth)*100
				p2StatusTurns -= 1
				if (p2StatusTurns == 0)
				{
					p2StatusEffect = ""
				}
				else
				{
					ds_queue_enqueue(statusQueue, BATTLE_ENEMY_STATUS)
				}
				show_debug_message(string(p2StatusTurns))
				show_debug_message(p2StatusEffect)
			}
		}
	}

	else if (ds_list_find_index(BATTLE_ACTION, currentState) != -1)
	{
		if (currentState == BATTLE_PLAYER_ACTION)
		{
			if (p1Pass == false)
			{
				if (p1DamageDeal != 0)
				{
					if (p1Acc > p1)
					{
						battleMessage = "Red used " + p1AbilityUsed + " ...but missed"
				
						p1DamageDeal = 0
					}
					else
					{
						battleMessage = "Red used " + p1AbilityUsed
				
						p2Health -= p1DamageDeal
			
						p2HealthBar = (p2Health/p2MaxHealth)*100
						
						p2PierceCount += p1AbilityPierce
						
						p1AbilityPierce = 0
		
						p1DamageDeal = 0
					}
				}
				if (p1StatusDeal == true)
				{
					if (p1Acc > p1)
					{
						p1StatusDeal = false
					}
					else
					{
						holdState = BATTLE_ENEMY_STATUS_INIT
					}
				}
		
				p1Acc = 0
			}
			else
			{
				battleMessage = "Red passed"
				
				p1Pass = false
			}
		}
		else if (currentState == BATTLE_ENEMY_ACTION)
		{
			if  (p2Pass == false)
			{
				if (p2DamageDeal != 0)
				{
					if (p2Acc > p2)
					{
						battleMessage = "Blue used " + p2AbilityUsed + " ...but missed"
				
						p2DamageDeal = 0
					}
					else
					{
						battleMessage = "Blue used " + p2AbilityUsed
			
						p1Health -= p2DamageDeal
			
						p1HealthBar = (p1Health/p1MaxHealth)*100
						
						p1PierceCount += p2AbilityPierce
						
						p2AbilityPierce = 0
		
						p2DamageDeal = 0
					}
				}
				if (p2StatusDeal == true)
				{
					if (p2Acc > p2)
					{
						p2StatusDeal = false
					}
					else
					{
						holdState = BATTLE_PLAYER_STATUS_INIT
					}
				}
		
				p2Acc = 0
			}
			else
			{
				battleMessage = "Blue passed"
				
				p2Pass = false
			}
		}
	}
}

queueSize = ds_queue_size(battleQueue)
squeueSize = ds_queue_size(statusQueue)
shead = ds_queue_head(statusQueue)