var gamepad = async_load[? "pad_index"]
var controller_event_type = async_load[? "event_type"]

switch(controller_event_type)
{
    case"gamepad discovered":
        show_debug_message("New controller added, pad_index: " + string(gamepad))
        array_push(global.gamepads, gamepad)
        gamepad_set_axis_deadzone(gamepad, 0.2)
    break
    case "gamepad lost":
        show_debug_message("Controller disconected")
        var arrayIndex = array_get_index(global.gamepads, gamepad)
        if (arrayIndex >= 0){
            array_delete(global.gamepads, arrayIndex, 1)
        }
    break

}


if (array_length(global.gamepads) > 0) {
    global.gamepadMain = global.gamepads[0];
} else {
    global.gamepadMain = undefined;
}


global.newController = true