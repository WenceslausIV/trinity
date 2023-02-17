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



//with(instance_exists(Card_Hand_Placement))
//{
//	if(Card.placement == Card_Hand_Placement.position)
//	{
//		final_x = hand_placement.x;
//		final_y = hand_placement.y;

//	}
//}
select = false;
made_it = false;
//final_x = hand_placement.x;
//final_y = hand_placement.y;

alpha_val = 0;

life_length = 0.1

cue_destroy = false;
depth = hand_placement.depth_pos;

alarm[0] = room_speed / life_length;