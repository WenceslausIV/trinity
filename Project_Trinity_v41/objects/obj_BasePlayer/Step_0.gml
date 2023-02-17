/// @description Insert description here
// You can write your code in this editor

if(global.gameover)
{
	exit;
}
if(global.changing)
{
	god_mode = true;
	alarm[0] = 2 * room_speed;
	exit;
}
	



sprite_index = sKnightIdle;

if(keyboard_check(ord("W")))
{
	if(sprite_index != sKnightWalk)
		sprite_index = sKnightWalk;
	
	
	if(!place_meeting(x,y - Move_Speed, obj_block))
		y -= Move_Speed;
		
}

if(keyboard_check(ord("S")))
{
	if(sprite_index != sKnightWalk)
		sprite_index = sKnightWalk;
	if(!place_meeting(x ,y + Move_Speed, obj_block))
		y += Move_Speed;
}

if(keyboard_check(ord("A")))
{
	if(sprite_index != sKnightWalk)
		sprite_index = sKnightWalk;
	
	image_xscale = -1;
	if(!place_meeting(x - Move_Speed,y, obj_block))
		x -= Move_Speed;
		
}

if(keyboard_check(ord("D")))
{
	if(sprite_index != sKnightWalk)
		sprite_index = sKnightWalk;
		
	image_xscale = 1;
	if(!place_meeting(x + Move_Speed,y, obj_block))
		x += Move_Speed;
}

