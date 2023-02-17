/// @description Insert description here
// You can write your code in this editor
global.gameover = false;
global.gamewon = false;

start_battle = false;
battle_concluded = false;
playerWon = false;
save_enemy = obj_BaseEnemy;
enemyType = obj_BattleEnemy;

prev_room = hub_room;
save_gate = east_spawn;
changing_rooms = false;
global.changing = false;
global.currentRoom = hub_room;

player_protector = false;
npc_saving = obj_Civilian;
npc_saving_battle = obj_Civilian;
npc_protected = sprite_index;
player_score = 0;
player_lives = 3

inbattle = false;
save_position_x = 0
save_position_y = 0
save_battle_x = 0;
save_battle_y = 0;

saved_enemies = ds_list_create();
saved_npc = ds_list_create();
saved_outside_npc = ds_list_create();
saved_enemy_positions = ds_list_create();

ds_list_add(saved_npc, obj_Civilian);
global.grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
mp_grid_add_instances(global.grid, obj_block, false);

global.all_attack_cards = ds_list_create();
global.all_utility_cards = ds_list_create();
global.all_heal_cards = ds_list_create();
global.all_defense_cards = ds_list_create();
global.all_target_cards = ds_list_create();

create_cards();

west_saved = 0;
south_saved = 0;
east_saved = 0;
north_saved = 0;


view_x_min = 0
view_y_min = 0

view_x_max = room_width - camera_get_view_width(view_camera[0])
view_y_max = room_height - camera_get_view_height(view_camera[0])


view_width = camera_get_view_width(view_camera[0]) / 2
view_height = camera_get_view_height(view_camera[0]) / 2


instance_create_layer(player_start.x , player_start.y, "Instances", obj_BasePlayer)

save_position_x = obj_BasePlayer.x
save_position_y = obj_BasePlayer.y


draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_top);
draw_set_color(c_black);

