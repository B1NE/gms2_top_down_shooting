if (zui_get_hover()) {
	var targetColor = $cccccc;
 if (pressed)
  targetColor = $cccccc;
 else
  targetColor = $eeeeee;
} else {
 targetColor = $ffffff;
}

draw_sprite_ext(sprButton, -1, x + __width * 0.5, y + __height * 0.5, __width / 64, __height / 64, 0, c_gray, 1);

if(is_reloading)
{
	draw_sprite_pie(sprButton, -1, x + __width * 0.5, y + __height * 0.5, 90, 90 + reloading_value * 360 , c_white, 1, __width / 64);
}
else
{
	draw_sprite_ext(sprButton, -1, x + __width * 0.5, y + __height * 0.5, __width / 64, __height / 64, 0, targetColor, 1);
}


if(weapon_sprite_index != 0)
{
	draw_sprite_ext(weapon_sprite_index, -1, x + __width * 0.5, y + __height * 0.5, 0.5, 0.5, 0, c_white, 1);
}
