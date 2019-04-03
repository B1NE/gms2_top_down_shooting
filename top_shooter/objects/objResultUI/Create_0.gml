event_inherited();

cur_color = c_white;
use_dimmed = true;

ui_touch_height = 200;
ui_touch_width = 200;

view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
draw_pos_x = display_get_gui_width() * 0.5 + view_x;
draw_pos_y = display_get_gui_height() * 0.5 + view_y;
x = draw_pos_x;
y = draw_pos_y;

global.game_speed = 0;

with(instance_create_layer(x, y + 50, "UI", objRetryButton))
{
	ui_touch_height = 80;
	ui_touch_width = 180;
}