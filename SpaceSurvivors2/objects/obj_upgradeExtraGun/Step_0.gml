/// @description Insert description here
// You can write your code in this editor


// Check collision with the player parent
if (place_meeting(x, y, obj_playerParent)) {
	touching = 1
	
	// Tick down cooldown
	if (global.gold>= price) {tick++};

    if (tick >= room_speed*3) {
		
		global.gold-=price
		
		instance_create_depth(707,385,-1000,obj_gun)

		audio_play_sound(s_harp,1,false)
		
		for(var i=0; i<25; i++)
		{
			var inst_ = instance_create_depth(x,y,-10000,obj_particle)
			with(inst_){image_blend=#FFF9B2 image_alpha=.8 speed*=2}
		}
		
		instance_destroy()
    }
}
else
{
	tick=0
	touching=0	
}
