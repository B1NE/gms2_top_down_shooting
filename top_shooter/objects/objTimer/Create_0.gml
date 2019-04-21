zui_set_size(259, 94);
zui_set_anchor(0.5, 0.5);

with (zui_create(zui_get_width() * 0.5, __height * 0.5, objTimerLabel)) 
{
	other.position_label = id;
}

game_time = 0;