/// @description Insert description here
// You can write your code in this editor

if(global.changing)
	exit;

	switch(state)
		{
			case battle_state.Idle:
				sprite_index = sKnightIdle
			break;
			
			case battle_state.Attacking:
				sprite_index = sKnightAttack
			break;
			
			case battle_state.Damaged:
				sprite_index = sKnightHurt
			break;
			
			case battle_state.Dead:
				sprite_index = sKnightDeath
			break;
			
			case battle_state.Defending:
				sprite_index = sKnightGuard
			break;
			
			case battle_state.Healing:
				sprite_index = sKnightIdle
			break;
			
			case battle_state.Moving:
				sprite_index = sKnightWalk
			break;
			
			case battle_state.Retreating:
				sprite_index = sKnightJump
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
	l_leg_hp= 0;
	l_leg_down = true;
}

if(r_leg_hp <= 0)
{
	r_leg_hp = 0;
	r_leg_down = true;
}


torso_per = torso_hp / torso_hp_max;
head_per = head_hp / head_hp_max;
l_arm_per = l_arm_hp / l_arm_hp_max;
r_arm_per = r_arm_hp / r_arm_hp_max;
l_leg_per = l_leg_hp / l_leg_hp_max;
r_leg_per = r_leg_hp / r_leg_hp_max;

