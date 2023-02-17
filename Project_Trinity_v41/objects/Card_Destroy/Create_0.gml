/// @description Insert description here
// You can write your code in this editor

//fill_spot = 0;
//hand_placements = obj_BattleController.all_hand_placements;

//for(i = 0; i < hand_placements; i++)
//{
//	if(ds_list_find_value(hand_placements, i).card_type == type)
//	{
//		if(ds_list_find_value(hand_placements, i).replace_spot)
//		{
//			fill_spot = i;
//		}
//	}
//}


select = false;
made_it = false;
final_x = x - 300;
final_y = 0;
alpha_val = 1;

life_length = 0.5

cue_destroy = false;

alarm[0] = room_speed / life_length;

