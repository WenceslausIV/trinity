/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_BattlePlayer))
	instance_destroy()

status_hp = obj_BattlePlayer.head_hp;


bars = round(status_hp) / 14;

if(bars < 0)
	bars = 0;
	
if(bars > status_hp_max / 14)
	bars = 10;
	
	
