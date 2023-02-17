/// @description Insert description here
// You can write your code in this editor


//card_type = ds_list_find_value(obj_BattleController.player_cards, position).card_type;
//card_sprite =  ds_list_find_value(obj_BattleController.player_cards, position).card_sprite;

switch(card_type)
	{
		case 0:
			add_cards_attack()
			
		break;
		
		case 1:
			add_cards_utility()
		break;
		
		case 2:	
			add_cards_limb()
		break;
	}
	
	card_type = ds_list_find_value(obj_BattleController.player_cards, position).card_type;
	card_sprite =  ds_list_find_value(obj_BattleController.player_cards, position).card_sprite;
	card_name = ds_list_find_value(obj_BattleController.player_cards, position).card_name;
	


	new_card = instance_create_layer(x,y, "Instances", Card);
	new_card.placement = position;
	new_card.hand_placement = id;
	new_card.return_x = x;
	new_card.return_y = y;
	replace_spot = false;


depth = depth_pos;

spr_rot = 0;