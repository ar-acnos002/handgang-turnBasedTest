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
/// @DnDArgument : "var" "obj_red.redHealth"
draw_text(obj_red.x - obj_red.sprite_width/2, obj_red.y - obj_red.sprite_height, string("Health: ") + string(obj_red.redHealth));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 740B9DF5
/// @DnDArgument : "x" "obj_blue.x - obj_blue.sprite_width"
/// @DnDArgument : "y" "obj_blue.y - obj_blue.sprite_height"
/// @DnDArgument : "caption" ""Health: ""
/// @DnDArgument : "var" "obj_blue.blueHealth"
draw_text(obj_blue.x - obj_blue.sprite_width, obj_blue.y - obj_blue.sprite_height, string("Health: ") + string(obj_blue.blueHealth));

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