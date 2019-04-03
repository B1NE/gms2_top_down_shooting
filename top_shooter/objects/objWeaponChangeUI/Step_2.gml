
var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

for(var i = 0;i < array_length_1d(button_obj_array);++i)
{
	with(button_obj_array[i])
	{
		x = other.button_position_x_array[i] + view_x;
		y = other.button_position_y + view_y;
	}	
}