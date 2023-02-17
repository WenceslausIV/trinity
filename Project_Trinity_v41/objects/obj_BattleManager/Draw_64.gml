/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_BattlePlayer)|| !instance_exists(obj_BattleEnemy))
	exit;
	
//draw_text(50, 50, "Player HP: " + string(obj_BattlePlayer.hp));
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_top);
draw_set_color(c_black);

draw_text(250, 715, "head: " );
draw_text(250, 758, "torso: " );
draw_text(250, 805, "left arm: " );
draw_text(250, 848, "right arm: ");
draw_text(250, 895, "left leg: " );
draw_text(250, 940, "right leg: " );


draw_text(350, 715, string(obj_BattlePlayer.head_hp) + " : 140");
draw_text(350, 758, string(obj_BattlePlayer.torso_hp) + " : 300" );
draw_text(350, 805, string(obj_BattlePlayer.l_arm_hp) + " : 200");
draw_text(350, 848, string(obj_BattlePlayer.r_arm_hp) + " : 200");
draw_text(350, 895, string(obj_BattlePlayer.l_leg_hp) + " : 200" );
draw_text(350, 940, string(obj_BattlePlayer.r_leg_hp) + " : 200" );



for(i = 0; i < ds_list_size(obj_BattleController.selected_cards); i++)
{
	draw_text(50, 100 * (i + 1), ds_list_find_value(obj_BattleController.selected_cards, i ).card_name);
}




draw_text(surface_get_width(application_surface) - 370, 715, " :head");
draw_text(surface_get_width(application_surface) - 370, 758, " :torso");
draw_text(surface_get_width(application_surface) - 370, 805, " :left arm" );
draw_text(surface_get_width(application_surface) - 370, 848, " :right arm" );
draw_text(surface_get_width(application_surface) - 370, 895, " :left leg" );
draw_text(surface_get_width(application_surface) - 370, 940, " :right leg" );

draw_text(surface_get_width(application_surface) - 470, 715, string(obj_BattleEnemy.head_hp) + " : 140");
draw_text(surface_get_width(application_surface) - 470, 758, string(obj_BattleEnemy.torso_hp) + " : 300");
draw_text(surface_get_width(application_surface) - 470, 805, string(obj_BattleEnemy.l_arm_hp) + " : 200" );
draw_text(surface_get_width(application_surface) - 470, 848, string(obj_BattleEnemy.r_arm_hp) + " : 200");
draw_text(surface_get_width(application_surface) - 470, 895, string(obj_BattleEnemy.l_leg_hp) + " : 200" );
draw_text(surface_get_width(application_surface) - 470, 940, string(obj_BattleEnemy.r_leg_hp) + " : 200");

//draw_text(50, 70, "Player Stamina: " + string(obj_BattlePlayer.stamina));

if(obj_BattlePlayer.defense > 0)
{
	shields = obj_BattlePlayer.defense_hp_max * (obj_BattlePlayer.defense_hp/obj_BattlePlayer.defense_hp_max);
	for(i = 0; i < obj_BattlePlayer.defense_max; i++)
	{
		alpha_text = clamp((shields / 10) - i, 0.0, 1.0);
		draw_set_alpha(alpha_text );
		draw_sprite(spr_shield, 1,  780 +  (25 * (i + 1)), 690); 
		draw_set_alpha(1);
	}
}

if(obj_BattlePlayer.stamina > 0)
{
	bolt = obj_BattlePlayer.stamina_max * (obj_BattlePlayer.stamina/obj_BattlePlayer.stamina_max);
	for(i = 0; i < obj_BattlePlayer.stamina_bar_max; i++)
	{
		alpha_text = clamp((bolt / 10) - i, 0.0, 1.0);
		draw_set_alpha(alpha_text );
		draw_sprite(spr_lightningBolt, 1, 780 +  (25 * (i + 1)), 660); 
		draw_set_alpha(1);
	}
}





