/// @description Insert description here
// You can write your code in this editor



	
	if(global.gameover)
	{
		instance_deactivate_all(true);
		display_lose();
		draw_set_color(c_white)
		draw_text(room_width/ 2, room_height / 2, "Press Enter to return to main menu");
		exit;
	}
	
	
		
if(global.changing || inbattle)
	exit;

if(global.gamewon)
	{
		//instance_deactivate_all(true);
		display_win();
		draw_set_color(c_white)
		draw_text(room_width/ 2, room_height / 2, "Press Enter to return to main menu");
	}	

draw_set_color(c_teal);
draw_rectangle(25,5,150,45,false);

for(i = 0; i < player_lives; i++)
{
	draw_sprite(spr_heart, 0, (60 + 24 * i), 30);
}

draw_set_color(c_black);

draw_text(100, 55, "Number of lives saved: " + string(player_score));