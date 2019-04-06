var horizontal = 0;
var vertical = 0;
if(os_type == os_windows)
{
	horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));	
}
else
{
	horizontal = InputManager.move_horizontal_value;
	vertical = InputManager.move_vertical_value;
}

var move_direction = point_direction(0, 0, horizontal, vertical);

if (horizontal != 0 || vertical != 0) {
	move_entity_direction(entity_data[? e_cur_data.move_speed], move_direction);
	image_speed = global.game_speed;
}
else
{
	image_index = 0;
	image_speed = 0;
}

if(global.game_speed > 0)
{
	if(os_type == os_windows)
	{
		spr_angle = point_direction(x, y, mouse_x, mouse_y);
	}
	else
	{
		spr_angle = InputManager.rotation_value;
	}
}

if(os_type == os_windows)
{
	if (keyboard_check_pressed(ord("1")))
	{
		weapon_change(1);
	}
	else if(keyboard_check_pressed(ord("2")))
	{
		weapon_change(2);
	}
	else if(keyboard_check_pressed(ord("3")))
	{
		weapon_change(3);
	}
}

#region Camera
var view_width = camera_get_view_width(view_camera[0]);
var view_height = camera_get_view_height(view_camera[0]);

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

var target_x = x - view_width * 0.5;
var target_y = y - view_height * 0.5;

target_x = clamp(target_x, 0, room_width - view_width);
target_y = clamp(target_y, 0, room_height - view_height);

camera_set_view_pos(view_camera[0], lerp(view_x, target_x, 0.05), lerp(view_y, target_y, 0.05));
#endregion