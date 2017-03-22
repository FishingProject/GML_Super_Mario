/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30D75FEC
/// @DnDArgument : "code" "key_right = keyboard_check(vk_right);						//right key-binding$(13_10)key_left = -keyboard_check(vk_left);						//left key-binding$(13_10)key_jump = keyboard_check_pressed(vk_space);				//jump key-binding$(13_10)key_accel = keyboard_check(vk_f1);							//accelerate key-biding$(13_10)$(13_10)//show_debug_message(key_accel)								//print accelerate $(13_10)$(13_10)move = key_left + key_right;$(13_10)$(13_10)//instant horizontal speed printing$(13_10)show_debug_message("==============move speed=============")$(13_10)show_debug_message(hsp)$(13_10)show_debug_message(move)$(13_10)show_debug_message("==============move end===============")$(13_10)$(13_10)if (death == 0){ $(13_10)	if (hsp == 0)$(13_10)	{$(13_10)		hsp = move * movespeed;									//control speed$(13_10)	}$(13_10)$(13_10)	if (move !=0){$(13_10)		if (key_accel == 1){$(13_10)			hsp += move*accel_speed;							//acceleration$(13_10)		}$(13_10)		else{$(13_10)			if(abs(hsp) > movespeed){$(13_10)			show_debug_message("!!!!!!!!!!!!!friction!!!!!!!!!!!!!!!!!!!")$(13_10)			hsp += player_friction * move;						//friction$(13_10)			}$(13_10)		}$(13_10)	$(13_10)		if(sign(hsp) != sign(move)){$(13_10)			hsp -= turn_friction * move;						//turn around friction $(13_10)		}$(13_10)	} $(13_10)	else {														//stop friction$(13_10)		if(abs(hsp) > 0){$(13_10)			if(hsp > 0){$(13_10)				hsp += stop_friction;$(13_10)				if(hsp < 0){$(13_10)					hsp = 0;$(13_10)				}$(13_10)			}$(13_10)			else if(hsp < 0){$(13_10)				hsp -= stop_friction;$(13_10)				if(hsp > 0){$(13_10)					hsp = 0;$(13_10)				}$(13_10)			}$(13_10)			else$(13_10)				hsp = 0;$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if (hsp > 0){$(13_10)		hsp = min(hsp,max_move_speed);$(13_10)	}$(13_10)	else {$(13_10)		hsp = max(hsp,-max_move_speed);$(13_10)	}$(13_10)$(13_10)$(13_10)	if (vsp < 10) $(13_10)		vsp += grav;$(13_10)$(13_10)$(13_10)	// obj_wall$(13_10)	// jump$(13_10)	if (place_meeting(x,y+1,obj_wall))$(13_10)	{$(13_10)		vsp = key_jump * -jumpspeed;$(13_10)	}$(13_10)$(13_10)	// vertical collision$(13_10)	if (place_meeting(x,y+vsp,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x,y+sign(vsp),obj_wall))$(13_10)		{$(13_10)			y += sign(vsp);$(13_10)		}$(13_10)		vsp = 0;$(13_10)	}$(13_10)$(13_10)	if (place_meeting(x+hsp,y,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		}$(13_10)		hsp = 0;$(13_10)	}$(13_10)$(13_10)	// obj_brick$(13_10)	// jump$(13_10)	if (place_meeting(x,y+1,obj_prizebrick))$(13_10)	{$(13_10)		vsp = key_jump * -jumpspeed;$(13_10)	}$(13_10)$(13_10)	// vertical collision$(13_10)	if (place_meeting(x,y+vsp,obj_prizebrick))$(13_10)	{$(13_10)		while(!place_meeting(x,y+sign(vsp),obj_prizebrick))$(13_10)		{$(13_10)			y += sign(vsp);$(13_10)		}$(13_10)		vsp = 0;$(13_10)	}$(13_10)$(13_10)	if (place_meeting(x+hsp,y,obj_prizebrick))$(13_10)	{$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_prizebrick))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		}$(13_10)		hsp = 0;$(13_10)	}$(13_10)$(13_10)	// obj_wall$(13_10)	// jump$(13_10)	if (place_meeting(x,y+1,obj_brick))$(13_10)	{$(13_10)		vsp = key_jump * -jumpspeed;$(13_10)	}$(13_10)$(13_10)	// vertical collision$(13_10)	if (place_meeting(x,y+vsp,obj_brick))$(13_10)	{$(13_10)		while(!place_meeting(x,y+sign(vsp),obj_brick))$(13_10)		{$(13_10)			y += sign(vsp);$(13_10)		}$(13_10)		vsp = 0;$(13_10)	}$(13_10)$(13_10)	if (place_meeting(x+hsp,y,obj_brick))$(13_10)	{$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_brick))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		}$(13_10)		hsp = 0;$(13_10)	}$(13_10)$(13_10)	if (move !=0){$(13_10)		image_xscale=-move;$(13_10)	}$(13_10)$(13_10)	x += hsp;$(13_10)	y += vsp;$(13_10)$(13_10)	if (x<=10)$(13_10)	{$(13_10)		x = 10;$(13_10)	}$(13_10)$(13_10)	camera_x = x-100;$(13_10)	camera_y = 0;$(13_10)$(13_10)	if (camera_x < 0)$(13_10)	{$(13_10)		camera_x = 0;$(13_10)	}$(13_10)$(13_10)	if (camera_x >= 3280)$(13_10)	{$(13_10)		camera_x = 3280;$(13_10)	} $(13_10)$(13_10)	if (x>3584)$(13_10)	{$(13_10)		x = 3584;$(13_10)	}$(13_10)$(13_10)	if (y > 320){$(13_10)		death = 1;$(13_10)	}$(13_10)}$(13_10)else {	$(13_10)	object_set_sprite(obj_Player, koopa1_shell);$(13_10)	if (death_cooldown != 0){$(13_10)		death_cooldown --;		$(13_10)	}$(13_10)	else$(13_10)		room_restart();$(13_10)}$(13_10)$(13_10)camera_set_view_pos(view_camera[0],camera_x,camera_y)$(13_10)"

{
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

	if (move !=0){
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
	object_set_sprite(obj_Player, koopa1_shell);
	if (death_cooldown != 0){
		death_cooldown --;		
	}
	else
		room_restart();
}

camera_set_view_pos(view_camera[0],camera_x,camera_y)

}

