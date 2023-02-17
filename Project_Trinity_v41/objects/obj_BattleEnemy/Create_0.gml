/// @description Insert description here
// You can write your code in this editor


event_inherited()

attacking = false;
returning = false;

start_pos = Enemy_Start_Point.x;
start_y_pos = Enemy_Start_Point.y;

go_attack = false;
attack_check = false;

alarm[0] = 5 * room_speed;

paralyzed = false;
stuck_here = false;

hp = irandom_range(100, 200);
attack_strength = irandom_range(2,4);

bleed_tick_amount = 0;
bleeding = false;
bleed_tick = false;
bleeding_limb = HEAD;

outside_bounds = false;