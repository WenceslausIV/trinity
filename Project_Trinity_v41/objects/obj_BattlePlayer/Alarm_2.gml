/// @description Insert description here
// You can write your code in this editor


stamina_speed = 1.5;

text_needed = instance_create_layer(x, y / 2, "Instances", obj_DynamicText);
text_needed.text_to_write = string("-Speed");
text_needed.text_color = c_red;
text_needed.activate_text = true;