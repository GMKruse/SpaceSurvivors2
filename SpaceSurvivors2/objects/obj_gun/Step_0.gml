/// @description shoot



var player_on_area = false;
if (instance_exists(shoot_area)) {
    with (shoot_area) {
        if (place_meeting(x, y, obj_playerParent)) {
            player_on_area = true;
        }
    }
}

if (cooldown > 0 && player_on_area) 
{
	cooldown--
}
else
{
	cooldown=maxCooldown	
}


if (player_on_area && cooldown <= 0 && energy>=10) {
    var inst_ = instance_create_depth(x+40,y,depth,obj_shot)
	with(inst_){direction = other.image_angle image_angle=other.image_angle}
	audio_play_sound(s_spacegun,1,false)
    cooldown = maxCooldown
	energy-=10
}
