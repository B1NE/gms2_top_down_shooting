if (zui_get_hover()) 
{
	pressed = 1;
	with(zui_get_parent())
	{
		pressed = 1;
		is_dragging = false;
		touch_origin_x = device_mouse_x_to_gui(0);
		touch_origin_y = device_mouse_y_to_gui(0);
 
		offsetx = zui_get_x() - device_mouse_x_to_gui(0);
		offsety = zui_get_y() - device_mouse_y_to_gui(0);
	}
}

