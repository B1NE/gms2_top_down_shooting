
if(cur_touch_state == touch_state.release)
{
	game_restart();
}
else if(cur_touch_state == touch_state.press)
{
	cur_color = make_color_rgb(100, 100, 100);
}
else if(cur_touch_state == touch_state.out)
{
	cur_color = c_gray;
}