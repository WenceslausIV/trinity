/// @description Insert description here
// You can write your code in this editor




current_room = room;

if(current_room == mainmenu_cardlist|| current_room == mainmenu_cardlist2 || current_room == mainmenu_cardlist3
|| current_room == mainmenu_credits || current_room == mainmenu_how)
{
	current_room = mainmenu;
	same_room = true;
}




switch(current_room)
{
	case hub_room:
	if(!audio_is_playing(snd_hub_music))
	{
		audio_stop_all()
		audio_play_sound(snd_hub_music, 0 , 1)
		same_room = false;
	}
	break;
	
	case BattleRoom:
	if(!audio_is_playing(snd_battle_music))
	{
		audio_stop_all()
		audio_play_sound(snd_battle_music, 0 , 1)
		same_room = false;
	}
	break;
	
	case mainmenu:
	if(!audio_is_playing(snd_title_music))
	{
		if(!same_room)
		{
			audio_stop_all()
			audio_play_sound(snd_title_music, 0 , 1)
		}
		
	}
	break;
	
	
	default:
	if(!audio_is_playing(snd_district_music))
	{
		audio_stop_all()
		audio_play_sound(snd_district_music, 0, 1);
		same_room = false;
	}
	break;
}