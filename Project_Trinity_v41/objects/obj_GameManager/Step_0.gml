/// @description Insert description here
// You can write your code in this editor

if(global.gameover || global.gamewon)
{
	draw_text(room_width/ 2, room_height / 2, "Press Enter to return to main menu");
	
	if(global.gameover)
	{
		instance_deactivate_all(true);
		//display_lose();
	}
	
	if(global.gamewon)
		display_win();
		
	
	if(keyboard_check_pressed(vk_enter))
	{
		game_restart();
	}
	
	exit;
}
if(start_battle)
{
	if(!inbattle)
	{
		prev_room = room
		show_debug_message("The Previous room is " + room_get_name(room))
		
		
		//room_persistent = true;
		//room_goto(BattleRoom);
		if(instance_exists(obj_BasePlayer))
		{
			save_battle_x = obj_BasePlayer.x
			save_battle_y = obj_BasePlayer.y
		}
		start_transition(BattleRoom, room_transition_close, room_transition_open)
		
	
		start_battle = false;
		inbattle = true;
	}
	
}
	if(keyboard_check_pressed(ord("1")))
	{
		battle_concluded = true;
		playerWon = true;
		inbattle = false;
		room_goto(hub_room);
	}

	if(keyboard_check_pressed(ord("2")))
	{
		battle_concluded = true;
		playerWon = false;
		room_goto(prev_room);

	}
if(global.changing || inbattle)
	exit;

show_debug_message(string(ds_list_size(saved_npc)) + " in Hub");




view_width = camera_get_view_width(view_camera[0]) / 2
view_height = camera_get_view_height(view_camera[0]) / 2

if(instance_exists(obj_BasePlayer))
{
	clamp_camera_x = clamp(obj_BasePlayer.x - view_width, view_x_min, view_x_max);
	clamp_camera_y = clamp(obj_BasePlayer.y - view_height, view_y_min, view_y_max);
	camera_set_view_pos(view_camera[0],clamp_camera_x,clamp_camera_y);
}
	
