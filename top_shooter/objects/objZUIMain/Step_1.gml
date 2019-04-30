
zui_update_begin();
global.__is_hover = false;

for(var i = 0;i < InputManager.finger_count;++i)
{
	if(!device_mouse_check(i)) continue;
	
	var state = -1;
	if(i > 0)
	{
		var pressed = device_mouse_check_button_pressed(i, mb_left);
		if(pressed)
		{
			state = 0;
		}
		else
		{
			var released = device_mouse_check_button_released(i, mb_left);
			if(released)
			{
				state = 1;
			}
		}
	}
	
	global.__zui_mx = device_mouse_x_to_gui(i);
	global.__zui_my = device_mouse_y_to_gui(i);
	global.__is_hover = zui_update(i, state) && !zui_get_hover();
}