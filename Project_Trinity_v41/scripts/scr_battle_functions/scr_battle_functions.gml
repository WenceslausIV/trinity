// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//created by tashawn deshazier
enum type
{
	card_heal,
	card_damage,
	card_defend,
	card_utility,
	card_target,
	card_blank
}

function card_struct(_CardName, _CardPower, _CardType, _CardCost, _CardSprite) constructor{
	card_name = _CardName;
	card_cost = _CardCost;
	card_type = _CardType;
	card_power = _CardPower;
	card_sprite = _CardSprite;
}

function draw_cards(card, y_pos){
	
	draw_sprite(card, 1 , 320 * (i + 1) , y_pos)
			
}

function draw_target_card(card, y_pos)
{
	
	draw_sprite(ds_list_find_value(global.all_target_cards, 0), 1 , surface_get_width(application_surface) / 2, 300);
			
}

function remove_card(pos)
{
	ds_list_delete(obj_BattleController.player_cards, pos);
}

function replace_card()
{		
	switch(global.replace_type)
	{
		case 0:
			add_cards_attack();
		break;
		
		case 1:
			add_cards_utility();
		break;
		
		case 2:
			add_cards_limb();
		break;
	
	}
}

function insert_card(placement)
{		
	card_replacing = replacing_card_chance();
	
	switch(card_replacing)
	{
		case 0:
			insert_card_attack(placement);
		break;
		
		case 1:
			insert_cards_utility(placement);
		break;
		
		case 2:
			insert_card_limb(placement);
		break;
	
	}
	
	
}

function add_cards_attack()
{
	randomIndex = card_power_chance()
	ds_list_add(obj_BattleController.player_cards, ds_list_find_value(global.all_attack_cards, randomIndex));
}



function add_cards_utility()
{
	utility_kind = utility_card_type()
	
	switch(utility_kind)
	{
		case 0:
			add_cards_healing();
		break;
		
		case 1:
			add_cards_defending();
		break;
		
		case 2:
			add_cards_buffing();
		break;
	}
}

function add_cards_healing()
{
	randomIndex = card_power_chance();
	ds_list_add(obj_BattleController.player_cards, ds_list_find_value(global.all_heal_cards, randomIndex));
}

function add_cards_buffing()
{
	
	randomIndex = card_utility_chance()
	ds_list_add(obj_BattleController.player_cards, ds_list_find_value(global.all_utility_cards, randomIndex));
	
}

function add_cards_defending()
{

	randomIndex = card_power_chance();
	ds_list_add(obj_BattleController.player_cards, ds_list_find_value(global.all_defense_cards, randomIndex));
}

function add_cards_limb()
{
	randomIndex = card_limb_chance()
	ds_list_add(obj_BattleController.player_cards, ds_list_find_value(global.all_target_cards, randomIndex));
}

//////////////////////////////////////

function insert_card_attack(placement)
{
	randomIndex = card_power_chance()
	ds_list_replace(obj_BattleController.player_cards, placement, ds_list_find_value(global.all_attack_cards, randomIndex));
}

function insert_card_healing(placement)
{
	randomIndex = card_power_chance();
	ds_list_replace(obj_BattleController.player_cards, placement, ds_list_find_value(global.all_heal_cards, randomIndex));
}


function insert_card_buffing(placement)
{
	
	randomIndex = card_utility_chance()
	ds_list_replace(obj_BattleController.player_cards, placement, ds_list_find_value(global.all_utility_cards, randomIndex));
	
}

function insert_card_defending(placement)
{

	randomIndex = card_power_chance();
	ds_list_replace(obj_BattleController.player_cards, placement, ds_list_find_value(global.all_defense_cards, randomIndex));
}

function insert_card_limb(placement)
{
	randomIndex = card_limb_chance()
	ds_list_replace(obj_BattleController.player_cards, placement, ds_list_find_value(global.all_target_cards, randomIndex));
}

function insert_cards_utility(placement)
{
	utility_kind = utility_card_type()
	
	switch(utility_kind)
	{
		case 0:
			insert_card_healing(placement);
		break;
		
		case 1:
			insert_card_defending(placement);
		break;
		
		case 2:
			insert_card_buffing(placement);
		break;
	}
}
///////////////////////////////////////////


