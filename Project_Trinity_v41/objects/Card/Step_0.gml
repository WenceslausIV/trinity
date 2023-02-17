/// @description Insert description here
// You can write your code in this editor



//if(obj_BattleController.cursor_pos == placement)
//{
//	hovered = true;
//}
//else
//	hovered = false;

//card_ref = obj_BattleController.player_cards;
//_type = ds_list_find_value(card_ref, placement).card_type;
//sprite = ds_list_find_value(card_ref, placement).card_sprite;
if(obj_BattleController.attack_finished && select && made_it)
{	
	x = final_x;
	y = final_y;
	instance_destroy();
}


if(hand_placement.hovered && obj_BattleController.card_selected)
{
	switch(obj_BattleController.card_track)
	{
		case 1:	
			if(instance_exists(selected_target))
			{
				 if(selected_target.locked_in)
				 {
					 obj_BattleController.card_selected = false
					select = false;
					exit;
				 }
				show_debug_message("Weapon Locked In");
				selected_target.locked_in = true;
				final_x = selected_target.x
				final_y = selected_target.y;
			}
		break;
		
		case 2:
		
			if(instance_exists(selected_weapon))
			{
				if(selected_weapon.locked_in)
				{
					obj_BattleController.card_selected = false;
					select = false;
					exit;
				}
				show_debug_message("Utility Locked In");
				selected_weapon.locked_in = true;
				final_x = selected_weapon.x
				final_y = selected_weapon.y;
			}
		break;
		
		case 3:
		
			if(instance_exists(selected_utility))
			{
				if(selected_utility.locked_in)
				{
					obj_BattleController.card_selected = false;
					select = false;
					exit;
				}
				
				show_debug_message("Utility Locked In");
				selected_utility.locked_in = true;
				final_x = selected_utility.x
				final_y = selected_utility.y;
			}
		break;
		
		
	}
	//switch(_type)
	//{
	//	case type.card_damage:	
	//		if(instance_exists(selected_weapon))
	//		{
	//			 if(selected_weapon.locked_in)
	//			 {
	//				 obj_BattleController.card_selected = false
	//				select = false;
	//				exit;
	//			 }
	//			show_debug_message("Weapon Locked In");
	//			selected_weapon.locked_in = true;
	//			final_x = selected_weapon.x
	//			final_y = selected_weapon.y;
	//		}
	//	break;
		
	//	case type.card_utility:
		
	//		if(instance_exists(selected_utility))
	//		{
	//			if(selected_utility.locked_in)
	//			{
	//				obj_BattleController.card_selected = false;
	//				select = false;
	//				exit;
	//			}
	//			show_debug_message("Utility Locked In");
	//			selected_utility.locked_in = true;
	//			final_x = selected_utility.x
	//			final_y = selected_utility.y;
	//		}
	//	break;
		
	//	case type.card_defend:
		
	//		if(instance_exists(selected_utility))
	//		{
	//			if(selected_utility.locked_in)
	//			{
	//				obj_BattleController.card_selected = false;
	//				select = false;
	//				exit;
	//			}
				
	//			show_debug_message("Utility Locked In");
	//			selected_utility.locked_in = true;
	//			final_x = selected_utility.x
	//			final_y = selected_utility.y;
	//		}
	//	break;
		
	//	case type.card_heal:
		
	//		if(instance_exists(selected_utility))
	//		{
	//			if(selected_utility.locked_in)
	//			{
	//				obj_BattleController.card_selected = false;
	//				select = false;
	//				exit;
	//			}
	//			show_debug_message("Utility Locked In");
	//			selected_utility.locked_in = true;
	//			final_x = selected_utility.x
	//			final_y = selected_utility.y;
	//		}
	//	break;
		
	//	case type.card_target:	

	//		if(instance_exists(selected_target))
	//		{
	//			if(selected_target.locked_in)
	//			{
	//				obj_BattleController.card_selected = false;
	//				select = false;
	//				exit;
	//			}
				
	//			show_debug_message("Target Locked In");
	//			selected_target.locked_in = true;
	//			final_x = selected_target.x
	//			final_y = selected_target.y;
	//		}
	//	break;
	//}
	
	obj_BattleController.card_selected = false;
	hand_placement.replace_spot = false;
	image_angle = 90
	
	select = true;
	//remove_card(placement);
	//instance_destroy()
}

if(!locked_with && release)
{


	if(position_meeting(x, y,hand_placement))
	{
		release = false;
		select = false;
		x = return_x;
		y = return_y;
	}

	image_angle = hand_placement.spr_rot;
	x = lerp(x,return_x, 0.5);
	y = lerp(y,return_y, 0.5);
	
	/*
		struct          -> create a base struct      get the user input   -------->          add struct to array --->array.Sort(depth >= )
		{
			item_name,    | myStruct             | myStruct.item_name = user_name         | 
			item_cost,    |                      | myStruct.item_cost = user_cost         |		
			item_category |                      | myStruct.item_category = user_category |     
		}
	*/
}

if(select && !release)
{
	x = lerp(x,final_x, 0.5);
	y = lerp(y,final_y, 0.5);	
}

if(x >= final_x - 15 || x <= final_x + 15 && y >= final_y + 15 || y <= final_y - 15)
{
	made_it = true;
}

//if(made_it)
//{
//	instance_destroy();
//}