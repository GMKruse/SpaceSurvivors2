/// @description Insert description here
// You can write your code in this editor
global.gold+=global.goldGain
audio_play_sound(s_goldGain,1,false)

for(var i=0; i<3; i++)
{
		var inst_ = instance_create_depth(x,y,-10000,obj_particle)
		with(inst_){image_blend=#FFE9B2 image_alpha=.7 speed/=3}
}

instance_create_depth(x,y,-1000,obj_goldSpawner)
instance_destroy()