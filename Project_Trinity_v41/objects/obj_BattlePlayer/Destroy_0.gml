/// @description Insert description here
// You can write your code in this editor


if(dead)
	instance_create_layer(x,y,"Instances", obj_deathPlayer);

if(escape)
	instance_create_layer(x,y,"Instances", obj_PlayerEscape);
	

instance_destroy(obj_status_bar_head)
instance_destroy(obj_status_bar_torso)
instance_destroy(obj_status_bar_left_arm)
instance_destroy(obj_status_bar_right_arm)
instance_destroy(obj_status_bar_right_leg)
instance_destroy(obj_status_bar_left_leg)