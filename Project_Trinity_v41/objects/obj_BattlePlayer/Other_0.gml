/// @description Insert description here
// You can write your code in this editor

if(damaged_limbs < 1)
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
