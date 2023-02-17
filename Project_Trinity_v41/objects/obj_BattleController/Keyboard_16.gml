/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(ord("H")))
{
	obj_BattlePlayer.hp += 100;
}

if(keyboard_check_pressed(ord("S")))
{
	obj_BattlePlayer.stamina = 100;
}

if(keyboard_check_pressed(ord("D")))
{
	ds_list_clear(player_cards);
	
	for(i = 0; i < 2; i++)
	{
		add_cards_limb()
	}

	add_cards_attack()

	for(i = 0; i < 2; i++)
	{
		add_cards_utility();
	}


}




