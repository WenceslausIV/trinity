/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(global.gameover)
{

	exit;
}

if(state = npc_state.afraid)
{
	

	if(keyboard_check_pressed(ord("E")))
	{
		if(inRange)
		{
			follow_player = !follow_player;
			
			text_needed = instance_create_layer(x - 50, y - 50, "Instances", obj_DynamicText)
			text_needed.text_color = c_black
			if(!follow_player)
				text_needed.text_to_write = "Ok I'll wait here"
			else
				text_needed.text_to_write = "Help! Finally"
			text_needed.activate_text = true;
			
			if(follow_player)
				obj_GameManager.player_protector = true
			
			if(obj_GameManager.player_protector)
			{
				obj_GameManager.npc_protected = sprite_index;
				obj_GameManager.npc_saving = id;
				obj_GameManager.save_position_x = obj_BasePlayer.x;
				obj_GameManager.save_position_y = obj_BasePlayer.y;
			}
			else
			{
				if(instance_exists(hub_spawn))
				{
					obj_GameManager.save_position_x = hub_spawn.x;
					obj_GameManager.save_position_y = hub_spawn.y;
				}
			}
			
			
		}
	}

if(obj_BasePlayer.saved)
{
	saved = true;
	drawSomething = false;
	if(obj_GameManager.npc_saving == id)
	{
		obj_GameManager.player_protector = false
		follow_player = false;
		solid = false;
		if(room == north_room || room == south_room)
		{
			direction = point_direction(x, y, x, obj_safe_position.y )
			speed = 5;
		}
		
		if(room == west_room || room == east_room)
		{
			direction = point_direction(x, y, obj_safe_position.x, y )
			speed = 5;
		}
	}
	exit;
}

	if(!follow_player)
	{
		change_speed = 0;
		speed = 0;
		
	
		exit;
	}

	if(!inRange)
		solid = true;

	//if(disable_col)
	//	mask_index = spr_blank_sprite
	//else
	//	mask_index = spr_npc
	
	if(distance_to_object(obj_BasePlayer) > distance_range)
	{
		change_speed += 0.1;
	
		if(change_speed > move_speed_max)
			change_speed = move_speed_max;
		
	}
	else
	{
		change_speed -= 0.1;
	
		if(change_speed < 0)
			change_speed = 0;
	}
	

	
	//speed = change_speed;
	//path = path_add()
	//	if(mp_grid_path(global.grid, path, x,y, obj_BasePlayer.x, obj_BasePlayer.y, 1))
	//			path_start(path, 2,  3, false);
	
	if(distance_to_object(obj_BasePlayer) < 8)
		change_speed = 0; 
	
	move_towards_point(obj_BasePlayer.x, obj_BasePlayer.y , change_speed)
}

if(state = npc_state.safe)
{
	if(inRange)
	{
		if(keyboard_check(ord("E")))
		{
			text_needed = instance_create_layer(x - 50, y - 50, "Instances", obj_DynamicText)
			text_needed.text_color = c_black
			text_needed.text_to_write = "Thank you for saving me!"
			text_needed.activate_text = true;
		
		}
	}
	

}