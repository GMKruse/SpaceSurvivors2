if(gp != -1){

    // get joystick values
    var move_ver = gamepad_axis_value(gp, gp_axislv);
    var move_hor = gamepad_axis_value(gp, gp_axislh);

    // apply speed
    var xSpeed = move_hor * moveSpeed;
    var ySpeed = move_ver * moveSpeed;
	
	
	if (collision_circle(x + xSpeed, y, 1, obj_wall, false, true) ) {
        xSpeed = 0
    }

    if (collision_circle(x, y + ySpeed, 1, obj_wall, false, true)) {
        ySpeed = 0
    }
	

    // move the player
    x += xSpeed;
    y += ySpeed;
}


// ARROW CONTROLS:
var accel = 2; // how quickly you speed up

// Horizontal input
if (keyboard_check(vk_left)) {
    hspeed = clamp(hspeed - accel, -moveSpeed, moveSpeed);
}
if (keyboard_check(vk_right)) {
    hspeed = clamp(hspeed + accel, -moveSpeed, moveSpeed);
}

// Vertical input
if (keyboard_check(vk_up)) {
    vspeed = clamp(vspeed - accel, -moveSpeed, moveSpeed);
}
if (keyboard_check(vk_down)) {
    vspeed = clamp(vspeed + accel, -moveSpeed, moveSpeed);
}

 
if(speed>moveSpeed){speed=moveSpeed}