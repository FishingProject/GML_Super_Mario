if pri_state ==0 {
	if (place_meeting(x,y+2,obj_Player))
	{
		pri_state=1;
		xx = instance_create_depth(x+8, y-20, 1, object_8);
	}
}

if (xx != 0) {
	if (instance_exists(xx)){
		if (xx.image_index >= 28){
			instance_destroy(xx);
			xx =0;
		}
	}
}
