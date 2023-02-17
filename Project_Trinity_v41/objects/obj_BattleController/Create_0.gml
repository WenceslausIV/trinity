/// @description Insert description here
// You can write your code in this editor

cursor_pos = 0;
selected_pos = 0;
reset_card_pos = false;
stop_cursor = false;

updateKey = true;
num_cards = irandom_range(1, 3);
player_cards = ds_list_create();
selected_cards = ds_list_create();
held_nums = ds_list_create();

clear_selected = false;
tracker = 0;

card_track = 0;
all_cards_chosen = false;
attack_finished = false;

player_turn = false;
enemy_turn = false;
card_selected = false;
card_start_y = (surface_get_height(application_surface) / 2) + 250
card_final_y = card_start_y - 25;
card_selected_y = card_start_y;

no_stamina = false;

//with(all)
//{
//	ds_list_add(all_hand_placements, Card_Hand_Placement);
//}

//0 = attack, 1 = healing, 2 = buff, 3 = defense
global.replace_type = 0;

//for(i = 0; i < 2; i++)
//{
//	add_cards_limb()
//}

//add_cards_attack()

//for(i = 0; i < 2; i++)
//{
//	add_cards_utility();
//}


draw_player_cards = false;



