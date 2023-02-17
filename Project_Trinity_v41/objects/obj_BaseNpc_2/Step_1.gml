/// @description Insert description here
// You can write your code in this editor


drawSomething = false;

inRange = false;

if(speed  == 0)
	state = npc_state.idle;

if(speed > 0)
	state = npc_state.moving;


if(state == npc_state.moving)
{
	if(image_index > 1)
		image_index = 0;
	image_index++;
}

if(state == npc_state.idle)
	image_index = 0;