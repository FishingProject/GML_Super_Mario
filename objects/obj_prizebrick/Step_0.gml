if pri_state ==0 {
	if (place_meeting(x,y+2,obj_Player))
	{
		pri_state=1;
		sprite_index = sprite_solidbrick;
		xx = instance_create_depth(x+8, y-20, 1, object_coinanimation);
	}
}

if (xx != 0) {
	if (instance_exists(xx)){
		if (xx.image_index >= 28){
			instance_destroy(xx);
			xx = 0;
		}
	}
}
