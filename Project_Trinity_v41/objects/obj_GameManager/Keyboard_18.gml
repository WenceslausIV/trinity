/// @description Insert description here
// You can write your code in this editor

//if(room_get_name(room) == "BattleRoom")
//{
//	if(keyboard_check_pressed(ord("1")))
//	{
//		battle_concluded = true;
//		playerWon = true;
//		room_goto(prev_room);
//	}
//
//	if(keyboard_check_pressed(ord("2")))
//	{
//		battle_concluded = true;
//		playerWon = false;
//		room_goto(prev_room);
//
//	}
//}

if(keyboard_check(ord("T")))
{
	instance_create_layer(surface_get_width(application_surface) / 2, surface_get_height(application_surface) / 2, "Instances", obj_DynamicText);
}

if(keyboard_check(ord("P")))
{
	room_goto(playground)
	changing_rooms = true;
}



