/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_BattleEnemy))
	instance_destroy()



status_hp = obj_BattleEnemy.l_leg_hp;


bars = round(status_hp) / 20;

if(bars < 0)
	bars = 0;
	
if(bars > status_hp_max /20)
	bars = 10;
	
	