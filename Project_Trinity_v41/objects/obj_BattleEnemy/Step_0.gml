/// @description Insert description here
// You can write your code in this editor

if(global.changing)
	exit;
	
if(!instance_exists(obj_BattlePlayer))
{
	if(position_meeting(start_pos, start_y_pos, id))
		{
			go_attack = false;
			attacking = false;
			debug_check = 0;
			speed = 0;
			state = battle_state.Idle;
			exit;
		}
		else
		{
			direction = point_direction(x,y,start_pos,start_y_pos);
			speed = 20;
			state = battle_state.Retreating;
		}
	exit;
}
	

if(bleeding)
{
	if(!bleed_tick)
	{
		bleed_tick = true;
		alarm[3] = 1 * room_speed;
	}
	
	if(bleed_tick_amount >= 30)
	{
		bleed_tick_amount = 0;
		bleeding = false;
	}
}

if(paralyzed)
{
	go_attack = false;
	if(!stuck_here)
	{
		stuck_here = true;
		state = battle_state.Damaged;
		alarm[1] = 10 * room_speed;
	}
	else
	if(!returning)
		exit;
}


if(go_attack)
{
	if(obj_BattlePlayer.attacking)
		exit;
	
	direction = point_direction(x,y, obj_BattlePlayer.x, y);
	speed = 10;
	attacking = true;
	state = battle_state.Moving;
}
else
{
	if(returning)
	{
		debug_check++;
		
		//if(debug_check > 30)
		//{
		//	show_debug_message("stuck")
		//	x = start_pos
		//	y = start_y_pos;
		//}
		//if(outside_bounds)
		//{
		//		x = start_pos
		//		y = start_y_pos;
		//}
		
		
	
		if(place_meeting(x, y, Enemy_Start_Point))
		{
			show_debug_message("Enemy Returned")
			x = start_pos
			y = start_y_pos;
			returning = false;
			go_attack = false;
			attacking = false;
			outside_bounds = false;
			debug_check = 0;
			speed = 0;
			
			if(paralyzed)
				state = battle_state.Damaged;
			else
				state = battle_state.Idle;
		}
		else
		{
			move_towards_point(start_pos, start_y_pos, 20)
			//direction = point_direction(x,y,Enemy_Start_Point.x,start_y_pos);
			//speed = 20;
			state = battle_state.Retreating;
		}
	}
}





