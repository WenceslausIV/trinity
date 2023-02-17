/// @description bleed tick damage 
// You can write your code in this editor


bleed_tick_amount++;

				switch(bleeding_limb)
						{
							case(HEAD):
								head_hp -= 1;
							break;
							
							case(TORSO):
								torso_hp -= 1;
							break;
							
							case(LEFT_ARM):
								l_arm_hp -= 1;
							break;
							
							case(RIGHT_ARM):
								r_arm_hp -= 1;
							break;
							
							case(LEFT_LEG):
								l_leg_hp -= 1;
							break;
							
							case(RIGHT_LEG):
								r_leg_hp -= 1;
							break;
						}

text_needed = instance_create_layer(other.x, other.y / 2, "Instances", obj_DynamicText);
text_needed.text_color = c_red;
text_needed.text_to_write = string(1);
text_needed.activate_text = true;

bleed_tick = false;
