show_debug_message("=======GOOMBA STATE=============")
show_debug_message(death_lantency)
show_debug_message("=======STATE  END===============")
if (state_goomba == 0) {
	if (place_meeting(x,y,obj_Player)) {
		if (y - obj_Player.y >=5)
		{
			sprite_index = sprite_goomba1_death;
			state_goomba = 1;
			
		}
		
		if (abs(x - obj_Player.x >=5))
		{
			obj_Player.death = 1;
			
		}
	}
}

if (state_goomba == 1){
	path_end();
	if (death_lantency != 0){
		death_lantency --;		
	}
	else{		
		instance_destroy(self)
	}
}