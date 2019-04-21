
var width = camera_get_view_width(view_camera[0]);
var height = camera_get_view_height(view_camera[0]);

var view_pos_x = camera_get_view_x(view_camera[0]);
var view_pos_y = camera_get_view_y(view_camera[0]);

if(InputManager.is_moving)
{
	draw_sprite_ext(sprPadBack, -1, view_pos_x + InputManager.move_start_point[0], view_pos_y + InputManager.move_start_point[1], 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprPad, -1, view_pos_x + InputManager.move_current_point[0], view_pos_y + InputManager.move_current_point[1], 1, 1, 0, c_white, 1);
}
else
{
	draw_sprite_ext(sprPadBack, -1, view_pos_x + 150, view_pos_y + height - 200, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprPad, -1, view_pos_x + 150, view_pos_y + height -200, 1, 1, 0, c_white, 1);
}

if(InputManager.is_rotationing)
{
	draw_sprite_ext(sprPadBack, -1, view_pos_x + InputManager.rotation_start_point[0], view_pos_y + InputManager.rotation_start_point[1], 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprPad, -1, view_pos_x + InputManager.rotation_current_point[0], view_pos_y + InputManager.rotation_current_point[1], 1, 1, 0, c_white, 1);
}
else
{
	draw_sprite_ext(sprPadBack, -1, view_pos_x + width - 150, view_pos_y + height - 200, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprPad, -1, view_pos_x + width - 150, view_pos_y + height -200, 1, 1, 0, c_white, 1);
}