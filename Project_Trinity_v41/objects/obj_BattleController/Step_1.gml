/// @description Insert description here
// You can write your code in this editor


if(attack_finished)
{
	ds_list_clear(selected_cards);
	ds_list_clear(held_nums);
	selected_target.locked_in = false;
	selected_weapon.locked_in = false;
	selected_utility.locked_in = false;
	all_cards_chosen = false;
}

if(cursor_pos < 0)
		cursor_pos = 4;
		
if(cursor_pos > 4)
	cursor_pos = 0;





