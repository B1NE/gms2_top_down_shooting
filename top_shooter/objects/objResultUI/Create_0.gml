zui_set_size(200, 100);

with (zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5 + 20, objResultTimeLabel)) 
{
	other.position_label = id;
	caption = string(objTimer.game_time);
}

with(zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5 - 20, objResultRegameButton))
{
	zui_set_size(180, 50);
	caption = "restart";
}