/// @description Insert description here
// You can write your code in this editor

	
if(stop_cursor)
{
	cursor_pos = 0;
	exit;
}
	
if(!instance_exists(obj_BattlePlayer))
	exit;
if(!reset_card_pos)
{
	card_selected_y = lerp(card_start_y, card_final_y, 0.2)
}
else
	card_selected_y = card_start_y;
	

if(clear_selected)
{
			selected_weapon.release = true;
			selected_utility.release = true;
			selected_target.release = true;
			ds_list_clear(obj_BattleController.selected_cards)
			ds_list_clear(obj_BattleController.held_nums);
			tracker = 0;
			all_cards_chosen = false;
			attack_finished = false;
			clear_selected = false;
			card_track = 0;
		
}
	
if(keyboard_check(vk_left))
{
	
	if(updateKey)
	{
		updateKey = false;
		alarm[0] = 0.2 * room_speed;
		reset_card_pos = true;
		
		cursor_pos -= 1;
		
		if(ds_list_size(held_nums) > 0)
		{
			show_debug_message("checking num")
			for(i = 0; i < ds_list_size(held_nums) ; i++)
			{
				if(cursor_pos == ds_list_find_value(held_nums, i))
				{
					cursor_pos--;
				}
			}
		}
		
		
	
		
	}

}

if(keyboard_check(vk_right))
{
	
	if(updateKey)
	{
		updateKey = false;
		alarm[0] = 0.2 * room_speed;
		reset_card_pos = true;
		
		cursor_pos += 1;
		
		if(ds_list_size(held_nums) > 0)
		{
			show_debug_message("checking num")
			for(i = 0; i < ds_list_size(held_nums) ; i++)
			{
				if(cursor_pos == ds_list_find_value(held_nums, i))
				{
					cursor_pos++;
				}
			}
		}
		
	
		
	}
}

reset_card_pos = false;


	if(keyboard_check_pressed(vk_backspace))
	{
		
		clear_selected = true;
		card_track = 0;
			//selected_weapon.release = true;
			//selected_utility.release = true;
			//selected_target.release = true;
			//ds_list_clear(obj_BattleController.selected_cards)
			//ds_list_clear(obj_BattleController.held_nums);
			//tracker = 0;

		//if(ds_list_size(held_nums) > 0)
		//{
		//	var pos = int64(ds_list_size(obj_BattleController.selected_cards) - 1);
			
		//	ds_list_delete(obj_BattleController.selected_cards, pos)
		//	ds_list_delete(obj_BattleController.held_nums, pos);
			
		//}
		//else
		//{
		//	ds_list_clear(obj_BattleController.selected_cards)
		//	ds_list_clear(obj_BattleController.held_nums);
		//}
	
		
}

