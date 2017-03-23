{
	if (direction==0) {
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	}

	if (state_m == 0) {
		if (place_meeting(x,y,obj_Player)) {
			if (y - obj_Player.y >=16){
				sprite_index = sprite_koopa1_shell;
				state_m = 1;
				path_end();
			}
		}
	}

	if (state_m == 1) {
		if (place_meeting(x,y,obj_Player)){
			state_m = 2;
		}
	}
	
	if (state_m == 2){
		x -= 1;
	}
}
