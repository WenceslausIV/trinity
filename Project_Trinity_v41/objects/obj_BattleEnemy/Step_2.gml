/// @description Insert description here
// You can write your code in this editor

if(global.changing)
	exit;

	switch(state)
		{
			case battle_state.Idle:
				sprite_index = sKnightIdle_E
			break;
			
			case battle_state.Attacking:
				sprite_index = sKnightAttack_E
			break;
			
			case battle_state.Damaged:
				sprite_index = sKnightHurt_E
			break;
			
			case battle_state.Dead:
				sprite_index = sKnightDeath_E
			break;
			
			case battle_state.Defending:
				sprite_index = sKnightGuard_E
			break;
			
			case battle_state.Healing:
				sprite_index = sKnightIdle_E
			break;
			
			case battle_state.Moving:
				sprite_index = sKnightWalk_E
			break;
			
			case battle_state.Retreating:
				sprite_index = sKnightJump_E
			break;
		}
		
if(head_hp <= 0)
{
	head_hp = 0;
	head_down = true;
}

if(torso_hp <= 0)
{
	torso_hp = 0;
	torso_down = true;
}

if(l_arm_hp <= 0)
{
	l_arm_hp = 0;
	l_arm_down = true;
}

if(r_arm_hp <= 0)
{
	r_arm_hp = 0;
	r_arm_down = true;
}

if(l_leg_hp <= 0)
{
	l_leg_hp = 0;
	l_leg_down = true;
}

if(r_leg_hp <= 0)
{
	l_leg_down = 0;
	r_leg_down = true;
}