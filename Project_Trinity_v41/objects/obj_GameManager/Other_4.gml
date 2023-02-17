/// @description Insert description here
// You can write your code in this editor


randomize();

if(global.gameover)
{
	instance_deactivate_all(true);
	//display_lose();

}

if(room == BattleRoom)
{
	enemyType = obj_BattleEnemy;
		
}
if(inbattle)
{
		if(player_protector)
		{
			if(instance_exists(obj_civilian_battle))
			{
			obj_civilian_battle.sprite_index = npc_protected;
			//object_set_sprite(obj_civilian_battle, object_get_sprite(npc_protected));
			}
		}
		else
		{
			if(instance_exists(obj_civilian_battle))
				instance_deactivate_object(obj_civilian_battle);
		}	
	exit;
}

if(changing_rooms)
{
	//if(instance_exists(obj_BattlePlayer))
	//	instance_destroy(obj_BattlePlayer)
		
	mp_grid_clear_all(global.grid);
	
	mp_grid_add_instances(global.grid, obj_block, true);
	
	if(room == playground)
	{
		changing_rooms = false;
		exit;
	}
	
	if(room != hub_room)
	{
		instance_exists(hub_spawn)
		{
		
			if(battle_concluded)
			{
				if(playerWon)
				{
					//instance_create_layer(save_battle_x, save_battle_y, "Instances", obj_BasePlayer);
					set_camera_pos(save_battle_x, save_battle_y);
					ds_list_add(saved_enemies, save_enemy);
					if(player_protector)
					{
						for( i = 0; i < instance_number(obj_Civilian); i++)
						{
							civilian[i] = instance_find(obj_Civilian, i);
							if(civilian[i] == npc_saving)
							{
								civilian[i].x = obj_BasePlayer.x - 75;
								civilian[i].y = obj_BasePlayer.y;
								civilian[i].follow_player = true;
							}
								
						}
					}
				}
				else
				{
					//instance_create_layer(save_position_x, save_position_y, "Instances", obj_BasePlayer);
					player_protector = false;
					set_camera_pos(save_position_x, save_position_y);
				}
			
			}
			else
			{
				//instance_create_layer(hub_spawn.x, hub_spawn.y, "Instances", obj_BasePlayer);
				set_camera_pos(hub_spawn.x, hub_spawn.y);
				save_position_x = hub_spawn.x;
				save_position_y = hub_spawn.y;
				changing_rooms = false;
			}
		}
	}
	else
	{
		//if(instance_exists(obj_BasePlayer))
		//		instance_destroy(obj_BasePlayer);
				
			if(battle_concluded)
			{
				if(playerWon)
				{
					//instance_create_layer(save_battle_x, save_battle_y, "Instances", obj_BasePlayer);
					set_camera_pos(save_battle_x, save_battle_y);			
				}
				else
					//instance_create_layer(save_position_x, save_position_y, "Instances", obj_BasePlayer);
					set_camera_pos(save_position_x, save_position_y);	
				
			}
			else
			{	
	
				set_camera_pos(save_gate.x, save_gate.y);
	
			}
						
		changing_rooms = false;
	}
}

if(battle_concluded)
	battle_concluded = false;

if(room == hub_room)
{
	for(i = 0; i < ds_list_size(saved_npc); i++)
	{
		instance_deactivate_object(ds_list_find_value(saved_npc, i));
	}
	
	
	if(player_score >= 2)
		instance_activate_object(obj_Civilian_1);
		
	if(player_score >= 4)
		instance_activate_object(obj_Civilian_2);
		
	if(player_score >= 6)
		instance_activate_object(obj_Civilian_3);
		
	if(player_score >= 8)
		instance_activate_object(obj_Civilian_4);
		
	if(player_score >= 10)
		instance_activate_object(obj_Civilian_5);
	
	if(player_score >= 12)
		instance_activate_object(obj_Civilian_6);
	
	if(player_score >= 14)
		instance_activate_object(obj_Civilian_7);
	
	if(player_score >= 16)
	{
		instance_activate_object(obj_Civilian_8);
		global.gamewon = true;
	}
	
}

for(i = 0; i < ds_list_size(saved_enemies); i++)
	instance_destroy(ds_list_find_value(saved_enemies, i));
	
for(i = 0; i < ds_list_size(saved_outside_npc); i++)
	instance_destroy(ds_list_find_value(saved_outside_npc, i));

	