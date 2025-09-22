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


   
 
