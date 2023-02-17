/// @description Insert description here
// You can write your code in this editor




	
	stuck_here = false;
	paralyzed = false;
	
	state = battle_state.Idle;
	text_needed = instance_create_layer(x,y-20, "Instances", obj_DynamicText);
	text_needed.text_color = c_green;
	text_needed.text_to_write = "-Paralyzed";
	text_needed.activate_text = true;