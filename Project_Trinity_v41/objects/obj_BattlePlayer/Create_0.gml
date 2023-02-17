/// @description Insert description here
// You can write your code in this editor
event_inherited();

//obj_sequence = layer_sequence_create("sequence_layer", x, y,Sequence_test);
attacking = false;
returning = false;

damage = 0;
healing = 0;
defense_gain = 0;

stamina_bars = stamina / 10;
stamina_tick = 5;
update_stamina = true;
stamina_drain = 0;
double_damage = false;
cant_attack = false;
escape = false;


start_pos = Player_Start_Point.x;
start_y_pos = Player_Start_Point.y;
debug_check = 0
reached = false;
state = battle_state.Idle

torso_per = torso_hp / torso_hp_max;
head_per = head_hp / head_hp_max;
l_arm_per = l_arm_hp / l_arm_hp_max;
r_arm_per = r_arm_hp / r_arm_hp_max;
l_leg_per = l_leg_hp / l_leg_hp_max;
r_leg_per = r_leg_hp / r_leg_hp_max;


