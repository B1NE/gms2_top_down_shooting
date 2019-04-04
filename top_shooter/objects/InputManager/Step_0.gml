if(global.__is_hover) return;

for(var i = 0;i < finger_count;++i)
{	
	var pressed = device_mouse_check_button_pressed(i, mb_left);
	var released = device_mouse_check_button_released(i, mb_left);
	var fired = device_mouse_check_button(i, mb_left);
	
	// objClickable check.
	/*
	if(pressed || released || fired) && (finger_state[i] == touch_state.none)
	{
		var posX = device_mouse_x(i);
		var posY = device_mouse_y(i);
		var ui_list = ds_list_create();
		var ui_count = instance_position_list(posX, posY, objClickable, ui_list, true);
		var top_instance = noone;
		
		if(ui_count > 0)
		{
			
			for(var uiIndex = 0; uiIndex < ui_count; ++uiIndex)
			{
				if(!ui_list[| uiIndex].visible) continue;
				
				if(top_instance == noone)
				{
					top_instance = ui_list[| uiIndex];
					continue;
				}
				
				if(top_instance.depth > ui_list[| uiIndex].depth)
				{
					top_instance = ui_list[| uiIndex];
				}
			}
		}
		
		if(pressed)
		{
			if(top_instance == noone)
			{
				finger_target[i] = noone;
			}
			else
			{
				finger_target[i] = top_instance;
				with(top_instance)
				{
					cur_touch_state = touch_state_convert(pressed, fired, released);
					event_user(0);
				}
			}
		}
		else if(fired)
		{
			if(top_instance == noone)
			{
				if(finger_target[i] != noone)
				{
					with(finger_target[i])
					{
						cur_touch_state = touch_state.out;
						event_user(0);
					}
				}
			}
			else
			{
				if(finger_target[i] == top_instance)
				{
					with(finger_target[i])
					{
						cur_touch_state = touch_state.fire;
						event_user(0);
					}
				}
				else
				{
					with(finger_target[i])
					{
						cur_touch_state = touch_state.out;
						event_user(0);
					}
				}
			}
		}
		else if(released)
		{
			if(finger_target[i] == top_instance)
			{
				with(finger_target[i])
				{
					cur_touch_state = touch_state.release;
					event_user(0);
				}
			}
			else
			{
				with(finger_target[i])
				{
					cur_touch_state = touch_state.out;
					event_user(0);
				}
			}
		}

		ds_list_destroy(ui_list);
		
		if(ui_count > 0) return;
	}
	*/

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