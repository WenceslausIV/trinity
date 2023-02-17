/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_BattlePlayer))
	exit;

if(stop_cursor)
	exit;

	
//if(!check_cost(obj_BattlePlayer.stamina, ds_list_find_value(obj_BattleController.player_cards, obj_BattleController.cursor_pos).card_cost))
//{
//		text_failed = instance_create_layer(surface_get_width(application_surface) / 3, surface_get_height(application_surface) / 3, "Instances", obj_DynamicText);
//		text_failed.text_color = c_orange;
//		text_failed.text_to_write = "Not enough Stamina";
//		text_failed.activate_text = true;
//		player_turn = false;
//		exit;
//}

if(no_stamina)
{
		text_failed = instance_create_layer(surface_get_width(application_surface) / 3, surface_get_height(application_surface) / 3, "Instances", obj_DynamicText);
		text_failed.text_color = c_orange;
		text_failed.text_to_write = "Not enough Stamina";
		text_failed.activate_text = true;
		player_turn = false;
		no_stamina = false;
		exit;
}

//if(!obj_BattleEnemy.returning && !obj_BattleEnemy.attacking)
//{
	
	for(i = 0; i < ds_list_size(selected_pos); i++)
	{
		if(ds_list_find_value(held_nums, i) == cursor_pos)
		{
			exit;
		}
	}
	
	player_turn = true;
	selected_pos = cursor_pos
	cursor_pos++;
	ds_list_add(selected_cards, ds_list_find_value(player_cards, selected_pos));
	
	//ds_list_delete(player_cards, selected_pos);
	ds_list_add(held_nums, selected_pos);
	card_track++;
	card_selected = true;

//}


