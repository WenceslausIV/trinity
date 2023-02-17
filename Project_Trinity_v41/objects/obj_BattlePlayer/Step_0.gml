/// @description Insert description here
// You can write your code in this editor
//if(state == battle_state.Attacking ||state == battle_state.Moving || state == battle_state.Retreating)
//{
//	 obj_BattleController.stop_cursor = true;
//}
//else
//	obj_BattleController.stop_cursor = false;

if(global.changing)
	exit;
	


if(!obj_BattleController.player_turn)
{
	if(returning)
	{
		debug_check++;
		
		//if(debug_check > 30)
		//{
		//	x = start_pos;
		//	y = start_y_pos;
		//}
		
		if(position_meeting(start_pos, start_y_pos, id))
		{
			returning = false;
			attacking = false;
			reached = false;
			obj_BattleController.attack_finished = false;
			obj_BattleController.stop_cursor = false;
			speed = 0;
			debug_check = 0;
			state = battle_state.Idle;
	
		}
		else
		{
			state = battle_state.Retreating;
			direction = point_direction(x, y, start_pos, y);
			speed = 20;
		}
	}

	exit;
}

cards_ref = obj_BattleController.selected_cards;


if(obj_BattleController.all_cards_chosen && !obj_BattleController.attack_finished)
{
	
	for(i = 0; i < ds_list_size(cards_ref); i++)
	{
		stamina_drain += ds_list_find_value(obj_BattleController.selected_cards, i).card_cost * 10;
	}
	
	if(stamina_drain > stamina)
	{
		obj_BattleController.no_stamina = true;
		obj_BattleController.clear_selected = true;
		stamina_drain = 0;
		exit;
	}
	
	
	direction = point_direction(x, y, obj_BattleEnemy.x, y);
	speed = 10;
	state = battle_state.Moving;
	obj_BattleController.stop_cursor = true;
}
