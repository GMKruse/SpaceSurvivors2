/// @description shoot

if (cooldown > 0) cooldown--;

var player_on_area = false;
if (instance_exists(shoot_area)) {
    with (shoot_area) {
        if (place_meeting(x, y, obj_playerParent)) {
            player_on_area = true;
        }
    }
}

if (player_on_area && cooldown <= 0 && energy>=20) {
    instance_create_depth(x+40,y,depth,obj_shot)
    cooldown = room_speed;
	energy-=20
}
