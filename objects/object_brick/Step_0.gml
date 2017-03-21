/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F0862E6
/// @DnDArgument : "code" "// vertical collision$(13_10)if (place_meeting(x,y+1,object_Player))$(13_10){$(13_10)	up = 1;$(13_10)	y -= 4;$(13_10)}$(13_10)$(13_10)if (up == 1)$(13_10){$(13_10)	if (vsp < 10) vsp += grav;$(13_10)	$(13_10)}$(13_10)$(13_10)if (y >= old_y) $(13_10){$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;$(13_10)$(13_10)if (vsp ==0)$(13_10){$(13_10)	y = old_y;$(13_10)}"

{
	// vertical collision
if (place_meeting(x,y+1,object_Player))
{
	up = 1;
	y -= 4;
}

if (up == 1)
{
	if (vsp < 10) vsp += grav;
	
}

if (y >= old_y) 
{
	vsp = 0;
}
y += vsp;

if (vsp ==0)
{
	y = old_y;
}
}

