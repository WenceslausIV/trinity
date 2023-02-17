/// @description Insert description here
// You can write your code in this editor



	//card_type = ds_list_find_value(obj_BattleController.player_cards, position).card_type;
	//card_sprite =  ds_list_find_value(obj_BattleController.player_cards, position).card_sprite;


if(replace_spot)
{
	//switch(position)
	//{
	//	case 0:
	//		insert_card_limb(position)			
	//	break;		
	//	case 1:
	//		insert_card_limb(position)
	//	break;
	//	case 2:	
	//		insert_card_attack(position)
	//	break;
	//	case 3:	
	//		insert_cards_utility(position)
	//	break;
	//	case 4:	
	//		insert_cards_utility(position)
	//	break;
	//}
	
	insert_card(position)
	

	
	card_type = ds_list_find_value(obj_BattleController.player_cards, position).card_type;
	card_sprite =  ds_list_find_value(obj_BattleController.player_cards, position).card_sprite;
	card_name = ds_list_find_value(obj_BattleController.player_cards, position).card_name;
	
	new_card = instance_create_layer(x,y, "Instances", Card);
	new_card.placement = position;
	new_card.hand_placement = id;
	new_card.sprite = card_sprite;
	new_card._type = card_type;
	new_card.return_x = x;
	new_card.return_y = y;
	
	replace_spot = false;
}



if(obj_BattleController.cursor_pos == position)
{
	hovered = true;
}
else
	hovered = false;