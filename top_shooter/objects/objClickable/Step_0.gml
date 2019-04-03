
if(use_dimmed)
{
	image_xscale = display_get_width() / 16;
	image_yscale = display_get_height() / 16;
}
else
{
	image_xscale = ui_touch_width / 16;
	image_yscale = ui_touch_height / 16;
}
