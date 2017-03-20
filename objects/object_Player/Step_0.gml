/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73A6DC89
/// @DnDArgument : "code" "var normal_speed = 3;$(13_10)var max_speed = 6;$(13_10)$(13_10)if (keyboard_check(vk_left)){$(13_10)	x-=normal_speed;$(13_10)	image_xscale=1;$(13_10)}$(13_10)$(13_10)if (keyboard_check(vk_right)){$(13_10)	x+=normal_speed;$(13_10)	image_xscale=-1;$(13_10)}"

{
	var normal_speed = 3;
var max_speed = 6;

if (keyboard_check(vk_left)){
	x-=normal_speed;
	image_xscale=1;
}

if (keyboard_check(vk_right)){
	x+=normal_speed;
	image_xscale=-1;
}
}

