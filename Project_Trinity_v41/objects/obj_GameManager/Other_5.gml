/// @description Insert description here
// You can write your code in this editor

if(battle_concluded)
{
	if(!playerWon)
	{
		if(player_lives > 0)
		{
			player_lives--;
			if(instance_exists(obj_BasePlayer))
			{
				obj_BasePlayer.x = save_position_x;
				obj_BasePlayer.y = save_position_y;
				
				
				show_debug_message("Number of lives " + string(player_lives))
			}
			
			
		}
		else
		{
			global.gameover = true;
			instance_deactivate_all(true);
			display_lose();
			draw_set_color(c_white)
			draw_text(room_width/ 2, room_height / 2, "Press Enter to return to main menu");
		}
			
	}
	else
	{
	
		for(i = 0; i < ds_list_size(saved_enemies); i++)
		{
			instance_destroy(ds_list_find_value(saved_enemies, i));
				
		}
	}
	
	//battle_concluded = false;
}


