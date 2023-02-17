
/// @description Insert description here
// You can write your code in this editor

obj_GameManager.player_score++;
obj_BasePlayer.saved = false;
obj_GameManager.player_protector = false;

saved = false;
ds_list_add(obj_GameManager.saved_outside_npc, id);


instance_destroy();

