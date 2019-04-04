// touch state 정의.
enum touch_state
{
	none,
	move,
	rotation,
	press,
	fire,
	release,
	out,
}

// n개의 터치까지만 받는다.
finger_count = 4;
finger_state = array_create(finger_count, touch_state.none);

// move var
is_moving = false;
move_start_point = [0, 0];
move_current_point = [0, 0];
move_horizontal_value = 0;
move_vertical_value = 0;

// rotation var
is_rotationing = false;
rotation_start_point = [0, 0];
rotation_current_point = [0, 0];
rotation_value = 0;

// landscape 때 gui 값이 회전을 안해서.. 따로 계산해서 set 해줌.
aspect = display_get_width() / display_get_height();
height = camera_get_view_height(view_camera[0]);
width = camera_get_view_width(view_camera[0]);

if(aspect > 1)
{
	display_set_gui_size(height * aspect, height);
}
else
{
	display_set_gui_size(width, width / aspect);
}