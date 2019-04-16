/*
if(pressed)
{
	var touch_x = device_mouse_x_to_gui(0);
	var touch_y = device_mouse_y_to_gui(0);
	
	if(!is_dragging)
	{
		if(point_distance(touch_origin_x, touch_origin_y, touch_x, touch_y) > threshold)
		{
			is_dragging = true;
		}
	}
	else
	{
		var target_x = clamp(device_mouse_x_to_gui(0) + offsetx, origin_x - add_width * 0.5, origin_x + add_width * 0.5);
		var target_y = clamp(device_mouse_y_to_gui(0) + offsety, origin_y - add_height * 0.5, origin_y + add_height * 0.5);
		zui_set_position(target_x, target_y);
		with(close_button)
		{
			zui_set_position(origin_x + other.origin_x - target_x, origin_y + other.origin_y - target_y);
		}
	}	
}
*/