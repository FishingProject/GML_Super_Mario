/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AF21D29
/// @DnDArgument : "code" "if (direction==0) {$(13_10)	image_xscale = -1;$(13_10)} else {$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y,obj_Player)) {$(13_10)	sprite_index = koopa1_shell;$(13_10)	path_end()$(13_10)}$(13_10)$(13_10)"

{
	if (direction==0) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if (place_meeting(x,y,obj_Player)) {
	sprite_index = koopa1_shell;
	path_end()
}


}

