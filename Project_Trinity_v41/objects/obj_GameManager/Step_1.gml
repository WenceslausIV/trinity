
/// @description Insert description here
// You can write your code in this editor


if(battle_concluded)
{
	show_debug_message("going to " + room_get_name(prev_room))
	start_transition(prev_room, room_transition_close, room_transition_open)
}

