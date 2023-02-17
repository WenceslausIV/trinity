/// @description Insert description here
// You can write your code in this editor
if(global.changing)
	exit;

	if(place_meeting(x + Move_Speed,y, obj_block))
	{
	
	}

view_width = camera_get_view_width(view_camera[0]) / 2
view_height = camera_get_view_height(view_camera[0]) / 2

clamp_camera_x = clamp(x - view_width, view_x_min, view_x_max);
clamp_camera_y = clamp(y - view_height, view_y_min, view_y_max);
camera_set_view_pos(view_camera[0],clamp_camera_x,clamp_camera_y);

if(keyboard_check(ord("W")))
{
	if(!place_meeting(x,y - Move_Speed, obj_block))
		y -= Move_Speed;	
}

if(keyboard_check(ord("S")))
{
	if(!place_meeting(x ,y + Move_Speed, obj_block))
		y += Move_Speed;
}

if(keyboard_check(ord("A")))
{
	if(!place_meeting(x - Move_Speed,y, obj_block))
		x -= Move_Speed;
}

if(keyboard_check(ord("D")))
{
	if(!place_meeting(x + Move_Speed,y, obj_block))
		x += Move_Speed;
}

