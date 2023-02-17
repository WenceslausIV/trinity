
if(previous_x > x)
	image_xscale = 1;
else
	image_xscale = -1;
	


if(object_exists(obj_BasePlayer))
{
	
	
	//path = path_add()
	//	if(mp_grid_path(global.grid, path, x,y,  path_get_x(patrol_path, 0), path_get_y(patrol_path,0), 1))
	//			path_start(path, 2,  3, false);
				
	if(distance_to_object(obj_BasePlayer) < aggro_range)
	{
		path_end()
		//direction = point_direction(x, y, obj_BasePlayer.x, obj_BasePlayer.y);
		//speed = 1;
		state = enemy_state.chasing;
	}
	else
	{
		if(state == enemy_state.chasing)
		{
			path_end()
			state = enemy_state.returning;
		}
		
			
		
	}
	
	switch(state)
		{
			case enemy_state.chasing:
			{
				if(path_index == -1)
				{
					path = path_add()
					if(mp_grid_path(global.grid, path, x,y, obj_BasePlayer.x, obj_BasePlayer.y, 1))
							path_start(path, 2,  3, true);
				}
						
				//state = enemy_state.searching;
			}
			break;
			
			case enemy_state.returning:
			{
			
				if(path_index == -1)
				{
					path = path_add()
					if(mp_grid_path(global.grid, path, x,y,path_get_x(patrol_path, 0), path_get_y(patrol_path, 0), 1))
						path_start(path, 2,  3, true);
				}
						
				if(position_meeting(path_get_x(patrol_path, 0),path_get_y(patrol_path, 0), id))
				{
					path_end()
					state = enemy_state.patrolling
				}
			}
			break;
			
			case enemy_state.patrolling:
				if(path_index == -1)
				{
					path_start(patrol_path, 2, path_action_reverse, true)
					
				}
			break;
		}	
}

previous_x = x;
