/// @description Insert description here
// You can write your code in this editor

if(!obj_BattleController.player_turn || !obj_BattleController.all_cards_chosen)
{

	exit;
}



reached = true;

cards_ref = obj_BattleController.selected_cards;
state = battle_state.Attacking;

for(i = 0; i < ds_list_size(cards_ref); i++)
{
		stamina_drain += ds_list_find_value(obj_BattleController.selected_cards, i).card_cost * 10;
}

//if(stamina_drain > stamina)
//{
//	obj_BattleController.no_stamina = true;
//	exit;
//}

stamina -= stamina_drain;
stamina_drain = 0

if(stamina < 0)
	stamina = 0;
	
for(i = 0 ; i < ds_list_size(cards_ref); i++)
{
	switch(ds_list_find_value(cards_ref, i).card_type)
		{
			case(type.card_damage):
			{
				global.replace_type = 0;
				
				if(cant_attack)
				{		
						cant_attack = false;
						returning = true;
						obj_BattleController.player_turn = false;		
				}
				else
				{
				
				attacking = true;
				direction = point_direction(x, y, obj_BattleEnemy.x, y);
				speed = 10;
		
				damage += ds_list_find_value(obj_BattleController.selected_cards, i).card_power * 10;
				show_debug_message(string(damage) + " Damage")
				if(!reached)
					exit;
		
				if(ds_list_find_value(obj_BattleController.selected_cards, i).card_name == "Sharp Sword")
				{
					obj_BattleEnemy.bleeding = true;
					with(obj_BattleEnemy)
					{
						switch(obj_BattlePlayer.limb_target)
							{
								case(HEAD):
									bleeding_limb = HEAD;
								break;
							
								case(TORSO):
									bleeding_limb = TORSO;
								break;
							
								case(LEFT_ARM):
									bleeding_limb = LEFT_ARM;
								break;
							
								case(RIGHT_ARM):
									bleeding_limb = RIGHT_ARM;
								break;
							
								case(LEFT_LEG):
									bleeding_limb = LEFT_LEG;
								break;
							
								case(RIGHT_LEG):
									bleeding_limb = RIGHT_LEG;
								break;
							}
					}
					
				}

					if(double_damage)
					{
						damage = damage * 2;
						double_damage = false;
					}
					
					
					if(ds_list_find_value(obj_BattleController.selected_cards, i).card_name == "Divine Rapier")
					{
								if(check_chance(10))
								{
									obj_BattlePlayer.head_hp -= damage;
									if(!head_down)
									{
										if(head_hp <= 0)
											head_hp = 1;
									}
								}
								else if(check_chance(15))
								{
									obj_BattlePlayer.l_arm_hp -= damage;
									if(!l_arm_down)
									{
										if(l_arm_hp <= 0)
											l_arm_hp = 1;
									}
									
								}
								else if(check_chance(15))
								{
									obj_BattlePlayer.r_arm_hp -= damage;
									if(!r_arm_down)
									{
										if(r_arm_hp <= 0)
											r_arm_hp = 1;
									}
								}
								else if(check_chance(15))
								{
									obj_BattlePlayer.l_leg_hp -= damage;
									
									if(!l_leg_down)
									{
										if(l_leg_hp <= 0)
											l_leg_hp = 1;
									}
										
								}
								else if(check_chance(15))
								{
									obj_BattlePlayer.r_leg_hp -= damage;
									if(!r_leg_down)
									{
										if(r_leg_hp <= 0)
											r_leg_hp = 1;
									}
								}
								else
								{
									torso_hp -= damage;
									if(!torso_down)
									{
										if(torso_hp <= 0)
											torso_hp = 1;
									}
										
								}
								
						
					}
				
				
					returning = true;
					obj_BattleController.player_turn = false;
				}
				

			}
			break;
		
			case(type.card_heal):
			{
				global.replace_type = 1;
				
				returning = false;
				obj_BattleController.player_turn = false;
				alarm[9] = 60;
			
				
				healing = ds_list_find_value(obj_BattleController.selected_cards,i).card_power * 10
				text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);

				text_needed.text_to_write = string(healing);
				text_needed.text_color = c_green;
				text_needed.activate_text = true;
			
				heal_player(healing);
				
		
	
			}
			break;
		
			case(type.card_utility):
				
				global.replace_type = 1;
				returning = false;
				obj_BattleController.player_turn = false;
				alarm[9] = 60;
				
				switch(ds_list_find_value(obj_BattleController.selected_cards, i).card_name)
				{
					case "card coin":
					{
						if(check_chance(50))
						{
							double_damage = true;
							text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);
							text_needed.text_to_write = string("Double Damage");
							text_needed.text_color = c_blue;
							text_needed.activate_text = true;
						}
						else
						{
							cant_attack = true;
							text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);
							text_needed.text_to_write = string("Can't Attack");
							text_needed.text_color = c_red;
							text_needed.activate_text = true;
						
						}
						
						
						
					}
					break;
					
					case "card bag":
					{
						if(check_chance(20))
						{
							double_damage = true;
							text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);
							text_needed.text_to_write = string("Double Damage");
							text_needed.text_color = c_blue;
							text_needed.activate_text = true;
							
							
						}
						else
						{
							text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);
							text_needed.text_to_write = string("Nothing");
							text_needed.text_color = c_red;
							text_needed.activate_text = true;
						}
						
					
					
					}
					break;
					
					case "poison":
					{
						obj_BattleEnemy.paralyzed = true;
						text_needed = instance_create_layer(obj_BattleEnemy.x, obj_BattleEnemy.y / 2, "Instances", obj_DynamicText);
						text_needed.text_to_write = string("Paralyzed");
						text_needed.text_color = c_green;
						text_needed.activate_text = true;
						
				
						
					}
					break;
					case "trumpet": 
					{
							stamina_speed = stamina_speed / 2;
							alarm[2] = 30 * room_speed;
							
							text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);
							text_needed.text_to_write = string("Speed");
							text_needed.text_color = c_blue;
							text_needed.activate_text = true;
							
					
						
					}
					break;
				}	
			
			break;
			case(type.card_defend):
			{
				global.replace_type = 1;
				
				returning = false;
				obj_BattleController.player_turn = false;
				alarm[9] = 60;
			
				defense_gain = ds_list_find_value(obj_BattleController.selected_cards, i).card_power * 10
				text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);

				text_needed.text_to_write = string(defense_gain);
				text_needed.text_color = c_teal;
				text_needed.activate_text = true;
			
				defense_hp += defense_gain;
			
				if(defense_hp > defense_hp_max)
				{
					defense_hp = defense_hp_max;
					defense = defense_max;
				}
				
						
			}
			break;
			
			case(type.card_target):
			
				global.replace_type = 2;
				
				returning = false;
				obj_BattleController.player_turn = false;
				alarm[9] = 60;
				
				switch(ds_list_find_value(obj_BattleController.selected_cards, i).card_name)
				{
					case("Target Head"):
						limb_target = HEAD;
					break;
					
					case("Target Torso"):
						limb_target = TORSO;
					break;
					
					case("Target Left Arm"):
						limb_target = LEFT_ARM;
					break;
					
					case("Target Right Arm"):
						limb_target = RIGHT_ARM;
					break;
					
					case("Target Left Leg"):
						limb_target = LEFT_LEG;
					break;
					
					case("Target Right Leg"):
						limb_target = RIGHT_LEG;
					break;	
				}
				
		
			break;
		}
}


if(damage > 1)
	damage_enemy(damage * 3);
else
	damage_enemy(1);

//damage_enemy(9999);

returning = true;
obj_BattleController.attack_finished = true;
damage = 0;

audio_play_sound(snd_wsword_hit, 1,0)


