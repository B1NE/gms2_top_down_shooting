if(global.__is_hover) return;

for(var i = 0;i < finger_count;++i)
{	
	var pressed = device_mouse_check_button_pressed(i, mb_left);
	var released = device_mouse_check_button_released(i, mb_left);
	var fired = device_mouse_check_button(i, mb_left);
	
	if(pressed) // begin.
	{
		var x_value = device_mouse_x_to_gui(i);
		var y_value = device_mouse_y_to_gui(i);
		var x_half = display_get_gui_width() * 0.5;
		
		if(x_value < x_half && !is_moving)
		{
			finger_state[i] = touch_state.move;
			is_moving = true;
			
			move_start_point = [x_value, y_value];
		}
		else if(!is_rotationing)
		{
			finger_state[i] = touch_state.rotation;
			is_rotationing = true;
			
			rotation_start_point = [x_value, y_value];
		}
	}
	else if(released)
	{
		if(finger_state[i] == touch_state.move)
		{
			is_moving = false;
			move_start_point = [0, 0];
			finger_state[i] = touch_state.none;
			move_horizontal_value = 0;
			move_vertical_value = 0;
		}
		else if(finger_state[i] == touch_state.rotation)
		{
			is_rotationing = false;
			rotation_start_point = [0, 0];
			finger_state[i] = touch_state.none;
		}
	}
	
	if(fired && finger_state[i] == touch_state.move)
	{
		var x_value = device_mouse_x_to_gui(i);
		var y_value = device_mouse_y_to_gui(i);
		
		if(point_distance(x_value, y_value, move_start_point[0], move_start_point[1]) > 50)
		{
			var move_direction = point_direction(move_start_point[0], move_start_point[1], x_value, y_value);
			var add_x = lengthdir_x(50, move_direction);
			var add_y = lengthdir_y(50, move_direction);
			
			x_value = move_start_point[0] + add_x;
			y_value = move_start_point[1] + add_y;
		}

		move_current_point = [x_value, y_value];
		
		move_horizontal_value = move_current_point[0] - move_start_point[0];
		move_vertical_value = move_current_point[1] - move_start_point[1];
	}
	
	if(fired && finger_state[i] == touch_state.rotation)
	{
		var x_value = device_mouse_x_to_gui(i);
		var y_value = device_mouse_y_to_gui(i);
		
		if(point_distance(x_value, y_value, rotation_start_point[0], rotation_start_point[1]) > 50)
		{
			var move_direction = point_direction(rotation_start_point[0], rotation_start_point[1], x_value, y_value);
			var add_x = lengthdir_x(50, move_direction);
			var add_y = lengthdir_y(50, move_direction);
			
			x_value = rotation_start_point[0] + add_x;
			y_value = rotation_start_point[1] + add_y;
		}
		
		rotation_current_point = [x_value, y_value];
		
		rotation_value = point_direction(rotation_start_point[0], rotation_start_point[1],
										x_value, y_value);
	}
}