/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AF21D29
/// @DnDArgument : "code" "if (direction==0) {$(13_10)	image_xscale = -1;$(13_10)} else {$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)object_set_sprite(object_6,koopa1_shell)"

{
	if (direction==0) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

object_set_sprite(object_6,koopa1_shell)
}

