/// @description Insert description here
// You can write your code in this editor

if(go_attack)
{
	audio_play_sound(snd_wsword_hit, 1,0)
	
	text_needed = instance_create_layer(other.x, other.y / 2, "Instances", obj_DynamicText);
	damage = round(irandom_range(5,15)) * attack_strength;
	damage = damage * 2;
	//damage = 300;
	
	if(obj_BattlePlayer.defense_hp > 0)
		text_needed.text_color = c_teal;
	else
	text_needed.text_color = c_red;
	text_needed.text_to_write = string(damage);
	text_needed.activate_text = true;
	
	if(obj_BattlePlayer.defense_hp <= 0)
	{
		if(check_chance(10))
			{
				obj_BattlePlayer.head_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.l_arm_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.r_arm_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.l_leg_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.r_leg_hp -= damage;
			}
			else
			{
				obj_BattlePlayer.torso_hp -= damage;
			}
	}
	else
	{
		obj_BattlePlayer.defense_hp -= damage
		if(obj_BattlePlayer.defense_hp < 0)
		{
		    
			text_needed_defense = instance_create_layer(other.x + 30, (other.y / 2) + 30, "Instances", obj_DynamicText);
			damage = obj_BattlePlayer.defense_hp * -1;
			text_needed_defense.text_color = c_red;
			text_needed_defense.text_to_write = string(damage);
			text_needed_defense.activate_text = true;
			obj_BattlePlayer.hp -= damage
			if(check_chance(10))
			{
				obj_BattlePlayer.head_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.l_arm_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.r_arm_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.l_leg_hp -= damage;
			}
			else if(check_chance(15))
			{
				obj_BattlePlayer.r_leg_hp -= damage;
			}
			else
			{
				obj_BattlePlayer.torso_hp -= damage;
			}
	
		}
	}
	
					
					
	state = battle_state.Attacking;
	obj_BattlePlayer.take_damage = true;
	obj_BattleController.enemy_turn = false;
	returning = true;
	go_attack = false;
	
	
}





