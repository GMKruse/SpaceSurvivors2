/// @description Insert description here
// You can write your code in this editor
// Tick down cooldown
if (cooldown > 0) cooldown--;

// Check collision with the player parent
if (place_meeting(x, y, obj_playerParent)) {
    if (cooldown <= 0) {
        // Recharge ALL guns
        with (obj_gun) {
            energy = clamp(energy + 5, 0, maxEnergy);
        }

        // Reset cooldown
        cooldown = round(room_speed * .1);
		
		var inst_ = instance_create_depth(x,y,-10000,obj_particle)
		with(inst_){image_blend=#B2FFD7 image_alpha=.8}
    }
}
