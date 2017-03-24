key_right = keyboard_check(vk_right);						//right key-binding
key_left = -keyboard_check(vk_left);						//left key-binding
key_jump = keyboard_check_pressed(vk_space);				//jump key-binding
key_accel = keyboard_check(vk_f1);							//accelerate key-biding

//show_debug_message(key_accel)								//print accelerate 

move = key_left + key_right;

//instant horizontal speed printing
show_debug_message("==============move speed=============")
show_debug_message(hsp)
show_debug_message(move)
show_debug_message("==============move end===============")

if (death == 0){ 
	if (hsp == 0)
	{
		hsp = move * movespeed;									//control speed
	}


	if (key_jump != 0){
		audio_play_sound(sound_jump, 199, false);		
	}
	
	if (move !=0){
		sprite_index = sprite_playerrun;
		if (key_accel == 1){
			hsp += move*accel_speed;							//acceleration
		}
		else{
			if(abs(hsp) > movespeed){
			show_debug_message("!!!!!!!!!!!!!friction!!!!!!!!!!!!!!!!!!!")
			hsp += player_friction * move;						//friction
			}
		}
	
		if(sign(hsp) != sign(move)){
			hsp -= turn_friction * move;						//turn around friction 
		}
	} 
	else {														//stop friction
		sprite_index = sprite_playeridle;
		if(abs(hsp) > 0){
			if(hsp > 0){
				hsp += stop_friction;
				if(hsp < 0){
					hsp = 0;
				}
			}
			else if(hsp < 0){
				hsp -= stop_friction;
				if(hsp > 0){
					hsp = 0;
				}
			}
			else
				hsp = 0;
		}
	}

	if (hsp > 0){
		hsp = min(hsp,max_move_speed);
	}
	else {
		hsp = max(hsp,-max_move_speed);
	}


	if (vsp < 10) 
		vsp += grav;


	// obj_wall
	// jump
	if (place_meeting(x,y+1,obj_wall))
	{
		vsp = key_jump * -jumpspeed;
	}

	// vertical collision
	if (place_meeting(x,y+vsp,obj_wall))
	{
		while(!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}

	if (place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}

	// obj_brick
	// jump
	if (place_meeting(x,y+1,obj_prizebrick))
	{
		vsp = key_jump * -jumpspeed;
	}

	// vertical collision
	if (place_meeting(x,y+vsp,obj_prizebrick))
	{
		while(!place_meeting(x,y+sign(vsp),obj_prizebrick))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}

	if (place_meeting(x+hsp,y,obj_prizebrick))
	{
		while(!place_meeting(x+sign(hsp),y,obj_prizebrick))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}

	// obj_wall
	// jump
	if (place_meeting(x,y+1,obj_brick))
	{
		vsp = key_jump * -jumpspeed;
	}

	// vertical collision
	if (place_meeting(x,y+vsp,obj_brick))
	{
		while(!place_meeting(x,y+sign(vsp),obj_brick))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}

	if (place_meeting(x+hsp,y,obj_brick))
	{
		while(!place_meeting(x+sign(hsp),y,obj_brick))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}

	if (move !=0){
		image_xscale=-move;
	}

	x += hsp;
	y += vsp;

	if (x<=10)
	{
		x = 10;
	}

	camera_x = x-100;
	camera_y = 0;

	if (camera_x < 0)
	{
		camera_x = 0;
	}

	if (camera_x >= 3280)
	{
		camera_x = 3280;
	} 

	if (x>3584)
	{
		x = 3584;
	}

	if (y > 320){
		death = 1;
	}
}
else {	
	sprite_index = sprite_koopa1_shell;
	if (death_sound_played == 0){
		audio_stop_sound(sound_BGM);
		audio_play_sound(sound_death, 200, false);
		death_sound_played = 1;
	}
	
	if (death_cooldown != 0){
		death_cooldown --;		
	}
	else{
		
		room_restart();
	}
}

camera_set_view_pos(view_camera[0],camera_x,camera_y)
