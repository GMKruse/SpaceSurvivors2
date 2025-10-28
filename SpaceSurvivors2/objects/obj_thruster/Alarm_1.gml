/// @description Insert description here
// You can write your code in this editor
alarm[1]=room_speed/10
		var inst_ = instance_create_depth(x,y,-10000,obj_particle)
		with(inst_)
		{
			image_blend=#FF947F 
			image_alpha=.8
			speed/=random_range(1,2)
			direction=random_range(-200,-160)
		}