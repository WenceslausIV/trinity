/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(keyboard_check_pressed(ord("E")))
{
		if(inRange)
		{

			if(obj_GameManager.player_score == 0)
			{
				text_needed = instance_create_layer(x - 50, y - 50, "Instances", obj_DynamicText)
				text_needed.text_color = c_black
				text_needed.text_to_write = "We are under attack, save our people!"
				text_needed.activate_text = true;
			}
			else if(obj_GameManager.player_score >= 2 && obj_GameManager.player_score < 8)
			{
				text_needed = instance_create_layer(x - 50, y - 50, "Instances", obj_DynamicText)
				text_needed.text_color = c_black
				text_needed.text_to_write = "It's a good start, but there are lots more!"
				text_needed.activate_text = true;
			}
			else if(obj_GameManager.player_score >= 8 && obj_GameManager.player_score < 12)
			{
				text_needed = instance_create_layer(x - 50, y - 50, "Instances", obj_DynamicText)
				text_needed.text_color = c_black
				text_needed.text_to_write = "Half way there, keep going!"
				text_needed.activate_text = true;
			}
			else if(obj_GameManager.player_score >= 12 && obj_GameManager.player_score < 16)
			{
				text_needed = instance_create_layer(x - 50, y - 50, "Instances", obj_DynamicText)
				text_needed.text_color = c_black
				text_needed.text_to_write = "So close! Almost everyone is saved!"
				text_needed.activate_text = true;
			}
			else if(obj_GameManager.player_score >= 16)
			{
				text_needed = instance_create_layer(x - 50, y - 50, "Instances", obj_DynamicText)
				text_needed.text_color = c_black
				text_needed.text_to_write = "That's every one!"
				text_needed.activate_text = true;
			}
		}
}