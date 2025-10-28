var _delta_time_seconds = delta_time / 1000000;

var _h_input = 0
var _v_input = 0

if(gp != -1){
    // get joystick values
	_h_input = gamepad_axis_value(gp, gp_axislh);
	_v_input = gamepad_axis_value(gp, gp_axislv);
	
	if (collision_circle(x + xSpeed, y, 1, obj_wall, false, true) ) {
        xSpeed = 0
    }

    if (collision_circle(x, y + ySpeed, 1, obj_wall, false, true)) {
        ySpeed = 0
    }
} else {
	// ARROW CONTROLS:
	_h_input = keyboard_check(vk_right) - keyboard_check(vk_left)
	_v_input = keyboard_check(vk_down) - keyboard_check(vk_up)
}

if (_h_input != 0) {
	xSpeed += _h_input * global.player_acceleration * _delta_time_seconds
} else {
	// If no input decelerate
	if (xSpeed > 0) {
		xSpeed = max(0, xSpeed - global.player_acceleration * _delta_time_seconds)
	} else if (xSpeed < 0) {
		xSpeed = min(0, xSpeed + global.player_acceleration * _delta_time_seconds)
	}
}

if (_v_input != 0) {
	ySpeed += _v_input * global.player_acceleration * _delta_time_seconds
} else {
	// If no input decelerate
	if (ySpeed > 0) {
		ySpeed = max(0, ySpeed - global.player_acceleration * _delta_time_seconds)
	} else if (ySpeed < 0) {
		ySpeed = min(0, ySpeed + global.player_acceleration * _delta_time_seconds)
	}
}

var _current_speed = (xSpeed*xSpeed)+(ySpeed*ySpeed)

if (_current_speed > (global.player_max_speed*global.player_max_speed)) {
	// Get actual speed
	_current_speed = sqrt(_current_speed)
	
	var _scale_factor = global.player_max_speed/_current_speed
	
	xSpeed *= _scale_factor
	ySpeed *= _scale_factor
}

x += xSpeed * _delta_time_seconds
y += ySpeed * _delta_time_seconds