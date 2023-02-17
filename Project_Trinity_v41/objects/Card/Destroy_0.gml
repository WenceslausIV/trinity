/// @description Insert description here
// You can write your code in this editor



card_create = instance_create_layer(x, y, "Instances", Card_Destroy);

card_create.sprite = sprite;
card_create._type = _type;
card_create.hand_placement = hand_placement;
card_create.placement = placement;

hand_placement.replace_spot = true;

switch(obj_BattleController.card_track)
	{
		case 2:	
			if(instance_exists(selected_weapon))
			{
				selected_weapon.locked_in = false;
			}
		break;
		
		case 3:
		
			if(instance_exists(selected_utility))
			{
				selected_utility.locked_in = false;
			}
		break;
			
		case 1:	

			if(instance_exists(selected_target))
			{
				selected_target.locked_in = false;
			}
		break;
	}

obj_BattleController.card_track--;