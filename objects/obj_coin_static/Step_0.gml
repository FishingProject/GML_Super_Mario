/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 170CB4CF
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_Player))$(13_10){$(13_10)	instance_destroy(self);$(13_10)}"

{
	if (place_meeting(x,y,obj_Player))
{
	instance_destroy(self);
}
}

