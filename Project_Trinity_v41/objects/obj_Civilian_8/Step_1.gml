/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

	if(ds_list_size(obj_GameManager.saved_npc) < 8 && !in_hub)
	{
		for(i = 0; i < ds_list_size(obj_GameManager.saved_npc); i++)
		{
			if(ds_list_find_value(obj_GameManager.saved_npc, i) != id)
			{
				ds_list_add(obj_GameManager.saved_npc, id);
				in_hub = true;
			}
		}
		
		
	}