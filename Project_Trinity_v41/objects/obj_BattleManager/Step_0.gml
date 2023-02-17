/// @description Insert description here
// You can write your code in this editor
if(global.changing)
	exit

switch(unit_phase)
{
	case obj_phase.default_phase:
	{
		obj_BattleController.draw_player_cards = true;
		unit_phase = obj_phase.start_turn
	}
	break;
	case obj_phase.check_hp:
	{
		if( !instance_exists(obj_BattlePlayer))
			unit_phase = obj_phase.lose_battle;
		
		else if( !instance_exists(obj_BattleEnemy))
			unit_phase = obj_phase.win_battle;
		
		else
			unit_phase = obj_phase.end_turn;
	}
	break;
	case obj_phase.start_turn:
	{
		unit_phase = obj_phase.wait_turn;
	}
	break;
	case obj_phase.end_turn:
	{
		unit_phase = obj_phase.start_turn;
	}
	break;
	case obj_phase.process_turn:
	{
		unit_phase =  obj_phase.check_hp;
	}
	break;
	case obj_phase.wait_turn:
	{
		unit_phase = obj_phase.process_turn;
	}
	break;
	case obj_phase.win_battle:
	{
		if(wait_anim)
			exit;
		obj_GameManager.battle_concluded = true;
		obj_GameManager.playerWon = true;
		//room_goto(obj_GameManager.prev_room);
		
	}
	break;
	case obj_phase.lose_battle:
	{
		if(wait_anim)
			exit;
		obj_GameManager.battle_concluded = true;
		obj_GameManager.playerWon = false;
	
		//om_goto(obj_GameManager.prev_room);
	
	}
	break;
	
}


