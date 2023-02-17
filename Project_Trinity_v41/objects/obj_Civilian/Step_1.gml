/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(global.gameover)
{

	exit;
}
if(room == hub_room)
{
	state = npc_state.safe;
}
else
	state = npc_state.afraid;


if(follow_player)
{
	drawSomething = false;
}

