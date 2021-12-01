/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B3B8394
/// @DnDArgument : "code" "//initialize battle$(13_10)$(13_10)BATTLE_INIT = "Initialize"$(13_10)BATTLE_PLAYER_TURN = "Red's Turn"$(13_10)BATTLE_ENEMY_TURN = "Blue's Turn"$(13_10)BATTLE_ACTION = "Action"$(13_10)BATTLE_END = "Battle End"$(13_10)$(13_10)battleQueue = ds_queue_create()$(13_10)$(13_10)p1 = obj_red.redSpeedStat$(13_10)p2 = obj_blue.blueSpeedStat$(13_10)$(13_10)p1AbilityUsed = ""$(13_10)p2AbilityUsed = ""$(13_10)p1DamageDeal = 0$(13_10)p2DamageDeal = 0$(13_10)p1StatusDeal = false$(13_10)p2StatusDeal = false$(13_10)$(13_10)battleMessage = ""$(13_10)$(13_10)turn = max(p1, p2)$(13_10)$(13_10)if (turn == p1)$(13_10){$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ACTION)$(13_10)}$(13_10)else if (turn == p2)$(13_10){$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ENEMY_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_PLAYER_TURN)$(13_10)	ds_queue_enqueue(battleQueue, BATTLE_ACTION)$(13_10)}"
//initialize battle

BATTLE_INIT = "Initialize"
BATTLE_PLAYER_TURN = "Red's Turn"
BATTLE_ENEMY_TURN = "Blue's Turn"
BATTLE_ACTION = "Action"
BATTLE_END = "Battle End"

battleQueue = ds_queue_create()

p1 = obj_red.redSpeedStat
p2 = obj_blue.blueSpeedStat

p1AbilityUsed = ""
p2AbilityUsed = ""
p1DamageDeal = 0
p2DamageDeal = 0
p1StatusDeal = false
p2StatusDeal = false

battleMessage = ""

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