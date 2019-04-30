/// @description device_mouse_check(device)
/// @function device_mouse_check
/// @param device

return (device_mouse_check_button(argument0, mb_left) 
	 || device_mouse_check_button_pressed(argument0, mb_left) 
	 || device_mouse_check_button_released(argument0, mb_left));