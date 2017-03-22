/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AF21D29
/// @DnDArgument : "code" "if (direction==0) {$(13_10)	image_xscale = -1;$(13_10)} else {$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)if (state_m == 0) {$(13_10)	if (place_meeting(x,y,obj_Player)) {$(13_10)		if (y - obj_Player.y >=16)$(13_10)		{$(13_10)			sprite_index = koopa1_shell;$(13_10)			state_m = 1;$(13_10)			path_end();$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if (state_m == 1) {$(13_10)	if (place_meeting(x,y,obj_Player)) {$(13_10)		{$(13_10)			state_m = 2;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if (state_m == 2) {$(13_10)	x -= 1;$(13_10)} "

{
	if (direction==0) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if (state_m == 0) {
	if (place_meeting(x,y,obj_Player)) {
		if (y - obj_Player.y >=16)
		{
			sprite_index = koopa1_shell;
			state_m = 1;
			path_end();
		}
	}
}

if (state_m == 1) {
	if (place_meeting(x,y,obj_Player)) {
		{
			state_m = 2;
		}
	}
}

if (state_m == 2) {
	x -= 1;
} 
}