function create_cards()
{
	//creating Attack Cards _CardName, _CardPower, _CardType, _CardCost, _CardSprite
	ds_list_add(global.all_attack_cards, new card_struct("Sword", 1, type.card_damage, 1, spr_sword_card))
	ds_list_add(global.all_attack_cards, new card_struct("Mace", 2, type.card_damage, 2, spr_mace))
	ds_list_add(global.all_attack_cards, new card_struct("Sharp Sword", 2, type.card_damage, 2, spr_sharp_sword))
	ds_list_add(global.all_attack_cards, new card_struct("Divine Rapier", 7, type.card_damage, 4, spr_divine_rapier))
	
	//creating defense cards _CardName, _CardPower, _CardType, _CardCost, _CardSprite
	ds_list_add(global.all_defense_cards, new card_struct("Defense 1", 1, type.card_defend, 1, spr_shield1))
	ds_list_add(global.all_defense_cards, new card_struct("Defense 2", 2, type.card_defend, 2,spr_shield2))
	ds_list_add(global.all_defense_cards, new card_struct("Defense 3", 3, type.card_defend, 3, spr_shield3))
	ds_list_add(global.all_defense_cards, new card_struct("Defense 4", 4, type.card_defend, 4, spr_shield4))
				
	//creating buff cards _CardName, _CardPower, _CardType, _CardCost, _CardSprite
	ds_list_add(global.all_utility_cards, new card_struct("card coin", 1, type.card_utility, 2, spr_coin_flip))
	ds_list_add(global.all_utility_cards, new card_struct("card bag", 1, type.card_utility, 2, spr_lottery))
	ds_list_add(global.all_utility_cards, new card_struct("poison", 1, type.card_utility, 2, spr_poison))
	ds_list_add(global.all_utility_cards, new card_struct("trumpet", 1, type.card_utility, 4, spr_trumpet))
	//creating healing cards _CardName, _CardPower, _CardType, _CardCost, _CardSprite
	ds_list_add(global.all_heal_cards, new card_struct("Healing 1", 1, type.card_heal, 1, spr_heal1))
	ds_list_add(global.all_heal_cards, new card_struct("Healing 2", 2, type.card_heal, 2, spr_heal2))
	ds_list_add(global.all_heal_cards, new card_struct("Healing 3", 3, type.card_heal, 3, spr_heal3))
	ds_list_add(global.all_heal_cards, new card_struct("Healing 4", 4, type.card_heal, 4, spr_heal4))
	
	//creating target cards _CardName, _CardPower, _CardType, _CardCost, _CardSprite
	ds_list_add(global.all_target_cards, new card_struct("Target Head", 0, type.card_target, 4, spr_head))
	ds_list_add(global.all_target_cards, new card_struct("Target Torso", 0, type.card_target, 3, spr_torso))
	ds_list_add(global.all_target_cards, new card_struct("Target Left Arm", 0, type.card_target, 2, spr_l_arm))
	ds_list_add(global.all_target_cards, new card_struct("Target Right Arm", 0, type.card_target, 2, spr_r_arm))
	ds_list_add(global.all_target_cards, new card_struct("Target Left Leg", 0, type.card_target, 2, spr_l_leg))
	ds_list_add(global.all_target_cards, new card_struct("Target Right Leg", 0, type.card_target, 2, spr_r_leg))
}

function check_cost(p_stamina, card_cost)
{
	return p_stamina >= card_cost * 10
}

function damage_enemy(damage)
{
with (obj_BattleEnemy)
	{
						
						//hp -= obj_BattlePlayer.damage;
						
			switch(obj_BattlePlayer.limb_target)
				{
					case(HEAD):
						head_hp -= damage;
					break;
							
						case(TORSO):
								torso_hp -= damage;
							break;
							
							case(LEFT_ARM):
								l_arm_hp -= damage;
							break;
							
							case(RIGHT_ARM):
								r_arm_hp -= damage;
							break;
							
							case(LEFT_LEG):
								l_leg_hp -= damage;
							break;
							
							case(RIGHT_LEG):
								r_leg_hp -= damage;
							break;
						}
					}
					
					text_needed = instance_create_layer(other.x, other.y / 2, "Instances", obj_DynamicText);

					text_needed.text_to_write = string(damage);
					text_needed.text_color = c_red;
					text_needed.activate_text = true;
	
}

function damage_player(damage)
{
}

function heal_player(healing)
{

	limb_heal = irandom_range(1, 6);
	
	//if(obj_BattlePlayer.head_per < obj_BattlePlayer.torso_per)
	//	limb_heal = 1;
	//if(obj_BattlePlayer.torso_per < obj_BattlePlayer.l_arm_per)
	//	limb_heal = 2;
	//if(obj_BattlePlayer.l_arm_per < obj_BattlePlayer.r_arm_per)
	//	limb_heal = 3;
	//if(obj_BattlePlayer.r_arm_per < obj_BattlePlayer.l_leg_per)
	//	limb_heal = 4;
	//if(obj_BattlePlayer.l_leg_per < obj_BattlePlayer.r_leg_per)
	//	limb_heal = 5;
	//if(obj_BattlePlayer.r_leg_per < obj_BattlePlayer.head_per)
	//	limb_heal = 6;

		
	switch(limb_heal)
	{
		case 1:
			obj_BattlePlayer.head_hp += healing;
			if(obj_BattlePlayer.head_hp > obj_BattlePlayer.head_hp_max)
			{
				obj_BattlePlayer.head_hp = obj_BattlePlayer.head_hp_max
			}
		break;
		case 2:
			obj_BattlePlayer.torso_hp += healing;
			if(obj_BattlePlayer.torso_hp > obj_BattlePlayer.torso_hp_max)
			{
				obj_BattlePlayer.torso_hp = obj_BattlePlayer.torso_hp_max
			}
		break;
		case 3:
			obj_BattlePlayer.l_arm_hp += healing;
			if(obj_BattlePlayer.l_arm_hp > obj_BattlePlayer.l_arm_hp_max)
			{
				obj_BattlePlayer.l_arm_hp = obj_BattlePlayer.l_arm_hp_max
			}
		break;
		case 4:
			obj_BattlePlayer.r_arm_hp += healing;
			if(obj_BattlePlayer.r_arm_hp > obj_BattlePlayer.r_arm_hp_max)
			{
				obj_BattlePlayer.r_arm_hp = obj_BattlePlayer.r_arm_hp_max
			}
		break;
		case 5:
			obj_BattlePlayer.l_leg_hp += healing;
			if(obj_BattlePlayer.l_leg_hp > obj_BattlePlayer.l_leg_hp_max)
			{
				obj_BattlePlayer.l_leg_hp = obj_BattlePlayer.l_leg_hp_max
			}
		break;
		case 6:
			obj_BattlePlayer.r_leg_hp += healing;
			if(obj_BattlePlayer.r_leg_hp > obj_BattlePlayer.r_leg_hp_max)
			{
				obj_BattlePlayer.r_leg_hp = obj_BattlePlayer.r_leg_hp_max
			}
		break;

		
	}
		
	
}

 