{
	// vertical collision
if (place_meeting(x,y+1,obj_Player))
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
