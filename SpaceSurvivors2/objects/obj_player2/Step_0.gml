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
	//IF TOUCHING SHOOT PAD, MOVE GUN UP
	var inst_ = instance_place(x,y,obj_shootArea)
	if(instance_exists(inst_)){with(inst_){parent.image_angle+=1 if(parent.image_angle>90){parent.image_angle=90}}}
	
	//ELSE: MOVE PLAYER
    else
	{
		vspeed = clamp(vspeed - accel, -moveSpeed, moveSpeed);
	}
}
if (keyboard_check(vk_down)) {
	//IF TOUCHING SHOOT PAD, MOVE GUN DOWN
	var inst_ = instance_place(x,y,obj_shootArea)
	if(instance_exists(inst_)){with(inst_){parent.image_angle-=1 if(parent.image_angle<-90){parent.image_angle=-90}}}
	
	//ELSE: MOVE PLAYER
    else
	{
		vspeed = clamp(vspeed + accel, -moveSpeed, moveSpeed);
	}
}

 
if(speed>moveSpeed){speed=moveSpeed}