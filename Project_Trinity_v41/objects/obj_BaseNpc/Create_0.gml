/// @description Insert description here
// You can write your code in this editor

enum npc_state
{
	afraid,
	safe,
	speech,
	moving,
	patrolling,
	chasing,
	idle
	
	
}


draw_self()
drawSomething = false;

inRange = false;

state = npc_state.idle;