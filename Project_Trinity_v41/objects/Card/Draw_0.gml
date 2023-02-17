/// @description Insert description here
// You can write your code in this editor


if(hand_placement.hovered && !select)
{
	depth = -5
	draw_sprite_ext(sprite, 1, x,y - 20, 1, 1, hand_placement.spr_rot, c_white, 1);

}
else
{
	if(select)
	{
		depth = hand_placement.depth_pos;
		draw_sprite_ext(sprite, 1, x,y, 1, 1, 0, c_white, 1)	
	}
	else
	{
		depth = hand_placement.depth_pos;
		draw_sprite_ext(sprite, 1, x,y, 1, 1, hand_placement.spr_rot, c_white, 1)
	}
}


