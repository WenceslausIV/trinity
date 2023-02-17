/// @description Insert description here
// You can write your code in this editor
if(global.changing)
	exit;

damaged_limbs = 0;

if(head_down)
	damaged_limbs++;

if(torso_down)
	damaged_limbs++;
	
if(l_arm_down)
	damaged_limbs++;
	
if(r_arm_down)
	damaged_limbs++;
	
if(l_leg_down)
	damaged_limbs++;
	
if(r_leg_down)
	damaged_limbs++;
	
 if(damaged_limbs > 0)
 {
	dead = true;
	instance_destroy();
 }
 
 

if(returning)
	exit
	

	
if(attack_check && !obj_BattlePlayer.attacking)
{
	
	attack_check = false;
	

	alarm[0] = attack_timer * room_speed
	
	go_attack = true;
	//if(check_chance(attack_chance))
	//{
	//	go_attack = true;
	//	show_debug_message("attacking")
	//}
}

