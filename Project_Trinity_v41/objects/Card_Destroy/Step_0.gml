/// @description Insert description here
// You can write your code in this editor



//if(obj_BattleController.cursor_pos == placement)
//{
//	hovered = true;
//}
//else
//	hovered = false;

//card_ref = obj_BattleController.player_cards;
//_type = ds_list_find_value(card_ref, placement).card_type;
//sprite = ds_list_find_value(card_ref, placement).card_sprite;



if(select)
{
	x = lerp(x,final_x, 0.3);
	y = lerp(y,final_y, 0.3);
	made_it = true;
}

x = lerp(x, final_x, 0.02);


if(alpha_val <= 1)
{
	alpha_val -= 1 / room_speed;
}
