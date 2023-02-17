// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.changing = false;
global.currentRoom = room;

function transition_type(Type)
{
	
	if(layer_exists("transition"))
	{
		layer_destroy("transition")
	}
	
	t_layer = layer_create(-999, "transition")
	layer_sequence_create(t_layer, 0 , 0, Type);
}


function start_transition(_goto, into, outof)
{
	if(instance_exists(obj_GameManager))
	{
		if(obj_GameManager.inbattle)
			obj_GameManager.inbattle = false;
	}
	
	if(!global.changing)
	{
		global.changing = true;
		global.currentRoom = _goto;
		
		
		transition_type(into);
		
		
		layer_set_target_room(_goto);
		
		transition_type(outof);
		
		layer_reset_target_room();
		
		return true
	}
	else
		return false;

}

function room_changed()
{
	
	//layer_sequence_destroy(self.elementID);
	if(instance_exists(obj_GameManager))
		obj_GameManager.changing_rooms = true;
	room_goto(global.currentRoom);
	
}



function change_completed()
{
	layer_sequence_destroy(self.elementID);
	global.changing = false;
	
}


function set_camera_pos(focus_x, focus_y)
{
				view_width = camera_get_view_width(view_camera[0]) / 2
				view_height = camera_get_view_height(view_camera[0]) / 2
				instance_create_layer(focus_x, focus_y, "Instances", obj_BasePlayer);
				clamp_camera_x = clamp(focus_x - view_width, obj_GameManager.view_x_min, obj_GameManager.view_x_max);
				clamp_camera_y = clamp(focus_y - view_height,obj_GameManager.view_y_min,obj_GameManager.view_y_max);
				camera_set_view_pos(view_camera[0],clamp_camera_x ,clamp_camera_y );
}

function display_lose()
{
	
	camera_set_view_size(view_camera[0], 1920, 1080)
	draw_set_color(c_black)
	draw_rectangle(0,0, room_width, room_height, 0)
	
	draw_sprite(spr_lose_state,0,  (camera_get_view_x(view_camera[0]) / 2) - 200,  (camera_get_view_y(view_camera[0]) / 2) - 400)
	
}

function display_win()
{
	
	camera_set_view_size(view_camera[0], 1920, 1080)
	draw_set_color(c_black)
	draw_rectangle(0,0, room_width, room_height, 0)
	
	draw_sprite(spr_win_state, 0, (camera_get_view_x(view_camera[0]) / 2) + 400,  camera_get_view_y(view_camera[0]) / 2)
}