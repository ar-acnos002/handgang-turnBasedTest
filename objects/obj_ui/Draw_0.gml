/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 14182DA2
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l14182DA2_0=($FF000000 >> 24);
draw_set_alpha(l14182DA2_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6A6F09AC
/// @DnDArgument : "x" "obj_red.x - obj_red.sprite_width/2"
/// @DnDArgument : "y" "obj_red.y - obj_red.sprite_height"
/// @DnDArgument : "caption" ""Health: ""
/// @DnDArgument : "var" "obj_battle_manager.p1Health"
draw_text(obj_red.x - obj_red.sprite_width/2, obj_red.y - obj_red.sprite_height, string("Health: ") + string(obj_battle_manager.p1Health));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 740B9DF5
/// @DnDArgument : "x" "obj_blue.x - obj_blue.sprite_width"
/// @DnDArgument : "y" "obj_blue.y - obj_blue.sprite_height"
/// @DnDArgument : "caption" ""Health: ""
/// @DnDArgument : "var" "obj_battle_manager.p2Health"
draw_text(obj_blue.x - obj_blue.sprite_width, obj_blue.y - obj_blue.sprite_height, string("Health: ") + string(obj_battle_manager.p2Health));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 4A1286A6
/// @DnDArgument : "x1" "obj_red.x - obj_red.sprite_width/2"
/// @DnDArgument : "y1" "obj_red.y - obj_red.sprite_height - 64"
/// @DnDArgument : "x2" "obj_red.x - obj_red.sprite_width/2 + 128"
/// @DnDArgument : "y2" "obj_red.y - obj_red.sprite_height - 56"
/// @DnDArgument : "value" "obj_battle_manager.p1HealthBar"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(obj_red.x - obj_red.sprite_width/2, obj_red.y - obj_red.sprite_height - 64, obj_red.x - obj_red.sprite_width/2 + 128, obj_red.y - obj_red.sprite_height - 56, obj_battle_manager.p1HealthBar, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 1D04D7F0
/// @DnDArgument : "x1" "obj_red.x - obj_red.sprite_width/2"
/// @DnDArgument : "y1" "obj_red.y - obj_red.sprite_height - 32"
/// @DnDArgument : "x2" "obj_red.x - obj_red.sprite_width/2 + 128"
/// @DnDArgument : "y2" "obj_red.y - obj_red.sprite_height - 24"
/// @DnDArgument : "value" "obj_battle_manager.p1ManaBar"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFFF0000"
/// @DnDArgument : "maxcol" "$FFFF0000"
draw_healthbar(obj_red.x - obj_red.sprite_width/2, obj_red.y - obj_red.sprite_height - 32, obj_red.x - obj_red.sprite_width/2 + 128, obj_red.y - obj_red.sprite_height - 24, obj_battle_manager.p1ManaBar, $FFFFFFFF & $FFFFFF, $FFFF0000 & $FFFFFF, $FFFF0000 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 2A806E55
/// @DnDArgument : "x1" "obj_blue.x + obj_blue.sprite_width/2 - 128"
/// @DnDArgument : "y1" "obj_blue.y - obj_blue.sprite_height - 64"
/// @DnDArgument : "x2" "obj_blue.x + obj_blue.sprite_width/2"
/// @DnDArgument : "y2" "obj_blue.y - obj_blue.sprite_height - 56"
/// @DnDArgument : "direction" "1"
/// @DnDArgument : "value" "obj_battle_manager.p2HealthBar"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(obj_blue.x + obj_blue.sprite_width/2 - 128, obj_blue.y - obj_blue.sprite_height - 64, obj_blue.x + obj_blue.sprite_width/2, obj_blue.y - obj_blue.sprite_height - 56, obj_battle_manager.p2HealthBar, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 1, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 5348CBAD
/// @DnDArgument : "x1" "obj_blue.x + obj_blue.sprite_width/2 - 128"
/// @DnDArgument : "y1" "obj_blue.y - obj_blue.sprite_height - 32"
/// @DnDArgument : "x2" "obj_blue.x + obj_blue.sprite_width/2"
/// @DnDArgument : "y2" "obj_blue.y - obj_blue.sprite_height - 24"
/// @DnDArgument : "direction" "1"
/// @DnDArgument : "value" "obj_battle_manager.p2ManaBar"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFFF0000"
/// @DnDArgument : "maxcol" "$FFFF0000"
draw_healthbar(obj_blue.x + obj_blue.sprite_width/2 - 128, obj_blue.y - obj_blue.sprite_height - 32, obj_blue.x + obj_blue.sprite_width/2, obj_blue.y - obj_blue.sprite_height - 24, obj_battle_manager.p2ManaBar, $FFFFFFFF & $FFFFFF, $FFFF0000 & $FFFFFF, $FFFF0000 & $FFFFFF, 1, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4AB40402
/// @DnDArgument : "x" "obj_red.x - obj_red.sprite_width*2.5"
/// @DnDArgument : "y" "obj_red.y"
/// @DnDArgument : "caption" ""Speed: ""
/// @DnDArgument : "var" "obj_battle_manager.p1"
draw_text(obj_red.x - obj_red.sprite_width*2.5, obj_red.y, string("Speed: ") + string(obj_battle_manager.p1));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 074D20BA
/// @DnDArgument : "x" "obj_blue.x + obj_blue.sprite_width"
/// @DnDArgument : "y" "obj_blue.y"
/// @DnDArgument : "caption" ""Speed: ""
/// @DnDArgument : "var" "obj_battle_manager.p2"
draw_text(obj_blue.x + obj_blue.sprite_width, obj_blue.y, string("Speed: ") + string(obj_battle_manager.p2));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 267A2246
/// @DnDArgument : "code" "///drawing move sets///$(13_10)$(13_10)moveSpace = 16$(13_10)$(13_10)//red moves$(13_10)redMoveX = obj_red.x - obj_red.sprite_width$(13_10)redMoveY = obj_red.y + obj_red.sprite_height$(13_10)$(13_10)redMoveList = array_length(obj_red.redMoves)$(13_10)$(13_10)for (var i = 0; i < redMoveList; i++)$(13_10){$(13_10)	draw_text(redMoveX, redMoveY + moveSpace*i, string(i+1) + " " + obj_red.redMoves[i])$(13_10)}$(13_10)$(13_10)$(13_10)//blue moves$(13_10)blueMoveX = obj_blue.x - obj_blue.sprite_width/2$(13_10)blueMoveY = obj_blue.y + obj_blue.sprite_height$(13_10)$(13_10)blueMoveList = array_length(obj_blue.blueMoves)$(13_10)$(13_10)for (var i = 0; i < blueMoveList; i++)$(13_10){$(13_10)	draw_text(blueMoveX, blueMoveY + moveSpace*i, obj_blue.blueMoves[i] + " " + string(i+1))$(13_10)}$(13_10)$(13_10)//////"
///drawing move sets///

moveSpace = 16

//red moves
redMoveX = obj_red.x - obj_red.sprite_width
redMoveY = obj_red.y + obj_red.sprite_height

redMoveList = array_length(obj_red.redMoves)

for (var i = 0; i < redMoveList; i++)
{
	draw_text(redMoveX, redMoveY + moveSpace*i, string(i+1) + " " + obj_red.redMoves[i])
}


//blue moves
blueMoveX = obj_blue.x - obj_blue.sprite_width/2
blueMoveY = obj_blue.y + obj_blue.sprite_height

blueMoveList = array_length(obj_blue.blueMoves)

for (var i = 0; i < blueMoveList; i++)
{
	draw_text(blueMoveX, blueMoveY + moveSpace*i, obj_blue.blueMoves[i] + " " + string(i+1))
}

//////

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7A0BC660
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "352"
/// @DnDArgument : "caption" ""Current State: ""
/// @DnDArgument : "var" "obj_battle_manager.currentState"
draw_text(32, 352, string("Current State: ") + string(obj_battle_manager.currentState));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 640ACE7B
/// @DnDArgument : "x" "482"
/// @DnDArgument : "y" "352"
/// @DnDArgument : "caption" ""Battle Queue Size: ""
/// @DnDArgument : "var" "obj_battle_manager.queueSize"
draw_text(482, 352, string("Battle Queue Size: ") + string(obj_battle_manager.queueSize));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 367BE77D
/// @DnDArgument : "x" "200"
/// @DnDArgument : "caption" ""Info: ""
/// @DnDArgument : "var" "obj_battle_manager.battleMessage"
draw_text(200, 0, string("Info: ") + string(obj_battle_manager.battleMessage));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 47029F58
/// @DnDArgument : "x" "482"
/// @DnDArgument : "y" "320"
/// @DnDArgument : "caption" ""Status Queue Size: ""
/// @DnDArgument : "var" "obj_battle_manager.squeueSize"
draw_text(482, 320, string("Status Queue Size: ") + string(obj_battle_manager.squeueSize));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 305F1C81
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "320"
/// @DnDArgument : "caption" ""Status Head: ""
/// @DnDArgument : "var" "obj_battle_manager.shead"
draw_text(32, 320, string("Status Head: ") + string(obj_battle_manager.shead));