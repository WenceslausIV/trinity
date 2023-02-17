/// @description Insert description here
// You can write your code in this editor

enum battle_state
{
	Idle,
	Attacking,
	Defending,
	Damaged,
	Healing,
	Retreating,
	Moving,
	Dead
		
}

#macro HEAD 1
#macro TORSO 2
#macro LEFT_ARM 3
#macro RIGHT_ARM 4
#macro LEFT_LEG 5
#macro RIGHT_LEG 6

limb_target = TORSO;


state = battle_state.Idle;

idle_start = 1;
idle_end = 59;
walk_start = 61
walk_end = 110
attack_start = 111
attack_end = 140
jump_start = 141
jump_end = 160
damaged_start = 181
damaged_end = 200
defending_start = 161
defending_end = 180
death_start = 201
death_end = 253


