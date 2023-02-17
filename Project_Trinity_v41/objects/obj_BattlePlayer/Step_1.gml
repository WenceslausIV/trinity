/// @description Insert description here
// You can write your code in this editor

if(global.changing)
	exit;

if(dead)
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
	
	
	if(obj_GameManager.player_lives <= 0)
	{
		dead = true;
		instance_destroy();
		
	}
	else
	{
		escape = true;
		instance_destroy();
	}
}

if(take_damage)
{
	take_damage = false;
	state = battle_state.Damaged;
}


if(defense_hp > 0)
{
	defense = defense_hp / 10;
			
	if(defense_hp < 10 )
			defense = 1;
			
	state = battle_state.Defending;
}

if(defense_hp <= 0)
{
	defense = 0;
	defense_hp = 0;
	
	state = battle_state.Idle;

}


if(stamina < stamina_max)
{
	if(update_stamina)
	{
		update_stamina = false;
		alarm[1] = stamina_speed * room_speed;
		stamina += stamina_tick;
		
		if(stamina > stamina_max)
		{
			stamina = stamina_max;
		}
	}
}

if(instance_exists(obj_BattleEnemy))
{
	if(obj_BattleEnemy.head_down)
		limb_target = TORSO;
	
	if(obj_BattleEnemy.torso_down)
		limb_target = LEFT_ARM;
	
	if(obj_BattleEnemy.l_arm_down)
		limb_target = RIGHT_ARM;
	
	if(obj_BattleEnemy.r_arm_down)
		limb_target = LEFT_LEG;
	
	if(obj_BattleEnemy.l_leg_down)
		limb_target = RIGHT_LEG;
	
	if(obj_BattleEnemy.r_leg_down)
		limb_target = TORSO;
}


