/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B3B8394
/// @DnDArgument : "code" "//initialize battle$(13_10)$(13_10)BATTLE_INIT = "Initialize"$(13_10)BATTLE_PLAYER_TURN = "Red's Turn"$(13_10)BATTLE_ENEMY_TURN = "Blue's Turn"$(13_10)BATTLE_PLAYER_ACTION = "Red's Action"$(13_10)BATTLE_ENEMY_ACTION = "Blue's Action"$(13_10)BATTLE_PLAYER_STATUS = "Red's Status Effect"$(13_10)BATTLE_ENEMY_STATUS = "Blue's Status Effect"$(13_10)BATTLE_ACTION = ds_list_create()$(13_10)ds_list_insert(BATTLE_ACTION, 0, BATTLE_PLAYER_ACTION)$(13_10)ds_list_insert(BATTLE_ACTION, 1, BATTLE_ENEMY_ACTION)$(13_10)BATTLE_END = "Battle End"$(13_10)$(13_10)battleQueue = ds_queue_create()$(13_10)$(13_10)p1 = obj_red.redSpeedStat$(13_10)p2 = obj_blue.blueSpeedStat$(13_10)p1Health = obj_red.redHealth$(13_10)p2Health = obj_blue.blueHealth$(13_10)$(13_10)p1StatusEffect = ""$(13_10)p1StatusTurns = 0$(13_10)p2StatusEffect = ""$(13_10)p2StatusTurns = 0$(13_10)$(13_10)p1AbilityUsed = ""$(13_10)p2AbilityUsed = ""$(13_10)p1DamageDeal = 0$(13_10)p2DamageDeal = 0$(13_10)p1StatusDeal = false$(13_10)p1StatusType = undefined$(13_10)p1StatusOperator = undefined$(13_10)p1StatusInt = undefined$(13_10)p1StatusTarget = undefined$(13_10)p2StatusDeal = false$(13_10)p2StatusType = undefined$(13_10)p2StatusOperator = undefined$(13_10)p2StatusInt = undefined$(13_10)p2StatusTarget = undefined$(13_10)$(13_10)battleMessage = ""$(13_10)$(13_10)turn = max(p1, p2)$(13_10)$(13_10)if (turn == p1)$(13_10){$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)$(13_10)}$(13_10)else if (turn == p2)$(13_10){$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_ACTION)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_ACTION)$(13_10)}"
//initialize battle

BATTLE_INIT = "Initialize"
BATTLE_PLAYER_TURN = "Red's Turn"
BATTLE_ENEMY_TURN = "Blue's Turn"
BATTLE_PLAYER_ACTION = "Red's Action"
BATTLE_ENEMY_ACTION = "Blue's Action"
BATTLE_PLAYER_STATUS = "Red's Status Effect"
BATTLE_ENEMY_STATUS = "Blue's Status Effect"
BATTLE_ACTION = ds_list_create()
ds_list_insert(BATTLE_ACTION, 0, BATTLE_PLAYER_ACTION)
ds_list_insert(BATTLE_ACTION, 1, BATTLE_ENEMY_ACTION)
BATTLE_END = "Battle End"

battleQueue = ds_queue_create()

p1 = obj_red.redSpeedStat
p2 = obj_blue.blueSpeedStat
p1Health = obj_red.redHealth
p2Health = obj_blue.blueHealth

p1StatusEffect = ""
p1StatusTurns = 0
p2StatusEffect = ""
p2StatusTurns = 0

p1AbilityUsed = ""
p2AbilityUsed = ""
p1DamageDeal = 0
p2DamageDeal = 0
p1StatusDeal = false
p1StatusType = undefined
p1StatusOperator = undefined
p1StatusInt = undefined
p1StatusTarget = undefined
p2StatusDeal = false
p2StatusType = undefined
p2StatusOperator = undefined
p2StatusInt = undefined
p2StatusTarget = undefined

battleMessage = ""

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