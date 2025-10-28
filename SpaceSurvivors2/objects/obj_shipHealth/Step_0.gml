/// @description Insert description here
// You can write your code in this editor
if(hitpoints<=0)
{
	instance_create_depth(x,y,depth,obj_gameLeaver)
	audio_play_sound(s_getRekt,1,false)
	instance_destroy(obj_playerParent)
	instance_destroy(obj_alien)
	instance_destroy(obj_alienSpawner)
	instance_destroy(self)
}