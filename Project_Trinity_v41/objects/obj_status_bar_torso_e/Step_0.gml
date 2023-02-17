/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_BattleEnemy))
	instance_destroy()



status_hp = obj_BattleEnemy.torso_hp;


bars = round(status_hp) / 30;

if(bars < 0)
	bars = 0;
	
if(bars > status_hp_max / 30)
	bars = 10;
	
	
